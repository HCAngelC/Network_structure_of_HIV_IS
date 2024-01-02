import pytest

@pytest.fixture
def test_data_path():
    return 'data/test.csv'

@pytest.fixture
def test_index_name():
    return 'index'

@pytest.fixture
def test_X_names():
    return {'cat1':['feat 1'],'cat2':['feat 2'],'cat3':['feat 3']}

@pytest.fixture
def test_y_name():
    return ['label']
