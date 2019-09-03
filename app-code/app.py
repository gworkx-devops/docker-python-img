#! /usr/bin/env python

import json

from bottle import Bottle, route, run, static_file, jinja2_template as template, jinja2_view as view
from bottle_utils import html
from datetime import date
from paste import httpserver

app = Bottle()
dict_cal = {'today': date.today().strftime("%Y-%m-%d")}

@app.route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./static')

@app.route('/')
@app.route('/home', name='home')
def home():
    return template('landing.tpl', calendar=dict_cal)

@app.route('/about', name='about')
def about(): 
    # Load expertise flatfile DB 
    with open('lib/expertise.dict','r') as exps:
        dict_exps = json.load(exps)

    # Load technology flatfile DB 
    with open('lib/tech.dict','r') as tech:
        dict_tech = json.load(tech)
    return template('about.tpl', technology=dict_tech, expertise=dict_exps, calendar=dict_cal)

@app.route('/contact', name='contact')
def contact():
#    return requests.post(
#        "https://api.mailgun.net/v3/samples.mailgun.org/messages",
#        auth=("api", "key-3ax6xnjp29jd6fds4gc373sgvjxteol0"),
#        data={"from": "Excited User <excited@samples.mailgun.org>",
#              "to": ["devs@mailgun.net"],
#              "subject": "Hello",
#              "text": "Testing some Mailgun awesomeness!"})
#
    return template('contact.tpl', calendar=dict_cal)

@app.route('/login', name='login')
def login():
    return template('signin.tpl', calendar=dict_cal)

httpserver.serve(app, host='0.0.0.0', port=8000)

##
# NOTES : BottlePy + Jinja Template + Python + Flask
#
# - Useful Links:
#   1) http://bottle.readthedocs.io/en/latest/index.html
#   2) http://bottle-utils.readthedocs.io/en/latest/index.html
#   3) http://bottlepy.org/docs/dev/index.html
#   4) http://jinja.pocoo.org/docs/
#   5) http://docs.python-guide.org/en/latest/
#   6) https://www.toptal.com/bottle/building-a-rest-api-with-bottle-framework
##
