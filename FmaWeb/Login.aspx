<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FmaWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <title>FMA - Ingresar</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Bienvenido FMA - Web</h1>
        <p>Escriba su usuario y contrase&ntilde;a para ingresar a sistema.</p>

        <asp:Login ID="LoginControl" runat="server"></asp:Login>
    </div>
    </form>
</body>
</html>
