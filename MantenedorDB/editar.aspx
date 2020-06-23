<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar.aspx.cs" Inherits="MantenedorDB.editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>

    <title>Modificar</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Modificar Usuario</h1>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <a class="btn btn-secondary" href="index.aspx">volver</a></asp:Panel>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Seleccionar</td>
                    <td>
                         <asp:DropDownList ID="ddlnombres" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mantenedorDBConnectionString %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
                         <asp:Button ID="btnseleccion" runat="server" Text="Seleccionar" CssClass="btn btn-primary" OnClick="btnseleccion_Click" />
                        <asp:Label ID="lblmostrar" runat="server" Text=""></asp:Label>
                         </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Nombre</td>
                    <td>
                        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Sexo</td>
                    <td>
                        <asp:DropDownList ID="ddlsexo" runat="server" Width="128px">
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Edad</td>
                    <td>
                        <asp:TextBox ID="txtedad" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btneditar" runat="server" Text="Modificar" CssClass="btn btn-success" OnClick="btneditar_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
