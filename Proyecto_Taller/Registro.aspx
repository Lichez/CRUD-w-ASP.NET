<%@ Page Title="REGISTRO" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_Taller.About" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
                title: '<span style="color: #000000; font-size: 25px" > ¡Registro Guardado! </span>'
                })
        }

        function alert_warn() {
            Swal.fire({
                title: 'Verifique los campos',
                text: 'Por favor verifique que ningún campo esté vacío.',
                icon: 'warning',
                showConfirmButton: false,
                timer: 2500,
                timerProgressBar: true
            })
        }

        function alert_warnfecha() {
            Swal.fire({
                title: 'Verifique las fechas',
                text: 'Por favor verifique que la fecha de salida no sea menor a la de entrada.',
                icon: 'warning',
                showConfirmButton: false,
                timer: 2500,
                timerProgressBar: true
            })
        }
    </script>
    <br />
    <h2 style="font-family: 'Montserrat Light'"><%: Title %></h2>
    <h3 style="height: 28px; font-family: 'Montserrat ExtraBold'; font-style: italic; color: #333333;">Añadir nueva reparación</h3>
    <table class="nav-justified" style="font-family: 'Montserrat Light'; font-size: 14px">
        <tr>
            <td style="height: 31px; width: 330px;">ID:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtId_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">NOMBRE DEL CLIENTE:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtNombre_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">MARCA DEL DISPOSITIVO:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtMar_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">MODELO DEL DISPOSITIVO:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtMod_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">SERVICIO:</td>
            <td style="height: 31px">
                <asp:DropDownList ID="ddlSer_Reg" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="DropDownList">
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
                <asp:TextBox ID="txtEntrada_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtEntrada_Reg_CalendarExtender" runat="server" BehaviorID="TextBox5_CalendarExtender" TargetControlID="txtEntrada_Reg" Format="dd/MM/yyyy">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">FECHA DE SALIDA APROX:</td>
            <td style="height: 31px">
                <asp:TextBox ID="txtSalida_Reg" runat="server" CssClass="TextBox"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtSalida_Reg_CalendarExtender" runat="server" BehaviorID="TextBox6_CalendarExtender" TargetControlID="txtSalida_Reg" Format="dd/MM/yyyy">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;">ESTATUS:</td>
            <td style="height: 31px">
                <asp:DropDownList ID="ddlEstatus_Reg" runat="server" CssClass="DropDownList">
                    <asp:ListItem Selected="True">Seleccione estatus</asp:ListItem>
                    <asp:ListItem>Entregado</asp:ListItem>
                    <asp:ListItem>Cancelado</asp:ListItem>
                    <asp:ListItem>En reparacion</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 330px;"></td>
            <td style="height: 31px">
                </td>
        </tr>
        <tr>
            <td style="height: 57px; width: 330px;">
                <asp:Button ID="btnGuardar_Reg" runat="server" Text="GUARDAR" CssClass="button button1" style="font-family: 'Montserrat Black'" OnClick="Button3_Click" Height="45px" Width="140px" />
            </td>
            <td style="height: 57px">
                <asp:Button ID="btnCancelar_Reg" runat="server" Text="CANCELAR" CssClass="tbuton button3" style="font-family: 'Montserrat Black'; margin-top: 0;" OnClick="btnCancelar_Reg_Click" Height="45px" Width="140px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
