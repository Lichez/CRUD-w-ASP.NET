<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consumir_Servicio_CM.aspx.cs" Inherits="Proyecto_Taller.Consumir_Servicio_CM" %>
<link rel="stylesheet" href="Styles.css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border: 2px solid rgb(173, 204, 204);
            box-shadow: 0 0 27px rgb(204, 204, 204) inset;
            transition: 500ms all ease;
            padding: 3px 3px 3px 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtMarca_Servicio" runat="server" CssClass="auto-style1" placeholder="Ingrese la Marca" Height="40px"></asp:TextBox>
        <asp:Button ID="btnBuscar_Servicio" runat="server" Text="BUSCAR" OnClick="btnBuscar_Servicio_Click" CssClass="button button1"/>
        <br />
        <br />
        <div>
            <asp:GridView ID="GridView_Marca" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnPageIndexChanging="GridView_Marca_PageIndexChanging">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
