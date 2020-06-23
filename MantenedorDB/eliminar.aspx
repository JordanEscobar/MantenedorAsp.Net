<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminar.aspx.cs" Inherits="MantenedorDB.eliminar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>

    <title>Eliminar usuario</title>
    <style type="text/css">
        .auto-style1 {
            width: 83px;
        }
        .auto-style2 {
            width: 108px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Eliminar Usuario</h1>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <a class="btn btn-secondary" href="index.aspx">volver</a></asp:Panel>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Seleccionar</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlseleccionar" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mantenedorDBConnectionString %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="btnseleccion" CssClass="btn btn-primary" runat="server" Text="Seleccionar" OnClick="btnseleccion_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblnombre" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btneliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btneliminar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
