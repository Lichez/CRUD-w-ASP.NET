using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Reportes : System.Web.UI.Page
    {
        String connection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(connection))
            {
                DataTable dt = new DataTable();
                string query = "SELECT * FROM Registros";
                SqlCommand cmd = new SqlCommand(query, cnx);
                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                adap.Fill(dt);
            }
        }

        protected void gv_data_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gv = (GridView)sender;
            gv.PageIndex = e.NewPageIndex;
            gv_data.DataBind();
        }
    }
}