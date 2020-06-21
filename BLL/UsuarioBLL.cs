using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DAL;

namespace BLL
{
    class UsuarioBLL
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string sexo { get; set; }
        public Nullable<int> edad { get; set; }
    }
}
