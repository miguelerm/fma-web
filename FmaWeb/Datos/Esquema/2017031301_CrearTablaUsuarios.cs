using FluentMigrator;

namespace Fma.Web.Datos.Esquema
{
    [Migration(2017031301)]
    public class CrearTablaUsuarios : Migration
    {
        public override void Up()
        {
            Create.Table("Usuarios")
                .WithColumn("Id").AsString(100).PrimaryKey()
                .WithColumn("Clave").AsString(500).NotNullable()
                .WithColumn("Nombre").AsString(500).NotNullable()
                .WithColumn("EsAdministrador").AsBoolean().NotNullable().WithDefaultValue(false);

            Insert.IntoTable("Usuarios").Row(new { Id = "admin", Clave = "admin", Nombre = "Administrador", EsAdministrador = true });
        }

        public override void Down()
        {
            Delete.Table("Usuarios");
        }
    }
}