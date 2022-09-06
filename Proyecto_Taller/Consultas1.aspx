<%@ Page Title="CONSULTAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultas1.aspx.cs" Inherits="Proyecto_Taller.Consultas1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Styles.css" />

    <script src="Scripts/swalert.js"></script>

    <script type ="text/javascript">
        function alert_warn() {
            Swal.fire({
                title: 'Verifique los campos',
                text: 'Por favor ingrese un ID para realizar la consulta.',
                icon: 'warning',
                showConfirmButton: false,
                timer: 2500,
                timerProgressBar: true
            })
        }

        function alert_noreg() {
            Swal.fire({
                title: 'Verifique los datos',
                text: 'No se ha encontrado un registro con tal ID, por favor verifique.',
                icon: 'error',
                showConfirmButton: false,
                timer: 2500,
                timerProgressBar: true
            })
        }
    </script>
    <br/>
    <h2 style="font-family: 'Montserrat Light'">CONSULTAS</h2>
    <h3 style="height: 28px; font-family: 'Montserrat ExtraBold'; font-style: italic; color: #333333;">Ingrese los filtros para realizar una conulta</h3>
    <table class="nav-justified" style="font-family: 'Montserrat Light'; font-size: 14px">
        <tr>
            <td style="height: 31px; width: 330px;">ID:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtId_Con" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">NOMBRE DEL CLIENTE:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtNombre_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">MARCA DEL DISPOSITIVO:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtMar_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">MODELO DEL DISPOSITIVO:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtMod_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">SERVICIO:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtSer_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">FECHA DE ENTRADA:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtEntrada_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">FECHA DE SALIDA APROX:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtSalida_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">ESTATUS:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtEstatus_Con" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;"></td>
            <td style="height: 31px">
                </td>
        </tr>
        <tr>
            <td style="height: 57px; width: 330px;">
                <asp:Button ID="Button3" runat="server" Text="CONSULTAR" CssClass="button button1" style="font-family: 'Montserrat Black'" OnClick="Button3_Click" Height="45px" Width="140px" />
            </td>
            <td style="height: 57px">
                <asp:Button ID="btnCancelar_Con" runat="server" Text="CANCELAR" CssClass="button button3" style="font-family: 'Montserrat Black'" OnClick="btnCancelar_Con_Click" Height="45px" Width="140px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
