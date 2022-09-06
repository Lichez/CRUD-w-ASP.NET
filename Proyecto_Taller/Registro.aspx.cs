using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class About : Page
    {
        String connection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId_Reg.Text = id();
            txtId_Reg.Enabled = false;
        }

        string id()
        {
            var numeros = "0123456789";
            var cararr = new char[5];
            var aleatorio = new Random();

            for (int i = 0; i < cararr.Length; i++)
            {
                cararr[i] = numeros[aleatorio.Next(numeros.Length)];
            }

            var idresult = new String(cararr);
            String ids = "" + idresult;
            return ids;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtNombre_Reg.Text.Equals(""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                txtNombre_Reg.Focus();
            }
            else
            {
                if (txtMar_Reg.Text.Equals(""))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                    txtMar_Reg.Focus();
                }
                else
                {
                    if (txtMod_Reg.Text.Equals(""))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                        txtMod_Reg.Focus();
                    }
                    else
                    {
                        if (ddlSer_Reg.SelectedIndex.Equals(0))
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                            ddlSer_Reg.Focus();
                        }
                        else
                        {
                            if (txtEntrada_Reg.Text.Equals(""))
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                                txtEntrada_Reg.Focus();
                            }
                            else
                            {
                                if (txtSalida_Reg.Text.Equals(""))
                                {
                                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                                    txtSalida_Reg.Focus();
                                }
                                else
                                {
                                    if (ddlEstatus_Reg.SelectedIndex.Equals(0))
                                    {
                                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
                                        ddlEstatus_Reg.Focus();
                                    }
                                    else
                                    {
                                        System.Data.SqlClient.SqlConnection cnx = new System.Data.SqlClient.SqlConnection(connection);
                                        System.Data.SqlClient.SqlCommand cmd = cnx.CreateCommand();
                                        cmd.CommandType = System.Data.CommandType.Text;
                                        cmd.CommandText = "INSERT INTO Registros (Id, Nombre, Marca, Modelo, Servicio, Fecha_In, Fecha_Out, Estatus) VALUES (" + txtId_Reg.Text + ", '" + txtNombre_Reg.Text + "', '" + txtMar_Reg.Text + "', '" + txtMod_Reg.Text + "', '" + ddlSer_Reg.Text + "', '" + txtEntrada_Reg.Text + "', '" + txtSalida_Reg.Text + "', '" + ddlEstatus_Reg.Text + "')";
                                        cnx.Open();
                                        cmd.ExecuteNonQuery();
                                        cnx.Close();

                                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_ok();", true);
                                        txtNombre_Reg.Text = "";
                                        txtMar_Reg.Text = "";
                                        txtMod_Reg.Text = "";
                                        ddlSer_Reg.SelectedIndex = 0;
                                        txtEntrada_Reg.Text = "";
                                        txtSalida_Reg.Text = "";
                                        ddlEstatus_Reg.SelectedIndex = 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void btnCancelar_Reg_Click(object sender, EventArgs e)
        {
            txtId_Reg.Text = id();
            txtNombre_Reg.Text = "";
            txtMar_Reg.Text = "";
            txtMod_Reg.Text = "";
            ddlSer_Reg.SelectedIndex = 0;
            txtEntrada_Reg.Text = "";
            txtSalida_Reg.Text = "";
            ddlEstatus_Reg.SelectedIndex = 0;
            txtNombre_Reg.Focus();
        }
    }
}