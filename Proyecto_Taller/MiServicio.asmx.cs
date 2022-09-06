using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Proyecto_Taller
{
    /// <summary>
    /// Descripción breve de MiServicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class MiServicio : System.Web.Services.WebService
    {
        string con = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\uliss\\source\\repos\\Proyecto_Taller\\Proyecto_Taller\\App_Data\\BD_Taller.mdf;Integrated Security=True";

        [WebMethod]
        public DataSet Consulta_Tabla()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = con;
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Registros", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        [WebMethod]
        public DataSet Consulta_Id(int id)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = con;
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Registros WHERE Id = " + id + "", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        [WebMethod]
        public DataSet Consulta_Marca(string marca)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = con;
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Registros WHERE Marca = '" + marca + "'",conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}
