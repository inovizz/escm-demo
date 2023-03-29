import pytest
from app import app


@pytest.fixture
def client():
    with app.test_client() as client:
        yield client


def test_index(client):
    response = client.get("/")
    assert b"Hello, World!" in response.data


def test_api(client):
    response = client.get("/api")
    assert response.status_code == 200
    assert response.is_json
    data = response.get_json()
    assert "name" in data
    assert "age" in data
    assert "city" in data
