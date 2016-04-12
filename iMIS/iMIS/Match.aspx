<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Match.aspx.cs" Inherits="iMIS.Match" %>

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
<title>Reports</title>
</head>
<body>
    <form id="sFiltercj1" runat="server">
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">Students Interested in a Job.</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="match" runat="server">
        <HeaderTemplate>
            <table class="table table-responsive fs15" cellspacing="0" rules="all" border="1">
                <tr>
                    <th scope="col" style="width: 100px">
                        Student ID
                    </th>
                    <th scope="col" style="width: 100px">
                        Name
                    </th>
                    <th scope="col" style="width: 80px">
                        Job Position
                    </th>
                    <th scope="col" style="width: 100px">
                        Company
                    </th>
                     <th scope="col" style="width: 100px">
                        Salary
                    </th>
                </tr>
                </HeaderTemplate>
                <ItemTemplate>
            <tr>
                    <td>
                    <asp:Label ID="sid" runat="server" Text='<%# Eval("iSID") %>' />
                </td>
                <td>
                    <asp:Label ID="sfname" runat="server" Text='<%# Eval("iS_FName") %>' />
                    <asp:Label ID="slname" runat="server" Text='<%# Eval("iS_LName") %>' />
                </td>
                <td>
                    <asp:Label ID="ccountry" runat="server" Text='<%# Eval("iPosition") %>' />
                </td>
                <td>
                    <asp:Label ID="imac" runat="server" Text='<%# Eval("iC_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iSalary") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
            </div>
    </form>
</body>
</html>
