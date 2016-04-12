<%@ Page Title="Login Page" Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="Default.aspx.cs" Inherits="iMIS._Default" %>
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

<title>iMIS Login</title>
</head>
<body>
    <form id="mainlogin" runat="server">
    <div class="table-responsive">
        <table class="table table-borderless table-condensed black table-responsive" style="position: fixed;
            width: 100%; z-index: 2;">
            <tr>
                <td colspan="2" align="center">
                    <p style="color: #E2E2E2; vertical-align: middle; font-size: 35px;">
                        iMIS</p>
                    <p style="color: #E2E2E2; vertical-align: middle; font-size: 15px;">
                        (Internship Management Information System)</p>
                      <p style="color: #0067A7; vertical-align: middle; font-size: 35px;">
                        Admin Login Panel</p> 
                </td>
            </tr>
        </table>
    </div>
     
<br /><br /><br /><br /><br /><br /><br /><br /><br />
        <div >
            <table class="table table-borderless table-responsive fs15" align="center" style=" background-color: transparent;">
                <tr>
                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    <td align="center">
                        <asp:TextBox ID="userid" class="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvuserid1" runat="server" BackColor="#FFDFDF" ControlToValidate="userid"
                            ErrorMessage="Please Enter User ID" ForeColor="#A40000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                </tr>
               
                <tr>
                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    <td align="center">
                        <asp:TextBox ID="passwd" class="form-control" placeholder="Enter Password" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvpassword1" runat="server" BackColor="#FFDFDF"
                            ControlToValidate="passwd" ErrorMessage="Please Enter Password" ForeColor="#A40000"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td><td></td>
                </tr>
                
                <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    <td align="center">
                        <asp:Button CssClass="form-control btn btn-primary" Text="Log In" Font-Size="Medium" runat="server" ID="login1" OnClick="login1_Click"></asp:Button>
                    </td>
                    <td></td>
                </tr>
                <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    <td align="center">
                        <a href="ForgotPassword.aspx" class="form-control btn btn-danger" id="forgotpwd" style="font-size:14px;" runat="server">Forgot Password?</a>
                    </td>
                    <td>
                    </td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                    </tr>
            </table>
        </div>
    <p align="center">
        &copy 2016 Copyrights Reserved: iMIS</p>
</form>
</body>
</html>