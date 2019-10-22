using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Requerimiento
{
    public partial class Segundo : System.Web.UI.Page
    {
        private static string identificacion;
        private static string nombre;
        private static string apellido;
        private static string direccion;
        private static string telefono;
        private static string correo;
        private static string fecha;
        protected void Page_Load(object sender, EventArgs e)
        {

                identificacion = (string)Session["documento"];
                lblDocumento.Text = identificacion;
                nombre = (string)Session["nombre"];
                lblNombre.Text = nombre;
                apellido = (string)Session["apellido"];
                lblApellido.Text = apellido;
                direccion = (string)Session["direccion"];
                lblDireccion.Text = direccion;
                telefono = (string)Session["telefono"];
                lblTelefono.Text = telefono;
                correo = (string)Session["correo"];
                lblCorreo.Text = correo;
                fecha = (string)Session["fecha"];
                lblFecha.Text = fecha;
                lblPersona.Text = (string)Session["tipo"];
                lblCiudad.Text = (string)Session["lista"];
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {

        }
    }
}