"""Module containing the classification pipeline necessary to replicate results from the article.

The ClassificationPipeline class contains all elements of the pipeline except for testing statistical 
significance of differences between evaluation metrics of two models, which is contained in a separate
test_median_f1s function.

Typical usage example:

    M1 = ClassificationPipeline(data_path=example_data, X_names=feature_names, y_name=label_name)
    M1.calc_feat_importance()
    M1.select_n_features(5)
    M1.tune_model(base_model=base_model, param_grid=base_param_grid, crossvalidator=tuning_cv, scoring_metric='f1_macro')
    M1.evaluate_model()
    M1.draw_plots(kind='kde')
    M1.draw_plots(kind='box')
    test_median_f1s(M1.f1s['Cat. 1'], M1.f1s['Cat. 1 & 2'])

"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

from sklearn import ensemble, model_selection, metrics, clone
from scipy import stats


class ClassificationPipeline:
    """Pipeline for classification of enriched immune signatures.

    The ClassificationPipeline class loads data from .csv files with optional filtering.
    It then allows for extracion of labels, category 1, 2 & 3 featrues (as described in the article) and train/test split.
    Methods for calculating feature importance, discarding unwanted features, model tuning and evaluation, as well as plot generation are included in the class.

    Attributes:
        data: A pandas DataFrame with raw data, optionally filtered.
        Xs: A dictionary of pandas DataFrames with keys describing the feature categories.
        y: A 1D ndnumpy array of labels.
        X_train, X_test: Numpy ndarrays containing the training and test set features (of all categories).
        y_train, y_test: Numpy ndarrays containing the training and test set labels.
        feature_importance: A pandas DataFrame with feature names and impurity based importance, sorted by decreasing importance. Initializes as None, overwritten by calc_feat_importance method.
        model_tuned: Fine tuned classification model. Initialized as None, overwritten by tune_model method.
        f1s: A pandas DataFrame with f1 scores resulting from evaluation of model for different feature categories.

    """

    def __init__(
        self,
        data_path: str,
        X_names: dict,
        y_name: str,
        index_name: str = None,
        test_split: float = 0.3,
        filter_col: str = None,
        filter_exclude=None,
        filter_val=None,
    ) -> None:
        """Initializes pipeline, loads and processes data.

        Args:
            data_path: path to source .csv file.
            X_names: a dictionary with keys {'cat1','cat2','cat3'} and values being names of columns from source .csv file that containing category 1, 2 and 3 features.
            y_name: the name of column from source .csv file containing labels.
            index_name: optional name of the column from source .csv file containing indexes. If None, a range index will be generated.
            test_split: the relative size of test set. Defaults to 0.3 as used in the article.
            filter_col: optional name of the column from the source csv file that will be used for filtering. If not None, either filter_exclude or filter_val, BUT NOT BOTH, should be set.
            filter_exclude: optional value from filter_col. Samples with this value will be excluded from the data. If not None, filter_val must be None.
            filter_val: optional value from filter_col. Only samples with this value will be preserved in the data. If not None, filter_exclude must be None.

        """

        self.data = pd.read_csv(data_path)
        if index_name:
            self.data = self.data.set_index(index_name)
        if filter_col:
            if filter_exclude:
                self.data = self.data[self.data[filter_col] != filter_exclude]
            else:
                self.data = self.data[self.data[filter_col] == filter_val]

        X = self.data[X_names["cat1"] + X_names["cat2"] + X_names["cat3"]]
        self.y = self.data[y_name].values.ravel()
        self.Xs = {
            "Cat. 1": self.data[X_names["cat1"]],
            "Cat. 1 & 2": self.data[X_names["cat1"] + X_names["cat2"]],
            "Cat. 1 & 3": self.data[X_names["cat1"] + X_names["cat3"]],
            "Cat. 1, 2 & 3": X,
        }
        (
            self.X_train,
            self.X_test,
            self.y_train,
            self.y_test,
        ) = model_selection.train_test_split(
            X, self.y, test_size=test_split, stratify=self.y
        )

        self.feature_importance = None
        self.model_tuned = None
        self.f1s = pd.DataFrame()

    def calc_feat_importance(self):
        """Calculates impurity based feature importance using default scikit-learn RandomForestClassifier.

        Overwrites feature_importance.

        """

        importance_forest = ensemble.RandomForestClassifier()
        importance_forest.fit(self.X_train, self.y_train)
        features = pd.DataFrame(
            {
                "feature": importance_forest.feature_names_in_,
                "relative_importance": importance_forest.feature_importances_,
            }
        ).sort_values("relative_importance", ascending=False)
        print(features)
        self.feature_importance = features

    def select_n_features(self, n: int, test_split: float = 0.3):
        """Selects n features of highest importance.

        Removes other features from Xs, X_train and X_test and performs a new train/test split.
        Requires feature_importance to not be None, run calc_feat_importance before.
        Overwrites Xs, X_train, X_test, y_train, y_test.

        Args:
            n: int number of features to be selected.
            test_split: the relative size of test set. Defaults to 0.3 as used in the article.

        """

        dropped_features = self.feature_importance["feature"][n:]
        for key in self.Xs.keys():
            self.Xs[key] = self.Xs[key].drop(dropped_features, axis=1, errors="ignore")
        X = self.Xs["Cat. 1, 2 & 3"]
        (
            self.X_train,
            self.X_test,
            self.y_train,
            self.y_test,
        ) = model_selection.train_test_split(
            X, self.y, test_size=test_split, stratify=self.y
        )

    def tune_model(self, base_model, param_grid: dict, crossvalidator, scoring_metric):
        """Performs a grid search cross-validation to fine tune a selected base model.

        For binary classification assumes the positive class label == 'intact'.
        Overwrites model_tuned.

        Args:
            base_model: an instance of any scikit-learn model class compatible with sklearn.model_selection.GridSearchCV.
            param_grid: dictionary containing parameters to be tested, must be apropriate for base_model.
            crossvalidator: int, cross-validation generator or an iterable describing cross-validation strategy. If None will default to 5-fold cross-validation.
            scoring_metric: "f1" for binary classification, or "f1_macro" for multiple classification.

        """

        grid = model_selection.GridSearchCV(
            cv=crossvalidator,
            estimator=base_model,
            param_grid=param_grid,
            scoring=scoring_metric,
            error_score=0,
            n_jobs=-1,
        )
        grid.fit(self.X_train, self.y_train)
        print(grid.best_estimator_.get_params())
        y_pred = grid.predict(self.X_test)
        if scoring_metric == "f1":
            print(
                f'F1 score for "intact" class: {metrics.f1_score(self.y_test, y_pred, pos_label="intact")}'
            )
        elif scoring_metric == "f1_macro":
            print(
                f'Macro-averaged F1 score: {metrics.f1_score(self.y_test, y_pred, average="macro")}'
            )
        self.model_tuned = grid.best_estimator_

    def evaluate_model(self, n_iter: int = 1000, test_split: float = 0.3):
        """Performs model evaluation on n_iter train/test splits separately for all category combinations from Xs.

        Requires model_tuned to not be None, run tune_model before.
        For binary classification assumes the positive class label == 'intact'.
        Overwrites f1s.

        Args:
            n_iter: number of train/test splits to be performed.
            test_split: the relative size of test set. Defaults to 0.3 as used in the article.

        """

        boot_model = clone(self.model_tuned)
        f1s = []
        for name, features in self.Xs.items():
            f1 = []
            print(f"Now calculating iterations for {name}")
            for _ in range(n_iter):
                (
                    X_boot_train,
                    X_boot_test,
                    y_boot_train,
                    y_boot_test,
                ) = model_selection.train_test_split(
                    features, self.y, stratify=self.y, test_size=test_split
                )
                boot_model.fit(X_boot_train, y_boot_train)
                y_pred = boot_model.predict(X_boot_test)
                if len(np.unique(self.y)) > 2:
                    f1.append(metrics.f1_score(y_boot_test, y_pred, average="macro"))
                else:
                    f1.append(metrics.f1_score(y_boot_test, y_pred, pos_label="intact"))
            f1s.append(f1)

        self.f1s = pd.DataFrame(f1s).T
        self.f1s.columns = self.Xs.keys()

    def draw_plots(self, kind: str, filepath=None):
        """Draws either KDE plot or box plot of distributions of F1 scores for different feature categories.

        Requires f1s to not be none, run evaluate_model before.
        Optionally saves plots as .svg files.

        Args:
            kind: either 'kde' for KDE plot or 'box' for box plot.
            filepath: optional path where the figure will be saved as .svg file.

        Raises:
            ValueError if kind is neither 'kde' nor 'box'.

        """

        valid_kind = {"kde", "box"}
        if kind not in valid_kind:
            raise ValueError(f"draw_plots: kind must be one of: {valid_kind}")

        fig, ax = plt.subplots()
        plt.grid(True)
        sns.set(font_scale=1.2)

        if kind == "kde":
            ax.set_xlabel("F1 score")
            sns.kdeplot(self.f1s, palette="Dark2")

        if kind == "box":
            ax.set_ylim(0, 1.2)
            ax.set_ylabel("F1 score")
            sns.boxplot(data=self.f1s, palette="Dark2")

        if filepath:
            plt.savefig(filepath, dpi=600, format="svg")


def test_median_f1s(column1: pd.Series, column2: pd.Series):
    """Print out medians of two model evaluation runs and test significance of difference with Wilcoxon test.

    Args:
        column1, column2: pandas Series. Expected to contain F1 scores resulting form evaluate_model method of ClassificationPipeline instances.

    """
    print(f"Median F1 scores:\n{column1.median()}\n{column2.median()}")
    column1 = column1.to_numpy()
    column2 = column2.to_numpy()
    print(stats.wilcoxon(column1, column2))
