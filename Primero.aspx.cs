using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Requerimiento
{
    public partial class Primero : System.Web.UI.Page
    {
        private static string identificacion;
        private static string nombre;
        private static string apellido;
        private static string direccion;
        private static string telefono;
        private static string correo;
        private static DateTime fecha;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                DataSet set = new DataSet();
                set.ReadXml(Server.MapPath("datos.xml"));
                listaUno.DataSource = set;
                listaUno.DataValueField = "id";
                listaUno.DataTextField = "nombreciudad";
                listaUno.DataBind();
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Session["documento"] = "sadadasdfsdf";


            Session["documento"] = txtDocumento.Text;
            Session["nombre"] = txtNombre.Text;
            Session["apellido"] = txtApellido.Text;
            Session["direccion"] = txtDireccion.Text;
            Session["telefono"] =txtTelefono.Text;
            Session["correo"] =txtCorreo.Text;
            Session["fecha"] = idCalendario.SelectedDate.ToString();
            if (rbNatural.Checked == true)
            {
                Session["tipo"] = "Persona Natural";
            }
            if(rbJuridica.Checked == true)
            {
                Session["tipo"] = "Persona Juridica";
            }
            Session["lista"] = listaUno.SelectedItem.ToString();
            Response.Redirect("Segundo.aspx");
        }

        protected void btnLimiar_Click(object sender, EventArgs e)
        {
            txtDocumento.Text = "";
            txtNombre.Text ="";
            txtApellido.Text ="";
            txtDireccion.Text ="";
            txtTelefono.Text ="";
            txtCorreo.Text ="";
        }

        protected void dropList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}