from flask import jsonify
from app import app

@app.route("/")
def index():
    return "Hello, World!"

@app.route("/api")
def api():
    data = {"name": "John Doe", "age": 30, "city": "New York"}
    return jsonify(data)

if __name__ == "__main__":
    app.run()
