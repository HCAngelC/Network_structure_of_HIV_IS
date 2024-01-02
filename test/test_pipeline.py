import src
import pandas as pd

def test_init(test_data_path, test_index_name, test_X_names, test_y_name):
    test_pipeline = src.ClassificationPipeline(
        test_data_path, test_index_name, test_X_names, test_y_name
    )

    assert test_pipeline.Xs["Cat. 1, 2 & 3"].columns.tolist() == ['feat 1','feat 2','feat 3']
    assert len(test_pipeline.X_train) == 7
    assert len(test_pipeline.X_test) == 3
    assert len(test_pipeline.y_train) == 7
    assert len(test_pipeline.y_test) == 3

def test_init_filter(test_data_path, test_index_name, test_X_names, test_y_name):
    test_pipeline = src.ClassificationPipeline(
        test_data_path, test_index_name, test_X_names, test_y_name, filter_col='patient', filter_val='a'
    )

    assert test_pipeline.Xs["Cat. 1, 2 & 3"].columns.tolist() == ['feat 1','feat 2','feat 3']
    assert len(test_pipeline.data) == 7

def test_improtance(test_data_path, test_index_name, test_X_names, test_y_name):
    test_pipeline = src.ClassificationPipeline(
        test_data_path, test_index_name, test_X_names, test_y_name
    )

    test_pipeline.calc_feat_importance()


    assert type(test_pipeline.feature_importance) == pd.DataFrame    
    assert test_pipeline.feature_importance['feature'].tolist() == ['feat 1','feat 2','feat 3']

def test_selection(test_data_path, test_index_name, test_X_names, test_y_name):
    test_pipeline = src.ClassificationPipeline(
        test_data_path, test_index_name, test_X_names, test_y_name
    )
    test_pipeline.calc_feat_importance()

    test_pipeline.select_n_features(1)

    assert test_pipeline.Xs["Cat. 1, 2 & 3"].columns.tolist() == ['feat 1']
    assert test_pipeline.X_train.columns.tolist() == ['feat 1']