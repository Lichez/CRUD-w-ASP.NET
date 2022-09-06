using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Modificacion1 : System.Web.UI.Page
    {

        String connection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Mod_Click(object sender, EventArgs e)
        {
            txtId_Mod.Text = "";
        }

        protected void btnCancelar2_Mod_Click(object sender, EventArgs e)
        {
            txtId_Mod.Text = "";
            txtNombre_Mod.Text = "";
            txtMar_Mod.Text = "";
            txtMod_Mod.Text = "";
            ddlSer_Mod.SelectedIndex = 0;
            txtEntrada_Mod.Text = "";
            txtSalida_Mod.Text = "";
            ddlEstatus_Mod.SelectedIndex = 0;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtNombre_Mod.Text.Equals(""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                txtNombre_Mod.Focus();
            }
            else
            {
                if (txtMar_Mod.Text.Equals(""))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                    txtMar_Mod.Focus();
                }
                else
                {
                    if (txtMod_Mod.Text.Equals(""))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                        txtMod_Mod.Focus();
                    }
                    else
                    {
                        if (ddlSer_Mod.SelectedIndex.Equals(0))
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                            ddlSer_Mod.Focus();
                        }
                        else
                        {
                            if (txtEntrada_Mod.Text.Equals(""))
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                                txtEntrada_Mod.Focus();
                            }
                            else
                            {
                                if (txtSalida_Mod.Text.Equals(""))
                                {
                                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                                    txtSalida_Mod.Focus();
                                }
                                else
                                {
                                    if (ddlEstatus_Mod.SelectedIndex.Equals(0))
                                    {
                                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn2();", true);
                                        ddlEstatus_Mod.Focus();
                                    }
                                    else
                                    {
                                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_ok();", true);
                                        SqlConnection sqlc1 = new SqlConnection(connection);
                                        SqlCommand cmd = sqlc1.CreateCommand();
                                        cmd.CommandType = System.Data.CommandType.Text;
                                        cmd.CommandText = "UPDATE Registros set Nombre = '" + txtNombre_Mod.Text + "', Marca = '" + txtMar_Mod.Text + "', Modelo = '" + txtMod_Mod.Text + "', Servicio = '" + ddlSer_Mod.Text + "', Fecha_In = '" + txtEntrada_Mod.Text + "', Fecha_Out = '" + txtSalida_Mod.Text + "', Estatus = '" + ddlEstatus_Mod.Text + "' WHERE Id = " + txtId_Mod.Text + "";
                                        sqlc1.Open();
                                        cmd.ExecuteNonQuery();
                                        sqlc1.Close();
                                        txtId_Mod.Text = "";
                                        txtNombre_Mod.Text = "";
                                        txtMar_Mod.Text = "";
                                        txtMod_Mod.Text = "";
                                        ddlSer_Mod.SelectedIndex = 0;
                                        txtEntrada_Mod.Text = "";
                                        txtSalida_Mod.Text = "";
                                        ddlEstatus_Mod.SelectedIndex = 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void btnBuscar_Mod_Click(object sender, EventArgs e)
        {
            if (txtId_Mod.Text.Equals(""))
            {
                txtId_Mod.Focus();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
            }
            else
            {
                SqlConnection cnx = new SqlConnection(connection);
                cnx.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Registros WHERE Id = " + txtId_Mod.Text + "", cnx);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtNombre_Mod.Text = "" + dr["Nombre"];
                    txtMar_Mod.Text = "" + dr["Marca"];
                    txtMod_Mod.Text = "" + dr["Modelo"];
                    ddlSer_Mod.Text = "" + dr["Servicio"];
                    txtEntrada_Mod.Text = "" + dr["Fecha_In"];
                    txtSalida_Mod.Text = "" + dr["Fecha_Out"];
                    ddlEstatus_Mod.Text = "" + dr["Estatus"];
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_noreg();", true);
                }
                cnx.Close();
            }
        }
    }
}
