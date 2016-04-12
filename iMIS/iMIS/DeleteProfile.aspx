<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteProfile.aspx.cs" Inherits="iMIS.DeleteProfile" %>

<!DOCTYPE html>

<<html>
<head id="Head">
    <script src="Scripts/jquery-2.1.0.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/Site.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<title>Student Home</title>
</head>
<body>
    <div>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <ul class="nav navbar-nav">
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">View
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="StudentHome.aspx">Profile</a></li>
          <li><a href="JobPortal.aspx">Job Portal</a></li>
              
              </ul>
      </li>
      <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Add
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="AddStudent.aspx">Profile</a></li>
          <li><a href="Interests.aspx">Interests</a></li>
              </ul>
      </li>
              <li><a href="SUpdateStudent.aspx">Update Profile</a></li>
          <li><a href="DeleteProfile.aspx">Delete Profile</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DefaultStudent.aspx"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
        </div>
    </nav>
        </div>
</body>
</html>
