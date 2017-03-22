using System.Security.Cryptography;
using System.Text;

namespace Fma.Web.Herramientas
{
    public static class Encriptador
    {
        public static string CifrarClave(string usuario, string clave)
        {
            byte[] bytes = Encoding.ASCII.GetBytes($"{usuario}|{clave}");
            bytes = new SHA256Managed().ComputeHash(bytes);
            var hash = Encoding.ASCII.GetString(bytes);
            return clave;
        }
    }
}