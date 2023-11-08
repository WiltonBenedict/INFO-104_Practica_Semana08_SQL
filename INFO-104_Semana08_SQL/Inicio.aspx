<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="INFO_104_Semana08_SQL.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/menucss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a class="active" href="#Inicio.aspx">Inicio</a></li>
                <li><a href="plantas.aspx">Plantas</a></li>
                <li><a href="#contact">Contacto</a></li>
                <li><a href="#about">Ayuda</a></li>
            </ul>
        </div>
        <div class="centrado">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/Vector1.jpg" />
        </div>
    </form>
</body>
</html>
