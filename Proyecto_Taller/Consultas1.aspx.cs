using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Consultas1 : System.Web.UI.Page
    {
        String connection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Con_Click(object sender, EventArgs e)
        {
            txtId_Con.Text = "";
            txtNombre_Con.Text = "";
            txtSer_Con.Text = "";
            txtEntrada_Con.Text = "";
            txtSalida_Con.Text = "";
            txtMar_Con.Text = "";
            txtMod_Con.Text = "";
            txtEstatus_Con.Text = "";
            txtId_Con.Focus();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtId_Con.Text.Equals(""))
            {
                txtId_Con.Focus();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
            }
            else
            {
                SqlConnection cnx = new SqlConnection(connection);
                cnx.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Registros WHERE Id = " + txtId_Con.Text + "", cnx);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtId_Con.Text = "" + dr["Id"];
                    txtNombre_Con.Text = "" + dr["Nombre"];
                    txtMar_Con.Text = "" + dr["Marca"];
                    txtMod_Con.Text = "" + dr["Modelo"];
                    txtSer_Con.Text = "" + dr["Servicio"];
                    txtEntrada_Con.Text = "" + dr["Fecha_In"];
                    txtSalida_Con.Text = "" + dr["Fecha_Out"];
                    txtEstatus_Con.Text = "" + dr["Estatus"];
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