using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Bajas1 : System.Web.UI.Page
    {
        String connection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Baj_Click(object sender, EventArgs e)
        {
            txtId_Baj.Text = "";
            txtNombre_Baj.Text = "";
            txtSer_Baj.Text = "";
            txtEntrada_Baj.Text = "";
            txtSalida_Baj.Text = "";
            txtMar_Baj.Text = "";
            txtMod_Baj.Text = "";
            txtEstatus_Baj.Text = "";
            txtId_Baj.Focus();

        }

        protected void btnBaja_Click(object sender, EventArgs e)
        {
            if (txtId_Baj.Text.Equals(""))
            {
                txtId_Baj.Focus();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
            }
            else
            {
                SqlConnection cnx = new SqlConnection(connection);
                cnx.Open();
                SqlCommand cmd = cnx.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "DELETE FROM Registros WHERE Id = " + txtId_Baj.Text + "";
                cmd.ExecuteNonQuery();
                cnx.Close();
            
                txtId_Baj.Text = "";
                txtNombre_Baj.Text = "";
                txtSer_Baj.Text = "";
                txtEntrada_Baj.Text = "";
                txtSalida_Baj.Text = "";
                txtMar_Baj.Text = "";
                txtMod_Baj.Text = "";
                txtEstatus_Baj.Text = "";
                txtId_Baj.Focus();

                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_ok();", true);
            }
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txtId_Baj.Text.Equals(""))
            {
                txtId_Baj.Focus();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_warn();", true);
            }
            else
            {
                SqlConnection cnx = new SqlConnection(connection);
                cnx.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Registros WHERE Id = " + txtId_Baj.Text + "", cnx);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtNombre_Baj.Text = "" + dr["Nombre"];
                    txtMar_Baj.Text = "" + dr["Marca"];
                    txtMod_Baj.Text = "" + dr["Modelo"];
                    txtSer_Baj.Text = "" + dr["Servicio"];
                    txtEntrada_Baj.Text = "" + dr["Fecha_In"];
                    txtSalida_Baj.Text = "" + dr["Fecha_Out"];
                    txtEstatus_Baj.Text = "" + dr["Estatus"];
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