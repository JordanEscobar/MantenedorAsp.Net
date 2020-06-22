using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DAL;

namespace BLL
{
    public class UsuarioBLL
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string sexo { get; set; }
        public Nullable<int> edad { get; set; }


        public bool Ingresar()
        {
            mantenedorDBEntities modelo = new mantenedorDBEntities();
            usuario u = modelo.usuario.FirstOrDefault(us=>us.id==this.id);
            if (u == null)
            {
                usuario user = new usuario();
                user.nombre = this.nombre;
                user.sexo = this.sexo;
                user.edad = this.edad;
                modelo.usuario.Add(user);
                modelo.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
