<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sfiltercjg.aspx.cs" Inherits="iMIS.sfiltercjg" %>

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
    <form id="sFiltercjg1" runat="server">
    <div align="center">
    <asp:Image ID="logo" ImageUrl="~/logo.jpg" runat="server" Height="151px" Width="1036px" />
   </div>
         <hr />
        <div>
     <h2 align="center">Student & Job Details</h2>
            </div>
        <div>
    
        
        
    <asp:Repeater ID="sFiltercjg" runat="server">
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
                        Country
                    </th>
                    <th scope="col" style="width: 100px">
                        Has Internship
                    </th>
                    </th>
                    <th scope="col" style="width: 80px">
                        Company Name
                    </th>
                    <th scope="col" style="width: 80px">
                        Salary
                    </th>
                     <th scope="col" style="width: 100px">
                        GPA
                    </th>
                     <th scope="col" style="width: 100px">
                        Term
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
                    <asp:Label ID="ccountry" runat="server" Text='<%# Eval("iS_Country") %>' />
                </td>
                <td>
                    <asp:Label ID="imac" runat="server" Text='<%# Eval("iMAC") %>' />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("iC_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("iC_Salary") %>' />
                </td>
                <td>
                    <asp:Label ID="scountry" runat="server" Text='<%# Eval("iGPA") %>' />
                </td>
                
                <td>
                    <asp:Label ID="sstatus" runat="server" Text='<%# Eval("iS_Term") %>' />
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
