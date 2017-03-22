using Fma.Web.Datos;
using Fma.Web.Herramientas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fma.Web.Servicios
{
    public class UsuarioServicio 
    {
        public bool Autenticar(string usuario, string clave)
        {
            var id = usuario.ToLower();
            using (var conexion = Conexion.Abrir())
            {
                var db = new BaseDeDatos(conexion);
                var usr = db.Usuarios.FirstOrDefault(x => x.Id.ToLower() == id);
                if (usr == null) return false;
                return usr.Clave == Encriptador.CifrarClave(id, clave);
            }
        }
    }
}