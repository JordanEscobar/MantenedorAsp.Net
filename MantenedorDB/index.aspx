<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MantenedorDB.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenedor Asp.net</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Mantenedor Personas</h1>
            <asp:Panel ID="Panel1" runat="server">
                <a href="ingresar.aspx">Ingresar</a> | <a href="editar.aspx">Modificar</a> | <a href="eliminar.aspx">Eliminar</a> | <a href="index.aspx">Listar</a></asp:Panel>
            <br />
            <asp:GridView ID="grilla" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
