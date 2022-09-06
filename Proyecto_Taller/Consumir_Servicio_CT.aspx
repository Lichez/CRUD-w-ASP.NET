<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consumir_Servicio_CT.aspx.cs" Inherits="Proyecto_Taller.Consumir_Servicio_CT" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Styles.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView_Datos" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="GridView_Datos_PageIndexChanging">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
