<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
    <link href="/static/css/jumbotron-narrow.css" rel="stylesheet" type="text/css">
    <link href="/static/css/contact-form.css" ryel="stylesheet" type="text/css">
    <link href="/static/css/signin.css" rel="stylesheet" type="text/css">
    <!-- <link href="/static/css/variables.less" rel="stylesheet/less" type="text/css"> -->
</head>
<body>
    <div class="container">
     {% block content %}
     {% endblock %}
      <footer class="footer text-center">
        <p>&copy; {{ calendar['today'] }} Gelwa Workx | <a href="/login">admin</a></p>
      </footer>
    </div> <!-- /container -->
    <script src="https://code.jquery.com/jquery-latest.js" type="text/javascript"></script>
    <script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- <script src="/static/js/less.min.js" type="text/javascript"></script> -->
</body>
</html>
