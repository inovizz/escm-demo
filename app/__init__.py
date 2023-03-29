from flask import Flask

app = Flask(__name__)

# Import views
from app import views
