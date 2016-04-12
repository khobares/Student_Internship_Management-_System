<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllStart.aspx.cs" Inherits="iMIS.ShowAllStart" %>

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
<title>Show All Startups</title>
</head>
<body>
    <form id="showallstrt1" runat="server">
    
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">All Startups</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="showAllStrt" runat="server">
        <HeaderTemplate>
            <table class="table table-responsive fs15" cellspacing="0" rules="all" border="1">
                <tr>
                    <th scope="col" style="width: 100px">
                        Company Name
                    </th>
                    <th scope="col" style="width: 80px">
                        Company Type
                    </th>
                    <th scope="col" style="width: 100px">
                        Address
                    </th>
                     <th scope="col" style="width: 100px">
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
                    <asp:Label ID="sid" runat="server" Text='<%# Eval("iC_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="sfname" runat="server" Text='<%# Eval("iC_Type") %>' />
                </td>
                <td>
                    <asp:Label ID="caddress" runat="server" Text='<%# Eval("iC_Address") %>' />,
                    <asp:Label ID="ccity" runat="server" Text='<%# Eval("iC_City") %>' />,
                    <asp:Label ID="ccountry" runat="server" Text='<%# Eval("iC_Country") %>' />,
                    <asp:Label ID="cpost" runat="server" Text='<%# Eval("iC_Post") %>' />
                    
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iC_FName") %>' />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("iC_LName") %>' />
                </td>
                <td>
                    <asp:Label ID="sstatus" runat="server" Text='<%# Eval("iC_Phone") %>' />
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