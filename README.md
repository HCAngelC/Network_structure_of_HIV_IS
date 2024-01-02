"Distinguishable topological properties of functional genome networks in HIV-1 reservoirs between ART-treated individuals and elite controllers"


Instructions for the python classifiers:
 - create a virtual python enviroment using yout preferred method e.g. venv or conda.
 - install required python packages specified in requirements.txt file
 - the src/pipline.py module is meant to be used in a jupyter notebook, as in the example classifiers.ipynb

Project organization:
    data - raw data tables in .csv format
    src - classification pipeline source code
    test - pytest tests
    *.R - R files with code to calculate rich factor and network properties
    classifiers.ipynb - jupyter notebook with examples replicating the results form the article
    README.md - this readme file
    requirements.txt - required python packages
