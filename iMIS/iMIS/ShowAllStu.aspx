<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllStu.aspx.cs" Inherits="iMIS.ShowAllStu" %>

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
<title>Show All Students</title>
</head>
<body>
    <form id="showallstuf" runat="server">
    
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">All Students of MAC</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="showAllStu" runat="server">
        <HeaderTemplate>
            <table class="table table-responsive fs15" cellspacing="0" rules="all" border="1">
                <tr>
                    <th scope="col" style="width: 100px">
                        Student ID
                    </th>
                    <th scope="col" style="width: 80px">
                        Name
                    </th>
                    <th scope="col" style="width: 100px">
                        Email
                    </th>
                     <th scope="col" style="width: 100px">
                        Country
                    </th>
                     <th scope="col" style="width: 100px">
                        Status
                    </th>
                     <th scope="col" style="width: 100px">
                        Term
                    </th>
                     <th scope="col" style="width: 100px">
                        Year
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
                    <asp:Label ID="semail" runat="server" Text='<%# Eval("iS_Email") %>' />
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iS_Country") %>' />
                </td>
                <td>
                    <asp:Label ID="sstatus" runat="server" Text='<%# Eval("iS_Status") %>' />
                </td>
                <td>
                    <asp:Label ID="sterm" runat="server" Text='<%# Eval("iS_Term") %>' />
                </td>
                <td>
                    <asp:Label ID="syear" runat="server" Text='<%# Eval("iS_Year") %>' />
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