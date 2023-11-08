using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INFO_104_Semana08_SQL
{
    public partial class Plantas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tagregar_Click(object sender, EventArgs e)
        {
            SQLPLANTAS.Insert(); //Ingresa los valores a SQL
            tNombre.Text = string.Empty;
            tCodigo.Text = string.Empty;
            tPrecio.Text = string.Empty;
            tTipo.Text = string.Empty;  
        }

        protected void tborrar_Click(object sender, EventArgs e)
        {
            SQLPLANTAS.Delete();

        }
    }
}