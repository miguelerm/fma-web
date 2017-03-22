using FluentMigrator.Runner;
using FluentMigrator.Runner.Announcers;
using FluentMigrator.Runner.Generators.SQLite;
using FluentMigrator.Runner.Initialization;
using FluentMigrator.Runner.Processors;
using FluentMigrator.Runner.Processors.SQLite;
using Fma.Web.Datos;
using Fma.Web.Herramientas;
using System.Diagnostics;
using System.Linq;

namespace Fma.Web
{
    public static class EsquemaConfig
    {
        public static void Configurar()
        {
            using (var conexion = Conexion.Abrir())
            {
                var runner = new MigrationRunner(
                    typeof(EsquemaConfig).Assembly,
                    new RunnerContext(new ConsoleAnnouncer()),
                    new SQLiteProcessor(
                        conexion,
                        new SQLiteGenerator(),
                        new NullAnnouncer(),
                        new ProcessorOptions(),
                        new SQLiteDbFactory()
                    )
                );

                runner.MigrateUp();

                if (runner.CaughtExceptions != null)
                {
                    foreach (var exception in runner.CaughtExceptions)
                    {
                        Trace.TraceError("Migration Error: {0}", exception);
                    }
                }

                using (var db = new BaseDeDatos(conexion))
                {
                    var admin = db.Usuarios.FirstOrDefault(x => x.Id == "admin" && x.Clave == "admin");
                    if (admin == null) return;

                    admin.Clave = Encriptador.CifrarClave(admin.Id, admin.Clave);
                    db.SaveChanges();
                }
            }

        }
    }
}