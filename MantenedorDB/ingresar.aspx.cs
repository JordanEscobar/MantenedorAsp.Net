using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;


namespace MantenedorDB
{
    public partial class ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            try
            {
                UsuarioBLL u = new UsuarioBLL();
                u.nombre = txtnombre.Text;
                u.sexo = ddlsexo.SelectedValue;
                u.edad = int.Parse(txtedad.Text);
                if (u.Ingresar())
                {
                    Response.Write("<script>alert('Usuario Agregado');" +
                        "window.location='index.aspx';</script>");
                }
            }
            catch (Exception)
            {

                Response.Write("<script>alert('ERROR')</script>");
            }

        }
    }
}