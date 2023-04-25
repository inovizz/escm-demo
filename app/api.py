"""
This module provides functions for interacting with the API.
"""

from flask import jsonify
from app import app


@app.route("/")
def index():
    """
    Root API
    """
    return "Hello, World!"


@app.route("/api")
def api():
    """
    Returns data from the API.
    """
    data = {"name": "John Doe", "age": 30, "city": "New York"}
    return jsonify(data)


if __name__ == "__main__":
    app.run()
