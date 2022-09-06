<%@ Page Title="REPORTES" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Proyecto_Taller.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Styles.css" />
    <br />
    <br />
    <h2 style="font-family: 'Montserrat Light'">REPORTES</h2>
    <h3 style="height: 28px; font-family: 'Montserrat ExtraBold'; font-style: italic; color: #333333;">Registros guardados en la base de datos.</h3>
    <br />
    <div class="jumbotron" style="width: 1065px" >

        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="registrosData" Font-Names="Montserrat" Font-Size="14px" HorizontalAlign="Center" Width="865px" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="gv_data_PageIndexChanging">
            <AlternatingRowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="Servicio" HeaderText="Servicio" SortExpression="Servicio" />
                <asp:BoundField DataField="Fecha_In" HeaderText="Fecha Entrada" SortExpression="Fecha_In" />
                <asp:BoundField DataField="Fecha_Out" HeaderText="Fecha Salida" SortExpression="Fecha_Out" />
                <asp:BoundField DataField="Estatus" HeaderText="Estatus" SortExpression="Estatus" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" />
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <FooterStyle HorizontalAlign="Center" />
            <HeaderStyle BorderStyle="None" Font-Names="Montserrat ExtraBold" Font-Size="15px" HorizontalAlign="Center" VerticalAlign="Middle" CssClass="Center" Wrap="True"/>
            <RowStyle BorderStyle="None" Font-Names="Montserrat" Font-Size="14px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle HorizontalAlign="Center" />
            <SortedAscendingCellStyle HorizontalAlign="Center" />
            <SortedAscendingHeaderStyle HorizontalAlign="Center" />
            <SortedDescendingCellStyle HorizontalAlign="Center" />
            <SortedDescendingHeaderStyle HorizontalAlign="Center" />
        </asp:GridView>

        <asp:SqlDataSource ID="registrosData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registros]"></asp:SqlDataSource>

    </div>
</asp:Content>
