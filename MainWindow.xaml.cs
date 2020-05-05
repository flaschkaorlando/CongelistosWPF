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

namespace Congelistos
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public Uri vistaClientes = new Uri(@".\Paginas\Clientes.xaml", UriKind.Relative);
        public Uri vistaCompras = new Uri(@".\Paginas\Compras.xaml", UriKind.Relative);
        public Uri vistaMateriaPrima = new Uri(@".\Paginas\MateriaPrima.xaml", UriKind.Relative);
        public Uri vistaPedidos = new Uri(@".\Paginas\Pedidos.xaml", UriKind.Relative);
        public Uri vistaProveedores = new Uri(@".\Paginas\Proveedores.xaml", UriKind.Relative);
        public Uri vistaProductos = new Uri(@".\Paginas\Productos.xaml", UriKind.Relative);


        public MainWindow()
        {
            InitializeComponent();
        }

        private void botonClientes_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaClientes;
        }

        private void botonPedidos_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaPedidos;
        }

        private void botonProveedores_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaProveedores;
        }

        private void botonProductos_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaProductos;
        }

        private void botonMateriaPrima_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaMateriaPrima;
        }

        private void botonCompras_Click(object sender, RoutedEventArgs e)
        {
            vGridGeneral.Background.Opacity = 0.3;
            framePrincipal.Source = vistaCompras;
        }
    }
}
