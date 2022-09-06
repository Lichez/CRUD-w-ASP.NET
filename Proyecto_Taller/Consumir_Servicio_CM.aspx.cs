using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Taller
{
    public partial class Consumir_Servicio_CM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Servicio_Click(object sender, EventArgs e)
        {
            ServiceReference1.MiServicioSoapClient WebService = new ServiceReference1.MiServicioSoapClient();
            string marca = txtMarca_Servicio.Text;
            DataSet ds = WebService.Consulta_Marca(marca);
            GridView_Marca.DataSource = ds.Tables[0];
            GridView_Marca.DataBind();
        }

        protected void GridView_Marca_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gv = (GridView)sender;
            gv.PageIndex = e.NewPageIndex;
            GridView_Marca.DataBind();
        }
    }
}