#!/usr/bin/env python
import flask
import redis

app = flask.Flask(__name__)
redis = redis.Redis(host='redis', port=6379)


@app.route("/")
@app.route("/<path:name>")
def hello(name='World'):
    redis.incr(name)
    hits = redis.get(name)
    return flask.render_template('hello.html', name=name, hits=hits)

app.run(host='0.0.0.0', debug=True)
