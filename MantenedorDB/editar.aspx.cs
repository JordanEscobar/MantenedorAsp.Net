using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MantenedorDB
{
    public partial class editar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnseleccion_Click(object sender, EventArgs e)
        {
            UsuarioBLL u = new UsuarioBLL();
            u.id = int.Parse(ddlnombres.SelectedValue);
            if (u.Buscar())
            {
                txtnombre.Text = u.nombre;
                txtedad.Text = u.edad.ToString();
                ddlsexo.SelectedValue = u.sexo;
            }
        }

        protected void btneditar_Click(object sender, EventArgs e)
        {
            UsuarioBLL u = new UsuarioBLL();
            u.id = int.Parse(ddlnombres.SelectedValue);
            u.nombre = txtnombre.Text;
            u.edad = int.Parse(txtedad.Text);
            u.sexo = ddlsexo.SelectedValue;
            if (u.Editar())
            {
                Response.Write("<script>alert('usuario modificado')</script>");
            }
        }
    }
}