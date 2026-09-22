from flask import Flask

app = Flask(__name__)

VERSION = "v3"


@app.route("/")
def index():
    return "<h1>Hello from the environment aelg6i94!</h1><p>Version: " + VERSION + "</p>"


@app.route("/health")
def health():
    return "BROKEN", 500
