using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Congelistos.Paginas
{
    /// <summary>
    /// Lógica de interacción para Clientes.xaml
    /// </summary>
    public partial class Clientes : Page
    {
        public Clientes()
        {
            InitializeComponent();
        }

        private void botonNuevo_Click(object sender, RoutedEventArgs e)
        {
            txtNombre.IsEnabled = true;
            txtNombre.Background = Brushes.White;

            txtApellido.IsEnabled = true;
            txtApellido.Background = Brushes.White;

            txtDni.IsEnabled = true;
            txtDni.Background = Brushes.White;

            txtDireccion.IsEnabled = true;
            txtDireccion.Background = Brushes.White;

            txtTelefono.IsEnabled = true;
            txtTelefono.Background = Brushes.White;

        }

        private void botonGuardar_Click(object sender, RoutedEventArgs e)
        {
            if (!String.IsNullOrEmpty(txtNombre.Text.Trim())
                && !String.IsNullOrEmpty(txtApellido.Text.Trim())
                && !String.IsNullOrEmpty(txtTelefono.Text.Trim())
                && !String.IsNullOrEmpty(txtDireccion.Text.Trim()))
            {
                using (var cl = new CongelistosEntities())
                {
                    var clienteNuevo = new Cliente()
                    {
                        Nombre = txtNombre.Text,
                        Apellido = txtApellido.Text,
                        Telefono = txtTelefono.Text,
                        Direccion = txtDireccion.Text
                    };
                    cl.Cliente.Add(clienteNuevo);
                    cl.SaveChanges();
                }
            }
            else
            {
                MessageBox.Show("Debe completar todos los campos.", "Atención", 
                    MessageBoxButton.OKCancel, MessageBoxImage.Information, MessageBoxResult.OK);
            }
        }
    }
}
