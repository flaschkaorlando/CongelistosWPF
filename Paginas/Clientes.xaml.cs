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
            textNombre.IsEnabled = true;
            textNombre.Background = Brushes.White;

            textApellido.IsEnabled = true;
            textApellido.Background = Brushes.White;

            textDni.IsEnabled = true;
            textDni.Background = Brushes.White;

            textDireccion.IsEnabled = true;
            textDireccion.Background = Brushes.White;

            textTelefono.IsEnabled = true;
            textTelefono.Background = Brushes.White;

        }
    }
}
