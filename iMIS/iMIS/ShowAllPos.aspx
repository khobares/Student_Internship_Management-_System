<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllPos.aspx.cs" Inherits="iMIS.ShowAllPos" %>

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
<title>Show All Positions</title>
</head>
<body>
    <form id="showallpos1" runat="server">
    
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">All Jobs</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="showAllPos" runat="server">
        <HeaderTemplate>
            <table class="table table-responsive fs15" cellspacing="0" rules="all" border="1">
                <tr>
                    <th scope="col" style="width: 100px">
                        Company Name
                    </th>
                    <th scope="col" style="width: 120px">
                        Job Group
                    </th>
                    <th scope="col" style="width: 100px">
                        Position
                    </th>
                     <th scope="col" style="width: 100px">
                        Description
                    </th>
                     <th scope="col" style="width: 100px">
                        Requirements
                    </th>
                     <th scope="col" style="width: 100px">
                        Salary
                    </th>
                    <th scope="col" style="width: 100px">
                        Country
                    </th>
                </tr>
                </HeaderTemplate>
                <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="sfname" runat="server" Text='<%# Eval("iC_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="slname" runat="server" Text='<%# Eval("iJobGroup") %>' />
                </td>
                <td>
                    <asp:Label ID="semail" runat="server" Text='<%# Eval("iPosition") %>' />
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iDescription") %>' />
                </td>
                <td>
                    <asp:Label ID="sstatus" runat="server" Text='<%# Eval("iRequirements") %>' />
                </td>
                <td>
                    <asp:Label ID="sterm" runat="server" Text='<%# Eval("iSalary") %>' />
                </td>
                <td>
                    <asp:Label ID="syear" runat="server" Text='<%# Eval("iC_Country") %>' />
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