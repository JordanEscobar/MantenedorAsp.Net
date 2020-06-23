<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MantenedorDB.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<title>Mantenedor Asp.net</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Mantenedor Personas</h1>
            <asp:Panel ID="Panel1" runat="server">
                <div class="btn-group" role="group" aria-label="Basic example">
                    <a class="btn btn-secondary" href="ingresar.aspx">Ingresar</a>
                    <a class="btn btn-secondary" href="editar.aspx">Modificar</a>
                    <a class="btn btn-secondary" href="eliminar.aspx">Eliminar</a>
                </div>
            </asp:Panel>
            <br />
            <asp:GridView ID="grilla" CssClass="table table-striped table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="SEXO" HeaderText="SEXO" SortExpression="SEXO" />
                    <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mantenedorDBConnectionString %>" SelectCommand="SELECT id ID, nombre NOMBRE,sexo SEXO,edad EDAD  FROM usuario"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
