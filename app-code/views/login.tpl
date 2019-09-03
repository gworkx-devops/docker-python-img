{% extends "layout.tpl" %}      
{% block content %}
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href="/home">Home</a></li>
            <li role="presentation"><a href="/about">About</a></li>
            <li role="presentation"><a href="/contact">Contact</a></li>
          </ul>
        </nav>
        {% include "logo.tpl" %}
      </div>
      <div class="row marketing">
        <div class="col-sm-6 col-md-4 col-md-offset-4 outlined">
            <h1 class="text-center login-title">login</h1>
            <div class="account-wall">
                <form class="form-signin" action="/admin" method='POST'>
                    <div class="form-group">
                        <input type='text' name='username' class='underlined' placeholder='Username' required autofocus>
                    </div>
                    <div class="form-group">
                        <input type='password' name='password' class='underlined' placeholder='Password' required>
                    </div>
                    <div class="form-group">
                    <button class='btn btn-lg btn-primary btn-block' type='submit'>Sign in</button>
                    </div>
                    <span class="clearfix"></span>
                </form>
            </div>
            <div class="text-center">
                Don't have an account? <a href="/register" class="new-account">Register here!</a>
            </div>
        </div>
      </div>
{% endblock %}
