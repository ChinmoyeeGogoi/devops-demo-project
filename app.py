from flask import Flask
import requests

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>COVID Pipeline DevOps Project</h1><p>App is running successfully!</p>"

@app.route("/health")
def health():
    return {"status": "healthy"}, 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)