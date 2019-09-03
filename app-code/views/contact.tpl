{% extends "layout.tpl" %}      
{% block content %}
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href="/home">Home</a></li>
            <li role="presentation"><a href="/about">About</a></li>
            <li role="presentation" class="active"><a href="/contact">Contact</a></li>
          </ul>
        </nav>
        {% include "logo.tpl" %}
      </div>
      <div class="row marketing">
        <div class="col-lg-6 panel-info">
          <h4 class="panel-heading"><span class="glyphicon glyphicon-home"></span> Address</h4>
          <p class="small">#712 - 135 Tyndall Ave, Toronto, ON</p>

          <h4 class="panel-heading"><span class="glyphicon glyphicon-phone-alt"></span> Phone Number</h4>
          <p class="small">+1 647 525 3096</p>
        </div>
        <div class="col-lg-6 panel-info">
             <h3 class="text-primary"><strong>Quick</strong> Contact <span></span></h3>
                <form action="action.php?send=true" method="post" id="contactFrm" name="contactFrm">
                  <p class=form-group>
                  <input type="text" required="" placeholder="Your Name" value="" tabindex="1" name="name" class="form-control"></p>
                  <p class="form-group">
                  <input type="text" required="" placeholder="Your Phone No" tabindex="2" value="" name="mobile" class="form-control">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your Phone with anyone else.</small>
                  </p>
                  <p class="form-group">
                  <input type="email" required="" placeholder="Your Email" tabindex="3" value="" name="email" class="form-control">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your Email with anyone else.</small>
                  <p class="form-group">
                  <textarea placeholder="Your Message" name="message" type="text" rows="5" class="form-control" tabindex="4"></textarea>
                  </p>
                  <p class="form-group text-right">
                  <input type="submit" value="Clear" name="clear" class="btn btn-primary">
                  <input type="submit" value="Submit" name="submit" class="btn btn-primary">
                  </p>
                </form>
        </div>
      </div>
{% endblock %}
