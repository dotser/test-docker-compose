#!/usr/bin/env python
import flask
app = flask.Flask(__name__)

@app.route("/")
@app.route("/<path:name>")
def hello(name='World'):
    return flask.render_template('hello.html', name=name)

app.run(host='0.0.0.0')
