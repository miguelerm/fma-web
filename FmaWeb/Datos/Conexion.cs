using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace Fma.Web.Datos
{
    public static class Conexion
    {
        private static readonly DbProviderFactory proveedor;
        private static readonly string connectionString;
        static Conexion()
        {
            var connectionStringSettings = ConfigurationManager.ConnectionStrings["Default"];
            var nombreProveedor = connectionStringSettings.ProviderName;
            proveedor = DbProviderFactories.GetFactory(nombreProveedor);
            connectionString = connectionStringSettings.ConnectionString;
        }
        

        public static DbConnection Abrir()
        {
            var conexion = proveedor.CreateConnection();
            conexion.ConnectionString = connectionString;
            conexion.Open();
            return conexion;
        }
    }
}