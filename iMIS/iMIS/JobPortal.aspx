<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobPortal.aspx.cs" Inherits="iMIS.JobPortal" %>

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
<title>Job Portal</title>
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
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DefaultStudent.aspx"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
        </div>
    </nav>
        </div>
    <br /><br /><br />
    <div align="center"><h1>Job Portal</h1></div>
    <br /><hr /><br />
    <div align="center">
                <asp:Repeater ID="jobPortal" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Company Name</th>
                    <th style="text-align: center">Position</th>
                    <th style="text-align: center">Group</th>
                    <th style="text-align: center">Salary</th>
                    <th style="text-align: center">Job Description</th>
                    <th style="text-align: center">Job Requirements</th>
                    <th style="text-align: center">Job Responsibilities</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iC_Name") %></td><td><%# Eval("iPosition") %></td><td><%# Eval("iJobGroup") %></td><td><%# Eval("iSalary") %></td><td><%# Eval("iDescription") %></td><td><%# Eval("iRequirements") %></td><td><%# Eval("iResponsibility") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
        <br /><br /><br />
    <div align="center"><h1>Jobs based on your Interests</h1></div>
    <br /><hr /><br />
    <div align="center">
                <asp:Repeater ID="jobmatch" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Company Name</th>
                    <th style="text-align: center">Position</th>
                    <th style="text-align: center">Salary</th>
                    <th style="text-align: center">Job Description</th>
                    <th style="text-align: center">Job Requirements</th>
                    <th style="text-align: center">Job Responsibilities</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iC_Name") %></td><td><%# Eval("iPosition") %></td><td><%# Eval("iSalary") %></td><td><%# Eval("iDescription") %></td><td><%# Eval("iRequirements") %></td><td><%# Eval("iResponsibility") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
</body>
</html>
