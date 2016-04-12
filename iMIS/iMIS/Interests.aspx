<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interests.aspx.cs" Inherits="iMIS.Interests" %>

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
<title>Add Interests</title>
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
    <form id="addint1" runat="server">
    <div align="center"><h1>Interests</h1>
    <br /><hr /><br />
    <table class="table table-borderless table-responsive fs15" style=" background-color: transparent; width:20%; text-align:center;">
                <tr>
                    <td>
        <asp:TextBox ID="iSInterest" class="form-control" runat="server" PlaceHolder="Enter Interset"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Field Required"
            ControlToValidate="iSInterest" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="addint"></asp:RequiredFieldValidator>
    </td>            

                </tr>
        <tr><td></td></tr>
                <tr><td><div class="text-success fade in" id="successint" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Interest Added <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
                <tr><td>
                    <asp:Button ID="addusr" runat="server" class="btn btn-success" Text="+ Add Interest" Font-Size=Large
              OnClick="submitaddint_Click" ValidationGroup="addint" />
           </td>
                </tr>
        </table>
    </div>
        <br />
        <hr />
        <div align="center"><h1>List of Interests</h1><br />
        <asp:Repeater ID="listint" runat="server">
            <HeaderTemplate>
            <table class="table table-striped table-responsive" style="width:80%; text-align:center;">
                </HeaderTemplate>
                <ItemTemplate>
                <tbody>
                <tr>
                    <td><%# Eval("iS_Interest") %></td>
                </tr>
               </tbody>
                     </ItemTemplate>
        <FooterTemplate>
            </table>
            </FooterTemplate>
                </asp:Repeater>
            </div>
        </form>
</body>
</html>
