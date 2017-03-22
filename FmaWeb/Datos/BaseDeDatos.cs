using System.Data.Common;
using System.Data.Entity;

namespace Fma.Web.Datos
{
    public class BaseDeDatos: DbContext
    {
        static BaseDeDatos()
        {
            Database.SetInitializer<BaseDeDatos>(null);
        }

        public BaseDeDatos(DbConnection conexion) : base(conexion, false)
        {

        }

        public DbSet<Usuario> Usuarios { get; set; }
    }
}