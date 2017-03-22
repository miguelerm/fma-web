using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fma.Web.Datos
{
    [Table("Usuarios")]
    public class Usuario
    {
        [Key]
        [StringLength(100)]
        public string Id { get; set; }

        [Required]
        [StringLength(500)]
        public string Clave { get; set; }

        [Required]
        [StringLength(500)]
        public string Nombre { get; set; }

        public bool EsAdministrador { get; set; }
    }
}