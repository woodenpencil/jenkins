from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hi, pipka<p>"

if __name__=="main":
    app.run(debug=True, host="0.0.0.0")
    