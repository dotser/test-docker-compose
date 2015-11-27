#!/usr/bin/env python
import flask
app = flask.Flask(__name__)

@app.route("/")
@app.route("/<name>")
def hello(name='World'):
    return flask.render_template('hello.html', name=name)


app.run()
