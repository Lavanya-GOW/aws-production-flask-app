from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "AWS Production Flask App Running!"

@app.route("/health")
def health():
    return "Application Healthy"

@app.route("/about")
def about():
    return "Built by Harshu during Cloud Engineering Journey"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
