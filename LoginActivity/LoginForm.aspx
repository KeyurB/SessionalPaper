<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="LoginActivity.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 511px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Direction="LeftToRight" Font-Bold="True" Font-Size="40pt" ForeColor="Red" Height="372px" HorizontalAlign="Center" style="margin-left: 125px; margin-right: 0px; margin-top: 75px" Width="992px">
            Login<br /> <br />
            <asp:Label ID="Label3" runat="server" Font-Size="10pt"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Text="Username" ></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="235px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="236px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Black" Text="Sign in"  OnClick="Button1_Click"/>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
