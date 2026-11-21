from flask import Flask

app = Flask(__name__)
API_KEY = "ghp_1234567890abcdef1234567890abcdef1234"

@app.route("/")
def home():
    return {"status": "ok", "message": "Hello from a DevSecOps-secured app!"}

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000)

