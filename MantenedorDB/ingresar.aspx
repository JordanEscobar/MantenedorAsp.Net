﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresar.aspx.cs" Inherits="MantenedorDB.ingresar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Ingresar Usuario</h1>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <a href="index.aspx">volver</a></asp:Panel>
            <table style="width: 100%;">
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
                        <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnregistrar" runat="server" Text="Registrar" OnClick="btnregistrar_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
