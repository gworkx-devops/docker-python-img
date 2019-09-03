{% extends "layout.tpl" %}
{% block content %}
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="/home">Home</a></li>
            <li role="presentation"><a href="/about">About</a></li>
            <li role="presentation"><a href="/contact">Contact</a></li>
          </ul>
        </nav>
        {% include "logo.tpl" %}
      </div>

      <div class="jumbotron">
        <h1>WEB Solutions<br/>and<br/>Cloud Infrastructure</h1>
        <p class="lead">experts in support of DevOps movement that recognizes the much needed cultural shift towards agile SDLC perceptions.</p>
        <p><a class="btn btn-lg btn-success" href="/contact" role="button">FOR HIRE</a></p>
      </div>

     <h3 class="text-primary text-center"><strong>Tools That Pump Us</strong></h3>

      <div class="row marketing" style="min-height:500px;">
        <div class="col-lg-6 panel-info">
          <h4 class="panel-heading">PYTHON</h4>
          <p class="text-justify">Powerful enough to tackle even the most difficult problems in virtually any domain. It integrates well with existing IT infrastructure, and is very platform independent.</p>

          <h4 class="panel-heading">PHP</h4>
          <p class="text-justify">A general purpose language that can accomplish anything on the web specifically on the server side scripting as any other CGI program can do.</p>

          <h4 class="panel-heading">SHELL SCRIPTING</h4>
          <p class="text-justify">Aggregated series of commands that are a mixture of commands normally typed on the commandline and commands typed on the commandline but generally wouldn't.</p>
        </div>

        <div class="col-lg-6 panel-info">
          <h4 class="panel-heading">VAGRANT</h4>
          <p class="text-justify">To create portable work environments which can be easily reproduced on any system. Useful for developers and system administrators to duplicate server's configuration on local machines.</p>

          <h4 class="panel-heading">DOCKER</h4>
          <p class="text-justify">Provides lightweight virtualization with almost zero overhead targeting standardization of application deployment.</p>

          <h4 class="panel-heading">ANSIBLE</h4>
          <p class="text-justify">Agentless tool for provisioning and orchestration over SSH which utilizes templated playbook execution or adhoc commands to manage nodes over the network.</p>
        </div>
      </div>
{% endblock %}
