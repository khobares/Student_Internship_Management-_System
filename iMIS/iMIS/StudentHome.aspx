<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="StudentHome.aspx.cs" Inherits="iMIS.StudentHome" %>

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
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DefaultStudent.aspx"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
        </div>
    </nav>
        </div>
    <form id="sHome" runat="server">
        <br />
        <br />
        <div align="center"><h1><asp:Label ID="topfname" runat="server" Text="User"></asp:Label>&nbsp;<asp:Label ID="toplname" runat="server" Text="">'s Info</asp:Label></h1></div>
        <div>
    <h1><small>&nbsp;&nbsp;&nbsp;Personal Details</small></h1>
        <br /><hr />
        <div style="float:left; width:50%;">
        <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student ID:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="liSID" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
        <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lSFName" runat="server" Text="Does Not Exist"></asp:Label>&nbsp;<asp:Label ID="lSLName" runat="server" Text=""></asp:Label></small></h3>
        <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lSPhone" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
        <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="lSCountry" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
        </div>
        <div style="float:left; width:50%;">
            <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lSStatus" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
            <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lSGender" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
            <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lSEmail" runat="server" Text="Does Not Exist"></asp:Label></small></h3>
            <h3><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Term:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lSTerm" runat="server" Text="Does Not Exist"></asp:Label>&nbsp;<asp:Label ID="lSYear" runat="server" Text=""></asp:Label></small></h3>
        </div>
            </div>
        <div>
        <br /><br /><br />
            <h1>&nbsp;</h1>
            <h1>&nbsp;&nbsp;<small>Education Details</small></h1>
                    <br /><hr />
            <h2><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduate Education</small></h2>
            <br />
            <div align="center">
                <asp:Repeater ID="sHomeG" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Major</th>
                    <th style="text-align: center">GPA</th>
                    <th style="text-align: center">University</th>
                    <th style="text-align: center">Country</th>
                    <th style="text-align: center">Year</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iMajor") %></td><td><%# Eval("iGPA") %></td><td><%# Eval("iUniversity") %></td><td><%# Eval("iCountry") %></td><td><%# Eval("iYear") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
            <h2>&nbsp;</h2>
            <h2><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Under Grad Education</small></h2>
            <br />
            <div align="center">
                <asp:Repeater ID="sHomeUG" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Major</th>
                    <th style="text-align: center">GPA</th>
                    <th style="text-align: center">University</th>
                    <th style="text-align: center">Country</th>
                    <th style="text-align: center">Year</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iMajor") %></td><td><%# Eval("iGPA") %></td><td><%# Eval("iUniversity") %></td><td><%# Eval("iCountry") %></td><td><%# Eval("iYear") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
            </div>
        <div>
             <br /><br />
            <h1>&nbsp;&nbsp;<small>Work Experience</small></h1>
                    <br /><hr /><br />
            <div align="center">
                <asp:Repeater ID="sHomeExp" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Company</th>
                    <th style="text-align: center">Job Title</th>
                    <th style="text-align: center">Job Duties</th>
                    <th style="text-align: center">Salary</th>
                    <th style="text-align: center">Year</th>
                    <th style="text-align: center">Availability</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iC_Name") %></td><td><%# Eval("iC_Title") %></td><td><%# Eval("iC_Duties") %></td><td><%# Eval("iC_Salary") %></td><td><%# Eval("iC_Year") %></td><td><%# Eval("iMAC") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
            </div>
                    <div>
             <br /><br />
            <h1>&nbsp;&nbsp;<small>Skills</small></h1>
                    <br /><hr /><br />
            <div align="center">
                <asp:Repeater ID="sHomeSk" runat="server">
                     <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                <thead>
                <tr>
                    <th style="text-align: center">Skill</th>
                    <th style="text-align: center">Skill Level</th>
                    <th style="text-align: center">Skill Group</th>
                </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iSkill") %></td><td><%# Eval("iLevel") %></td><td><%# Eval("iSkillG") %></td><td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
    </asp:Repeater>
                </div>
            </div>
            
    </form>
</body>
</html>
