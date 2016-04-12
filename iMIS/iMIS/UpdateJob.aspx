<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateJob.aspx.cs" Inherits="iMIS.UpdateJob" %>

<!DOCTYPE html>

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
<title>Update Job</title>
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
        <form id="studentdetails" runat="server">
        <h2 align="center">Update a Job to the 'Death Star'</h2>
            <br />
    <table class="table table-borderless table-responsive fs15" width="800px" align="center" style=" background-color: transparent;">
<%-- -------------------------------------------Job Details------------------------------------------------- --%>
<tr><td></td><td>
<h1><small>Job Details</small></h1>
    </td><td></td>
    </tr>
        <tr>
            <td></td>
    <td>
        Company Name
   </td>
    <td>
        <asp:TextBox ID="iJCname" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Field Required"
            ControlToValidate="iJCname" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upjob"></asp:RequiredFieldValidator>
    </td>           
             <td></td>
    <td>Position</td>
            <td><asp:TextBox ID="iJCPosition" class="form-control" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
             <td>Description</td>
            <td><TextArea ID="iJDescription" class="form-control" runat="server"></TextArea></td>
            <td></td>
            <td>Responsibilities</td>
            <td><TextArea ID="iJResponsibilities" class="form-control" runat="server"></TextArea></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
             <td>Requirements</td>
            <td><TextArea ID="iJRequirements" class="form-control" runat="server"></TextArea></td>
            <td></td>
            <td>Salary</td>
            <td><asp:TextBox ID="iJSalary" class="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Numbers Only."
            ControlToValidate="iJSalary" ValidationExpression="^([0-9]*)$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upjob"></asp:RegularExpressionValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Job Group</td>
            <td>
                <select class="form-control" id="iCType" runat="server">
                    <option>Web Development</option>
                    <option>Mobile Development</option>
                     <option>System Development</option>
                     <option>Technical Support</option>
                     <option>Networking</option>
                    <option>Data Analysis</option>
                    <option>Testing</option>
                     <option>Security</option>
                     <option>Data Management</option>
                     <option>Other</option>
                </select>
            </td><td></td>
        </tr>
        <tr><td></td></tr>
        <tr><td colspan="7" align="center"><div class="text-success fade in" id="successjob" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
</table>
            <table class="table table-borderless table-responsive fs15" align="center" style=" background-color: transparent;">
        <tr>
           <td colspan="7" align="center">
           <asp:Button ID="submitaddjob" runat="server" class="btn btn-success" Text="+ Update Job" Font-Size=Large
              OnClick="submitupjob_Click" ValidationGroup="upjob" />
           </td>
       </tr>
        </table>
 </form>
</div>
</body>
</html>
