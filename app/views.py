from app import app
from flask import jsonify


@app.route("/")
def index():
    return "Hello, World!"


@app.route("/api")
def api():
    data = {"name": "John Doe", "age": 30, "city": "New York"}
    return jsonify(data)
