using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace MantenedorDB
{
    public partial class eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnseleccion_Click(object sender, EventArgs e)
        {
            UsuarioBLL usuario = new UsuarioBLL();
            usuario.id =int.Parse(ddlseleccionar.SelectedValue);
            if (usuario.Buscar())
            {
                lblnombre.Text = usuario.nombre + " Edad: "+ usuario.edad + " Sexo: "+ usuario.sexo;
            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            try
            {
                UsuarioBLL usuario = new UsuarioBLL();
                usuario.id = int.Parse(ddlseleccionar.SelectedValue);
                if (usuario.Eliminar())
                {
                    Response.Write("<script>alert('Se a eliminado correctamente');" +
                        "window.location='index.aspx';</script>");
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}