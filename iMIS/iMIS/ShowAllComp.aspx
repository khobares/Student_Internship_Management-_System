<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllComp.aspx.cs" Inherits="iMIS.ShowAllComp" %>

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
<title>Show All Companies</title>
</head>
<body>
    <form id="showallcomp1" runat="server">
    
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">All Companies</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="showAllComp" runat="server">
        <HeaderTemplate>
            <table class="table table-responsive fs15" cellspacing="0" rules="all" border="1">
                <tr>
                    <th scope="col" style="width: 110px">
                        Company Name
                    </th>
                    <th scope="col" style="width: 110px">
                        Company Type
                    </th>
                    <th scope="col" style="width: 80px">
                        Address
                    </th>
                    <th scope="col" style="width: 80px">
                        City
                    </th>
                     <th scope="col" style="width: 100px">
                        Country
                    </th>
                     <th scope="col" style="width: 100px">
                        Postal Code
                    </th>
                     <th scope="col" style="width: 130px">
                        Contact Person
                    </th>
                     <th scope="col" style="width: 100px">
                        Phone
                    </th>
                </tr>
                </HeaderTemplate>
                <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="sfname" runat="server" Text='<%# Eval("iC_Name") %>' />
                </td>
                <td>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("iC_Type") %>' />
                </td>
                <td>
                    <asp:Label ID="slname" runat="server" Text='<%# Eval("iC_Address") %>' />
                </td>
                <td>
                    <asp:Label ID="semail" runat="server" Text='<%# Eval("iC_City") %>' />
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iC_Country") %>' />
                </td>
                <td>
                    <asp:Label ID="sstatus" runat="server" Text='<%# Eval("iC_Post") %>' />
                </td>
                <td>
                    <asp:Label ID="sterm" runat="server" Text='<%# Eval("iC_FName") %>' />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("iC_LName") %>' />
                </td>
                <td>
                    <asp:Label ID="syear" runat="server" Text='<%# Eval("iC_Phone") %>' />
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
