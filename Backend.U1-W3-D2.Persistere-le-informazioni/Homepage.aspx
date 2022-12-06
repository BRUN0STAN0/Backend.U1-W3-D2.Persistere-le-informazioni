<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Backend.U1_W3_D2.Persistere_le_informazioni.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container text-center h-100">
            <asp:Label ID="Benvenuto" runat="server" Text="Benvenuto, nome"></asp:Label> <br />
            <asp:Button ID="Logout" runat="server" CssClass="btn btn-warning btn-lg btn-block mb-5" Text="Logout" OnClick="Logout_Click" />
            </div>
        </div>
    </form>
</body>
</html>
