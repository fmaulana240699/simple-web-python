from flask import Flask, session, redirect, url_for
from flask import request
from flask import render_template

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return "Welcome to Simple Python App"
    

if __name__ == "__main__":
	app.run(host= '0.0.0.0', port='5555')