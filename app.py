from flask import Flask

app = Flask(__name__)

@app.route("/")
def entry():
    return "<p>I AM ALIVE!</p>"
