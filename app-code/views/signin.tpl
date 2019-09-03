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
        <form class="form-signin">
            <h2 class="form-signin-heading text-center text-primary">Site Manager</h2>
            <label for="inputEmail" class="sr-only">Email Address</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email Address or User ID" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
            <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> <small>Remember Me</small>
            </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">login</button>
        </form>
      </div>
{% endblock %}
