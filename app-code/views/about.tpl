{% extends "layout.tpl" %}
{% block content %}
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href="/home">Home</a></li>
            <li role="presentation" class="active"><a href="/about">About</a></li>
            <li role="presentation"><a href="/contact">Contact</a></li>
          </ul>
        </nav>
        {% include "logo.tpl" %}
      </div>

    <h4 class="text-primary"><strong>Technologies That Excite Us</strong></h4>

      <div class="row marketing">
        <div class="col-lg-6 panel-info">
          <h4 class="panel-heading panel-title">LINUX</h4>
          <p class="small text-justify">ALPINE, CENTOS and DEBIAN DISTROS - Is tech-talk for the way in which the Linux operating system is packaged. Each distro is differentiated by its default interface, i.e. the way it looks, catalog of stock applications and even repositories, the library of apps officially supported by the specific “brand” of Linux.</p>

          <h4 class="panel-heading panel-title">CONTAINERS</h4>
          <p class="small text-justify">DOCKER - containers wrap a piece of software in a complete filesystem that contains everything needed to run: code, runtime, system tools, system libraries – anything that can be installed on a server. </p>
        </div>

        <div class="col-lg-6 panel-info">
          <h4 class="panel-heading panel-title">MICRO SERVICES</h4>
          <p class="small text-justify">APPLICATION PODS - Microservices are an application architecture style where independent, self-contained programs with a single purpose can communicate with each other over a network. The microservices approach is a first realisation of SOA that followed the introduction of DevOps and building of CI/CD systems.</p>

          <h4 class="panel-heading panel-title">AUTOMATION</h4>
          <p class="small text-justify">ANSIBLE - The simplest way to automate deployment of apps and provisioning of IT infrastructure. It encompass Application Deployment, Configuration Management and Continuous Delivery.</p>
        </div>
      </div>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#app" aria-controls="app" role="tab" data-toggle="tab"><strong>APPLICATION</strong></a></li>
        <li role="presentation"><a href="#experience" aria-controls="experience" role="tab" data-toggle="tab"><strong>EXPERIENCE</strong></a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="app">
            <table class="table table-striped table-hover">
              <thead>
                  <td class="info">TECHNOLOGY</td>
                  <td class="info">SOFTWARE</td>
              </thead>
              <tbody>
               {% for key, value in technology.items() %} 
                  <tr>
                     <td> {{ key }} </td>
                     <td> {{ value }} </td>
                  </tr>
               {% endfor %}
              </tbody>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="experience">
            <table class="table table-striped table-hover">
              <thead>
                  <td class="info">TOOL</td>
                  <td class="info">SKILL LEVEL</td>
              </thead>
              <tbody>
               {% for key, value in expertise.items() %} 
                  <tr>
                     <td> {{ key }} </td>
                     <td> {{ value }} </td>
                  </tr>
               {% endfor %}
              </tbody>
            </table>
        </div>
    </div>

{% endblock %}
