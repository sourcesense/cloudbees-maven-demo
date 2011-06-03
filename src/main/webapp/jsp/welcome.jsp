<%@ page language="java" %>
<%@ page import="example.Constants" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <title>Cloudbees Test</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="Shortcut Icon" type="image/ico" href="https://di388e0fcqllf.cloudfront.net/images/favicon.png">
    <link rel="StyleSheet" href="/css/home.css" TYPE="text/css" media="screen"/>
  </head>

  <body>

    <div class="cb-header">
        <a href="http://www.cloudbees.com"><img src="http://di388e0fcqllf.cloudfront.net/images/cloudbees_logo.png" width="133" height="60" alt="CloudBees" /></a>
    </div>

    <div id="cb-app-container">
      <div id="wrapper" class="clearfix">
        <div id="main-content">
          <h2 class="color text-xl">Maven-built CloudBees Hello World!</h2>
          <p>Your new application is created and now running successfully in the CloudBees PaaS (this is it!). Well done!</p>
        </div>
      </div>
    </div>

    <div id="cb-footer" class="cb-hf clearfix">
        <ul id="footer-nav" class="clearfix">
            <li><a href="http://www.cloudbees.com/company-contactus.cb">Contact Us</a></li>
            <li><a href="http://www.cloudbees.com/status.cb">Status</a></li>
            <li><a href="http://www.cloudbees.com/security.cb">Security</a></li>
            <li><a href="http://www.cloudbees.com/company-privacy.cb">Privacy Policy</a></li>
            <li><a href="http://www.cloudbees.com/company-TOS.cb">Terms of Service</a></li>
        </ul>
        <span id="powered-by" class="right">
            Application template by <a href="http://www.cloudbees.com/" title="Go to CloudBees.com">CloudBees</a>
        </span>
        <br/>
        <span class="right">
          Application Version: <%= request.getAttribute(Constants.VERSION_JSP_ATTRIBUTE) %>
        </span>
        <span id="copyright" class="clear block text-xxs">This template (only): © 2010 Cloud Bees, Inc.</span>
    </div>

  </body>
</html>