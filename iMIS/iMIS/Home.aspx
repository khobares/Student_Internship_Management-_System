<%@ Page Title="Student Details" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="iMIS.Home" %>

<!DOCTYPE html>
<html>
<head id="Head">
    <script src="Scripts/jquery-2.1.0.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/Site.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<title>Home</title>
</head>
<body>
<div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home.aspx">iMIS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Add Data
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="StudentDetails.aspx">Student</a></li>
          <li><a href="CompanyDetails.aspx">Company</a></li>
          <li><a href="JobDetails.aspx">Job</a></li>
            <li><a href="AddUser.aspx">User</a></li> 
        </ul>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Update Data
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="UpdateStudent.aspx">Student</a></li>
          <li><a href="UpdateCompany.aspx">Company</a></li>
          <li><a href="UpdateJob.aspx">Job</a></li> 
        </ul>
      </li>
        <li><a href="Delete.aspx">Delete Data</a></li>
      <li><a href="Reports.aspx">Reporting</a></li> 
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="Default.aspx"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
  </div>
</nav>
</div>
    <br /><br /><br />
    <div>
        <br /><br />
        <h1 align="center">iMIS</h1>
        <br />
        <h1 class="lead" align="center"><small>This is an Internship Management System (Death Star) used to manage the internship status of students in University of Windsor</small></h1>
        <h1 class="lead" align="center"><small>and studying Masters of Applied Computing Program.</small></h1>
        <h1 class="lead" align="center"><small>The Death Star is capable of adding, updating and deleting students, company or jobs.</small></h1>
        <h1 class="lead" align="center"><small>Death star can also generate different types of reports based on your requirements.</small></h1>


    </div>
</body>
</html>
