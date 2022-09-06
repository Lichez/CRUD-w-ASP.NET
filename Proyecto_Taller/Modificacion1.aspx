<%@ Page Title="MODIFICACIONES" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modificacion1.aspx.cs" Inherits="Proyecto_Taller.Modificacion1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
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
                title: '<span style="color: #000000; font-size: 25px" > ¡Registro Modificado! </span>'
                })
        }

        function alert_warn() {
            Swal.fire({
                title: 'Verifique los campos',
                html: '<span style="font-size: 15px">Por favor verifique que el campo <b>ID</b> no esté vacío.</span>',
                icon: 'error',
                showConfirmButton: false,
                timer: 2500,
                timerProgressBar: true
            })
        }

        function alert_warn2() {
            Swal.fire({
                title: 'Verifique los campos',
                text: 'Por favor verifique que ninguno de los campos esté vacío.',
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
<h2 style="font-family: 'Montserrat Light'"><%: Title %>MODIFICACIÓN.</h2>
<h3 style="height: 28px; font-family: 'Montserrat ExtraBold'; font-style: italic; color: #333333;">Ingrese el ID a modificar</h3>
<table class="nav-justified">
    <tr>
        <td style="font-family: 'Montserrat Light'; height: 31px; width: 153px; text-align: center;">ID:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtId_Mod" runat="server" style="font-family: 'Montserrat Light'; font-size: 14px; margin-left: 0;" CssClass="TextBoxSearch"></asp:TextBox>
        </td>
    </tr>
    <tr style="font-family: 'Montserrat Light'; font-size: 12px">
        <td style="height: 30px; width: 153px;"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 153px">
            <asp:Button ID="btnBuscar_Mod" runat="server" Text="BUSCAR" CssClass="button button1" style="font-family: 'Montserrat Black'" OnClick="btnBuscar_Mod_Click" Height="45px" Width="140px" />
        </td>
        <td>
            <asp:Button ID="btnCancelar_Mod" runat="server" Text="CANCELAR" CssClass="button button3" style="font-family: 'Montserrat Black'" OnClick="btnCancelar_Mod_Click" Height="45px" Width="140px" />
        </td>
    </tr>
</table>
<br />
<br />
<table class="nav-justified" style="font-family: 'Montserrat Light'; font-size: 14px">
    <tr>
        <td style="height: 31px; width: 330px;">NOMBRE DEL CLIENTE:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtNombre_Mod" runat="server" CssClass="TextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">MARCA DEL DISPOSITIVO:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtMar_Mod" runat="server" CssClass="TextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">MODELO DEL DISPOSITIVO:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtMod_Mod" runat="server" CssClass="TextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">SERVICIO:</td>
        <td style="height: 31px">
            <asp:DropDownList ID="ddlSer_Mod" runat="server" CssClass="DropDownList">
                <asp:ListItem Selected="True">Seleccione servicio</asp:ListItem>
                <asp:ListItem>Cambio de pantalla</asp:ListItem>
                <asp:ListItem>Centro de carga</asp:ListItem>
                <asp:ListItem>Desbloqueo</asp:ListItem>
                <asp:ListItem>Formateo</asp:ListItem>
                <asp:ListItem>Reparación de cámara</asp:ListItem>
                <asp:ListItem>Humedad</asp:ListItem>
                <asp:ListItem>Otros</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">FECHA DE ENTRADA:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtEntrada_Mod" runat="server" CssClass="TextBox"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtEntrada_Mod_CalendarExtender" runat="server" BehaviorID="TextBox5_CalendarExtender" TargetControlID="txtEntrada_Mod">
            </ajaxToolkit:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">FECHA DE SALIDA APROX:</td>
        <td style="height: 31px">
            <asp:TextBox ID="txtSalida_Mod" runat="server" CssClass="TextBox"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtSalida_Mod_CalendarExtender" runat="server" BehaviorID="TextBox6_CalendarExtender" TargetControlID="txtSalida_Mod">
            </ajaxToolkit:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;">ESTATUS:</td>
        <td style="height: 31px">
                <asp:DropDownList ID="ddlEstatus_Mod" runat="server" CssClass="DropDownList">
                    <asp:ListItem Selected="True">Seleccione estatus</asp:ListItem>
                    <asp:ListItem>Entregado</asp:ListItem>
                    <asp:ListItem>Cancelado</asp:ListItem>
                    <asp:ListItem>En reparacion</asp:ListItem>
                </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 330px;"></td>
        <td style="height: 31px"></td>
    </tr>
    <tr>
        <td style="height: 57px; width: 330px;">
            <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" CssClass="button button1" style="font-family: 'Montserrat Black'" OnClick="btnModificar_Click" Height="45px" Width="140px" />
        </td>
        <td style="height: 57px">
            <asp:Button ID="btnCancelar2_Mod" runat="server" Text="CANCELAR" CssClass="button button3" style="font-family: 'Montserrat Black'" OnClick="btnCancelar2_Mod_Click" Height="45px" Width="140px" />
        </td>
    </tr>
</table>
</asp:Content>
