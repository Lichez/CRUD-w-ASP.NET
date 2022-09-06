using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Proyecto_Taller
{
    public partial class Consumir_Servicio_CID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void btnBuscar_Servicio_Click(object sender, EventArgs e)
        {
            ServiceReference1.MiServicioSoapClient WebService = new ServiceReference1.MiServicioSoapClient();
            int id = int.Parse(txtId_Servicio.Text);
            DataSet ds = WebService.Consulta_Id(id);
            GridView_ID.DataSource = ds.Tables[0];
            GridView_ID.DataBind();
        }
    }
}