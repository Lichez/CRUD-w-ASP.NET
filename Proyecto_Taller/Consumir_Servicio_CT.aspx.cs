using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Consumir_Servicio_CT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.MiServicioSoapClient WebService = new ServiceReference1.MiServicioSoapClient();
            DataSet ds = WebService.Consulta_Tabla();
            GridView_Datos.DataSource = ds.Tables[0];
            GridView_Datos.DataBind();

        }

        protected void GridView_Datos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gv = (GridView)sender;
            gv.PageIndex = e.NewPageIndex;
            GridView_Datos.DataBind();
        }

    }
}