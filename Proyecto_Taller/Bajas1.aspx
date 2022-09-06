<%@ Page Title="BAJAS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bajas1.aspx.cs" Inherits="Proyecto_Taller.Bajas1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Styles.css" />
    <script src="Scripts/swalert.js"></script>

    <script type ="text/javascript">
        var toastMixin = Swal.mixin({
            toast: true,
            icon: 'success',
            title: 'General Title',
            animation: false,
            position: 'bottom-right',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            background: '#EBEBEB',
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });
        function alert_ok() {
            toastMixin.fire({
                animation: true,
                title: '<span style="color: #000000; font-size: 25px" > ¡Registro Dado de Baja! </span>'
                })
        }

        function alert_warn() {
            Swal.fire({
                title: 'Verifique los campos',
                text: 'Por favor verifique que el campo ID campo esté vacío.',
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

    <br />
    <h2 style="font-family: 'Montserrat Light'"><%: Title %>BAJAS</h2>
<h3 style="height: 28px; font-family: 'Montserrat ExtraBold'; font-style: italic; color: #333333;">Ingresa el ID a dar de baja</h3>
<table class="nav-justified" style="font-family: 'Montserrat Light'; font-size: 14px">
        <tr>
            <td style="height: 31px; width: 279px;">ID:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtId_Baj" runat="server" CssClass="TextBoxSearch"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">NOMBRE DEL CLIENTE:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtNombre_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">MARCA DEL DISPOSITIVO:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtMar_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">MODELO DEL DISPOSITIVO:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtMod_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">SERVICIO:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtSer_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">FECHA DE ENTRADA:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtEntrada_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">FECHA DE SALIDA APROX:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtSalida_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;">ESTATUS:</td>
            <td style="height: 31px; width: 227px;">
                <asp:TextBox ID="txtEstatus_Baj" runat="server" Enabled="False" CssClass="TextBox"></asp:TextBox>
            </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 279px;"></td>
            <td style="height: 31px; width: 227px;">
                </td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 57px; width: 279px; text-align: right;">
                <asp:Button ID="btnConsultar" runat="server" Text="CONSULTAR" CssClass="button button1" style="font-family: 'Montserrat Black'" OnClick="btnConsultar_Click" Height="45px" Width="140px" />
            </td>
            <td style="height: 57px; width: 227px; text-align: center;">
                <asp:Button ID="btnBaja" runat="server" Text="ELIMINAR" CssClass="button button2" style="font-family: 'Montserrat Black'" OnClick="btnBaja_Click" Height="45px" Width="140px" />
            </td>
            <td style="height: 57px">
                <asp:Button ID="btnCancelar_Baj" runat="server" Text="CANCELAR" CssClass="button button3" style="font-family: 'Montserrat Black'" OnClick="btnCancelar_Baj_Click" Height="45px" Width="140px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 279px">&nbsp;</td>
            <td class="modal-sm" style="width: 227px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
