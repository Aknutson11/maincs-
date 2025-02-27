from flask import Flask
from flask import request
from flask import jsonify
import logging
import datetime as dt


#enable logging
logging.basicConfig(filename='/app/logs/error.log', level=logging.ERROR)

#helper functions
def _error(msg):
  e = {"Error" : msg}
  return jsonify(e)

#init flask instance

app = Flask(__name__)

@app.route("/")
def root():
    return _error(f"Not Authorized: {dt.datetime.now(dt.timezone.utc)}")