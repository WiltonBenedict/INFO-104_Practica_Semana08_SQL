<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantas.aspx.cs" Inherits="INFO_104_Semana08_SQL.Plantas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/menucss.css" rel="stylesheet" />
    <link href="css/botonescss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            text-align: left;
            width: 1100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <ul>
                <li><a class="active" href="Inicio.aspx">Inicio</a></li>
                <li><a href="plantas.aspx">Plantas</a></li>
                <li><a href="#contact">Contacto</a></li>
                <li><a href="#about">Ayuda</a></li>
            </ul>
        </div>

        <div>
            <!--GRID VIEW PARA SQL -->
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" CssClass="centrado" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CODIGO" DataSourceID="SQLPLANTAS" ForeColor="Black" GridLines="None" Height="302px" Width="475px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                    <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SQLPLANTAS" runat="server" ConnectionString="<%$ ConnectionStrings:BOTANICAConnectionString %>" DeleteCommand="DELETE PLANTAS WHERE CODIGO = @CODIGO" InsertCommand="INSERT INTO PLANTAS (NOMBRE,TIPO,PRECIO) VALUES (@NOMBRE,@TIPO,@PRECIO)" ProviderName="<%$ ConnectionStrings:BOTANICAConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [PLANTAS]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="tCodigo" Name="CODIGO" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tNombre" Name="NOMBRE" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tTipo" Name="TIPO" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tPrecio" Name="PRECIO" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Codigo:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tCodigo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tipo:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tTipo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Precio:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tPrecio" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

        <div>

        </div>

        <div>
            <asp:Button ID="tagregar" CssClass="button button1" runat="server" Text="Agregar" OnClick="tagregar_Click" />
            <asp:Button ID="tborrar" CssClass="button button2" runat="server" Text="Borrar" OnClick="tborrar_Click" />
            <asp:Button ID="tconsultar" CssClass="button button3" runat="server" Text="Consultar" />
        </div>
    </form>
</body>
</html>
