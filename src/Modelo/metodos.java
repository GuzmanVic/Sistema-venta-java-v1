package Modelo;

import com.toedter.calendar.JDateChooser;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

public class metodos {

    ConfigDao info = new ConfigDao();
    UsuarioDao usuario = new UsuarioDao();
    DefaultTableModel modelo = new DefaultTableModel();
    ClienteDao client = new ClienteDao();
    ProveedorDao proveedor = new ProveedorDao();
    ProductosDao prod = new ProductosDao();
    VentaDao ventas = new VentaDao();
    EmpleadoDao empleado = new EmpleadoDao();

//Estos métodos limpian los campos en los distintos paneles del sistema
    public void limpiarCliente(JTextField curp, JTextField nombre, JTextField apellidos, JTextField telefono, JTextField direccion) {//Panel clientes
        curp.setText("");
        nombre.setText("");
        apellidos.setText("");
        telefono.setText("");
        direccion.setText("");
    }

    public void limpiarProveedor(JTextField nombre, JTextField telefono, JTextField direccion) {//Panel proveedores
        nombre.setText("");
        telefono.setText("");
        direccion.setText("");
    }

    public void limpiarProd(JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd, JTextField txtPrecioCompra, JTextField txtPrecioVentaProd, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria) {//Panel productos
        txtCodProd.setText("");
        txtNombreProd.setText("");
        txtCantProd.setText("");
        txtPrecioCompra.setText("");
        txtPrecioVentaProd.setText("");
    }

//Actualiza el contenido de las tablas en los paneles
    public void listarTablas(JTable tabla) throws SQLException {
        modelo = (DefaultTableModel) tabla.getModel();//Obtiene el modelo de la tabla en cuestion
        modelo.setRowCount(0);//Borra el contenido de la tabla
        ResultSet rs = null;
        Object[] fila;
        switch (tabla.getName()) {//Segun el nombre de la tabla sera la consulta que hará a la base de datos
            case "Clientes":
                rs = client.ListarCliente();
                fila = new Object[7];
                while (rs.next()) {
                    String apellidos = rs.getString("apellido_P") + " " + rs.getString("apellido_M");
                    fila[0] = rs.getString("idCliente");
                    fila[1] = rs.getString("CURP");
                    fila[2] = rs.getString("nombre");
                    fila[3] = apellidos;
                    fila[4] = rs.getString("telefono");
                    fila[5] = rs.getString("direccion");
                    fila[6] = rs.getDate("fecha");
                    modelo.addRow(fila);
                }
                break;
            case "Proveedores":
                rs = proveedor.ListarProveedor();
                fila = new Object[4];
                while (rs.next()) {
                    fila[0] = rs.getString("idProveedor");
                    fila[1] = rs.getString("nombre");
                    fila[2] = rs.getString("telefono");
                    fila[3] = rs.getString("direccion");
                    modelo.addRow(fila);
                }
                break;
            case "Productos":
                rs = prod.ListarProductos();
                fila = new Object[9];
                while (rs.next()) {
                    fila[0] = rs.getString("serie");
                    fila[1] = rs.getString("nombre");
                    fila[2] = rs.getString("proveedor");
                    fila[3] = rs.getString("fechaIngreso");
                    fila[4] = rs.getString("fechaVencimiento");
                    fila[5] = rs.getString("precioCompra");
                    fila[6] = rs.getString("precioVenta");
                    fila[7] = rs.getString("cantidad");
                    fila[8] = rs.getString("categoria");
                    modelo.addRow(fila);
                }
                break;
            case "Ventas":
                rs = ventas.Listarventas();
                fila = new Object[5];
                while (rs.next()) {
                    String nombreC = rs.getString("cliente_nombre") + " " + rs.getString("cliente_nombre") + " " + rs.getString("cliente_apellidoP") + " " + rs.getString("cliente_apellidoM");
                    String nombreE = rs.getString("empleado_nombre") + " " + rs.getString("empleado_nombre") + " " + rs.getString("empleado_apellidoP") + " " + rs.getString("empleado_apellidoM");
                    fila[0] = rs.getString("idVentas");
                    fila[1] = nombreC;
                    fila[2] = nombreE;
                    fila[3] = rs.getString("subtotal");
                    fila[4] = rs.getString("total");
                    modelo.addRow(fila);
                }
                break;
            case "Usuarios":
                rs = usuario.listarUsuarios();
                fila = new Object[4];
                while (rs.next()) {
                    fila[0] = rs.getString("idUsuario");
                    fila[1] = rs.getString("nombre");
                    fila[2] = rs.getString("correo");
                    fila[3] = rs.getString("acceso");
                    modelo.addRow(fila);
                }
                break;
            case "Empleados":
                rs = empleado.listarEmpleados();
                fila = new Object[5];
                while (rs.next()) {
                    String nombre = rs.getString("nombre") + " " + rs.getString("apellidoP") + " " + rs.getString("apellidoM");;
                    fila[0] = rs.getString("idEmpleado");
                    fila[1] = nombre;
                    fila[2] = rs.getString("curp");
                    fila[3] = rs.getString("direccion");
                    fila[4] = rs.getString("telefono");
                    modelo.addRow(fila);
                }
                break;
        }
        tabla.setModel(modelo);
    }

//Estos metodos Guardan o actualizan datos en distintas tablas de la base de datos
    public void addUpdClientes(JTable tabla, JTextField txtCurpCliente, JTextField txtNombreCliente, JTextField txtApellidosCliente,
            JTextField txtTelefonoCliente, JTextField txtDireccionCliente, boolean caso) throws SQLException {
        if (!"".equals(txtCurpCliente.getText()) || !"".equals(txtNombreCliente.getText()) || !"".equals(txtTelefonoCliente.getText())
                || !"".equals(txtDireccionCliente.getText())) {//Verifica que todos los campos necesarios contengan datos
            ArrayList<String> apellidos = separarApellidos(txtApellidosCliente.getText());//Ejecuta un metodo para separar apellidos y los almacena en un array
            if (caso) {//Si CASO es true, significa que debe registrar un cliente
                client.RegistrarCliente(txtNombreCliente.getText(), apellidos.get(0), apellidos.get(1), txtCurpCliente.getText(), txtTelefonoCliente.getText(), txtDireccionCliente.getText());
            } else {//si CASO es false entonces deberá actualizar un cliente
                int seleccionado = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());//Obtiene el id del cliente en cuestion
                client.ModificarCliente(seleccionado, txtNombreCliente.getText(), apellidos.get(0), apellidos.get(1),
                        txtCurpCliente.getText(), txtTelefonoCliente.getText(), txtDireccionCliente.getText());
            }
            listarTablas(tabla);//Actualiza la tabla en el sistema
            limpiarCliente(txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente,
                    txtDireccionCliente);//Limpia los campos del panel clientes
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    public void addUpdProveedor(JTable tabla, JTextField txtNombreproveedor, JTextField txtTelefonoProveedor, JTextField txtDireccionProveedor, boolean caso) throws SQLException {
        if (!"".equals(txtNombreproveedor.getText()) || !"".equals(txtTelefonoProveedor.getText()) || !"".equals(txtDireccionProveedor.getText())) {
            if (caso) {//Si CASO es true, significa que debe registrar
                proveedor.RegistrarProveedor(txtNombreproveedor.getText(), txtTelefonoProveedor.getText(), txtDireccionProveedor.getText());
            } else {//si CASO es false entonces deberá actualizar
                int seleccionado = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());//Obtiene el id del elemento en cuestion
                proveedor.ModificarProveedor(seleccionado, txtNombreproveedor.getText(), txtTelefonoProveedor.getText(), txtDireccionProveedor.getText());
            }
            listarTablas(tabla);//Actualiza la tabla en el sistema
            limpiarProveedor(txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor);//Limpia los campos del panel proveedor
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    public void addUpdProd(JTable tabla, JDateChooser vencimiento, JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd,
            JTextField txtPrecioCompra, JTextField txtPrecioVentaProd, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria, boolean caso) throws SQLException {
        if (!"".equals(txtCodProd.getText()) || !"".equals(txtNombreProd.getText()) || !"".equals(txtCantProd.getText())
                || txtPrecioCompra.getText().isEmpty() || txtPrecioVentaProd.getText().isEmpty()) {//Verifica que los campos contengan informacion
            //Almacena los datos en variables para un mejor manejo de estas.
            String codigo = txtCodProd.getText(), nombre = txtNombreProd.getText(), proveedor = comboProveedor.getSelectedItem().toString();
            String categoria = comboCategoria.getSelectedItem().toString();
            int cantidad = Integer.parseInt(txtCantProd.getText());//Convierte el texto en int
            String fechaString = new SimpleDateFormat("yyyy-MM-dd").format(vencimiento.getDate());//Convierte la fecha a string y al formato necesario
            Date fechaDate = Date.valueOf(fechaString);//Convierte el string a Date para poder insertarlo en la base de datos
            double precioC = Double.parseDouble(txtPrecioCompra.getText()), precioV = Double.parseDouble(txtPrecioVentaProd.getText());
            if (caso) {//Si CASO es true, significa que debe registrar
                prod.RegistrarProductos(codigo, nombre, proveedor, fechaDate, precioC, precioV, cantidad, categoria);
            } else {//si CASO es false entonces deberá actualizar
                prod.ModificarProductos(codigo, nombre, proveedor, fechaDate, precioC, precioV, cantidad, categoria);
            }
            listarTablas(tabla);//Actualiza la tabla en el sistema
            ///          limpiarProveedor(txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor);//Limpia los campos del panel proveedor
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    private ArrayList separarApellidos(String apellidos) {
        ArrayList<String> separados = new ArrayList<String>();
        for (String apellido : apellidos.split(" ")) {
            separados.add(apellido);
        }
        if (separados.get(1) == null) {//Si no existe un segundo apellido, entonces agrega un espacio en blanco, para no generar errores
            separados.add("");
        }
        return separados;
    }

    public void eliminar(JTable tabla) throws SQLException {
        if (tabla.getSelectedRow() < 0) {//Verifica que haya algun elemento seleccionado en la tabla
            JOptionPane.showMessageDialog(null, "No se ha seleccionado ningún elemento");
        } else {
            int pregunta = JOptionPane.showConfirmDialog(null, "¿Está seguro de eliminar este elemento?");
            if (pregunta == 0) {
                int fila = tabla.getSelectedRow(), id = Integer.parseInt(tabla.getValueAt(fila, 0).toString());//Obtiene el id del elemento a eliminar
                switch (tabla.getName()) {//Ubica el nombre de la tabla con la que se va a trabajar y elimina el elemento de la misma.
                    case "Clientes":
                        client.EliminarCliente(id);
                        break;
                    case "Proveedores":
                        proveedor.EliminarProveedor(id);
                        break;
                    case "Productos":
                        prod.EliminarProductos(String.valueOf(id));
                        break;
                }
                listarTablas(tabla);//Actualiza la tabla en el sistema
            }

        }
    }
//Estos metodos se ejecutan al hacer click en alguna de las tablas 

    public void clickTablaProveedores(JTable tabla, JTextField txtNombreproveedor, JTextField txtTelefonoProveedor, JTextField txtDireccionProveedor) {
        int fila = tabla.getSelectedRow();
        txtNombreproveedor.setText(tabla.getValueAt(fila, 1).toString());
        txtTelefonoProveedor.setText(tabla.getValueAt(fila, 2).toString());
        txtDireccionProveedor.setText(tabla.getValueAt(fila, 3).toString());
    }

    public void clickTablaClientes(JTable tabla, JTextField txtCurpCliente, JTextField txtNombreCliente, JTextField txtApellidosCliente, JTextField txtTelefonoCliente, JTextField txtDireccionCliente) {
        int fila = tabla.getSelectedRow();
        txtCurpCliente.setText(tabla.getValueAt(fila, 1).toString());
        txtNombreCliente.setText(tabla.getValueAt(fila, 2).toString());
        txtApellidosCliente.setText(tabla.getValueAt(fila, 3).toString());
        txtTelefonoCliente.setText(tabla.getValueAt(fila, 4).toString());
        txtDireccionCliente.setText(tabla.getValueAt(fila, 5).toString());
    }

    public void clickTablaProd(JTable tabla, JDateChooser vencimiento, JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd, JTextField txtPrecioCompra, JTextField txtPrecioVenta, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria) throws ParseException {
        int fila = tabla.getSelectedRow();
        txtCodProd.setText(tabla.getValueAt(fila, 0).toString());
        txtNombreProd.setText(tabla.getValueAt(fila, 1).toString());
        txtCantProd.setText(tabla.getValueAt(fila, 7).toString());
        txtPrecioCompra.setText(tabla.getValueAt(fila, 5).toString());
        txtPrecioVenta.setText(tabla.getValueAt(fila, 6).toString());
        comboProveedor.setSelectedItem(tabla.getValueAt(fila, 2));
        String fechaString = tabla.getValueAt(fila, 4).toString(); // fecha en formato String
        SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy"); // crea el objeto SimpleDateFormat con el formato deseado
        java.util.Date fechaDate = formato.parse(fechaString); // convierte el String a un objeto Date
        vencimiento.setDate(fechaDate);//Establece la fecha de vencimiento en el JDateChooser

    }

    public void llenarCombos(JComboBox<String> combo, JComboBox<String> combo2) throws SQLException {
        ResultSet rs = proveedor.ListarProveedor();
        while (rs.next()) {
            combo.addItem(rs.getString("nombre"));
        }
        rs.close();
        ResultSet rs1 = proveedor.listarCategoria();
        while (rs1.next()) {
            combo2.addItem(rs1.getString("descripcion"));
        }
        rs1.close();
    }

    public void actualizarInfo(JTextField txtNombreInfo, JTextField txtCorreoInfo, JTextField txtDireccionInfo, JTextField txtTelefonoInfo,
            JTextField txtWebInfo) throws SQLException {
        if (txtNombreInfo.getText().isEmpty() || txtCorreoInfo.getText().isEmpty() || txtDireccionInfo.getText().isEmpty()
                || txtTelefonoInfo.getText().isEmpty() || txtWebInfo.getText().isEmpty()) {//Verifica que los campos no estén vacíos
            info.addUpdInfo(txtNombreInfo.getText(), txtCorreoInfo.getText(), txtDireccionInfo.getText(), txtTelefonoInfo.getText(), txtWebInfo.getText());
        } else {
            JOptionPane.showMessageDialog(null, "Los campos están vacíos");
        }
    }

    public void listarInfo(JTextField txtNombreInfo, JTextField txtCorreoInfo, JTextField txtDireccionInfo, JTextField txtTelefonoInfo, JTextField txtWebInfo) throws SQLException {
        ResultSet rs = info.listarInfo();
        if (rs.next()) {
            txtNombreInfo.setText(rs.getString("nombre"));
            txtCorreoInfo.setText(rs.getString("correo"));
            txtDireccionInfo.setText(rs.getString("direccion"));
            txtTelefonoInfo.setText(rs.getString("telefono"));
            txtWebInfo.setText(rs.getString("web"));
        }
    }

    public void registrarEmpleado(JTextField correo, JTextField nombre, JTextField apellidos,JTextField telefono, JPasswordField contraseña, JComboBox<String> comboRol) {
        if(enviarCorreo(correo.getText())){
            ArrayList<String> apellidosS = separarApellidos(apellidos.getText());//Ejecuta un metodo para separar apellidos y los almacena en un array
            empleado.registrarEmpleado(correo.getText(),nombre.getText(),apellidosS.get(0),apellidosS.get(1),telefono,contraseña,comboRol.getSelectedItem().toString());
        }
    }

    private boolean enviarCorreo(String correo) {
    return true;
    }

}
