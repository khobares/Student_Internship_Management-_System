<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="Delete.aspx.cs" Inherits="iMIS.Delete" %>

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
<title>Delete Data</title>
</head>
<body>
    <div>
        <nav class="navbar navbar-inverse">
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
<div>
        <form id="deletedata" runat="server">
        <h2 align="center">Delete Data From 'Death Star'</h2>
            <br /><br /><br /><br /><br /><br />
    <table class="table table-borderless table-responsive fs15" width="800px" align="center" style=" background-color: transparent;">
<%--------------------------------------------Delete Student--------------------------------------------------%>
<tr>
    <td></td>
    <td>
        Student ID
    </td>
    <td>
        <asp:TextBox ID="sid" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Field Required."
            ControlToValidate="sid" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="delstu"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Numbers Only."
            ControlToValidate="sid" ValidationExpression="^([0-9]*)$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="delstu"></asp:RegularExpressionValidator>
    </td>
    <td></td>
    <td>
           <asp:Button ID="submitdelstu" runat="server" class="btn btn-primary btn-sm" Text="- Delete Student"
              OnClick="submitdelstu_Click" ValidationGroup="delstu" />
           </td>
    <td></td>
</tr>
        <tr><td></td></tr>
        <tr><td colspan="7" align="center"><div class="text-success fade in" id="successstu" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Student Removed from Death Star <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
<%--------------------------------------------Delete Company--------------------------------------------------%>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr>
    <td></td>
    <td>Company Name</td>
    <td>
        <asp:TextBox ID="iCname" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field Required"
            ControlToValidate="iCname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="delcomp"></asp:RequiredFieldValidator>
    </td><td></td>
    <td>
           <asp:Button ID="submitdelcomp" runat="server" class="btn btn-primary btn-sm" Text="- Delete Company"
              OnClick="submitdelcomp_Click" ValidationGroup="delcomp" />
           </td>
    <td></td>
</tr>
        <tr><td></td></tr>
        <tr><td colspan="7" align="center"><div class="text-success fade in" id="successcomp" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Company Removed from Death Star <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
<%--------------------------------------------Delete Job--------------------------------------------------%>
<tr><td><br /></td></tr>
<tr><td><br /></td></tr>
<tr>
    <td></td>
    <td>Company Name</td>
    <td>
        <asp:TextBox ID="iJCname" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Field Required"
            ControlToValidate="iJCname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="deljob"></asp:RequiredFieldValidator>
    </td><td></td>
    </tr>
        <tr><td></td>
    <td>Position</td>
            <td><asp:TextBox ID="iJCPosition" class="form-control" runat="server"></asp:TextBox></td>
            <td></td>
    <td>
        <asp:Button ID="aubmitdeljob" runat="server" class="btn btn-primary btn-sm" Text="- Delete Job"
              OnClick="submitdeljob_Click" ValidationGroup="deljob" />
    </td>
</tr>
        <tr><td></td></tr>
        <tr><td colspan="7" align="center"><div class="text-success fade in" id="successjob" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Job Removed from Death Star <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
</table>
</form>
</div>    
</body>
</html>
