package Controlador;

import Modelo.ClienteDao;
import Modelo.ConfigDao;
import Modelo.EmpleadoDao;
import Modelo.ProductosDao;
import Modelo.ProveedorDao;
import Modelo.UsuarioDao;
import Modelo.VentaDao;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.toedter.calendar.JDateChooser;
import java.awt.Desktop;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EventObject;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.swing.DefaultCellEditor;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;

public class metodos {

    public boolean ventaAutorizada = false;
    ProductoTableRenderer renderer = new ProductoTableRenderer();
    ConfigDao info = new ConfigDao();
    UsuarioDao usuario = new UsuarioDao();
    DefaultTableModel modelo = new DefaultTableModel();
    ClienteDao client = new ClienteDao();
    ProveedorDao proveedor = new ProveedorDao();
    ProductosDao prod = new ProductosDao();
    VentaDao ventas = new VentaDao();
    EmpleadoDao empleado = new EmpleadoDao();
    VentaDao venta = new VentaDao();
    LocalDate fechaVenta = LocalDate.now();//Almacena la fecha de venta
    double subtotal = 0.0, descuento = 0.0, total = 0.0;
    LocalTime horaActual = LocalTime.now();
    //Estas variables serán utilizadas para almacenar los datos del producto que se busque en la base de datos
    String nombre = "";
    int stock = 0;
    String correo = "";
    double precio = 0.0;
//Estos métodos limpian los campos en los distintos paneles del sistema

    public void limpiarCliente(JTextField curp, JTextField nombre, JTextField apellidos, JTextField telefono, JTextField direccion, JTextField correo) {//Panel clientes
        JTextField[] camposTexto = {curp, nombre, apellidos, telefono, direccion, correo};
        for (JTextField campo : camposTexto) {
            campo.setText("");
            campo.setEnabled(true);
        }
    }

    public void limpiarProveedor(JTextField nombre, JTextField telefono, JTextField direccion) {//Panel proveedores
        nombre.setText("");
        telefono.setText("");
        direccion.setText("");
    }

    public void limpiarProd(JTextField codigo, JTextField nombre, JTextField cant, JTextField precioC, JTextField precioV) {//Panel productos
        JTextField[] camposTexto = {codigo, nombre, cant, precioC, precioV};
        for (JTextField campo : camposTexto) {
            campo.setText("");
            campo.setEnabled(true);
        }
    }

    public void limpiarEmpleado(JTextField correo, JTextField nombre, JTextField apellidos, JTextField curp, JTextField telefono, JTextField direccion, JPasswordField contraseña) {
        JTextField[] camposTexto = {correo, nombre, apellidos, curp, telefono, direccion};
        for (JTextField campo : camposTexto) {
            campo.setText("");
            campo.setEnabled(true);
        }
        contraseña.setText("");
        contraseña.setEnabled(true);
    }

//Actualiza el contenido de las tablas en los paneles
    public boolean listarTablas(JTable tabla) throws SQLException {
        boolean productos = false; //Determina si se ha llenado la tabla productos
        modelo = (DefaultTableModel) tabla.getModel();//Obtiene el modelo de la tabla en cuestion
        modelo.setRowCount(0);//Borra el contenido de la tabla
        ResultSet rs = null;
        Object[] fila;
        tabla.getColumnModel().getColumn(0).setMaxWidth(30);
        tabla.getColumnModel().getColumn(0).setMinWidth(30);
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
                    fila[6] = rs.getString("correo");
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
                    tabla.getColumnModel().getColumn(2).setMaxWidth(80);
                    tabla.getColumnModel().getColumn(2).setMinWidth(80);
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
                    tabla.getColumnModel().getColumn(0).setMinWidth(80);
                    tabla.getColumnModel().getColumn(0).setMaxWidth(100);
                }
                productos = true;
                break;
            case "Ventas":
                rs = ventas.Listarventas();
                fila = new Object[5];
                while (rs.next()) {
                    String nombreC = rs.getString("cliente_nombre") + " " + rs.getString("cliente_nombre") + " " + rs.getString("cliente_apellidoP") + " " + rs.getString("cliente_apellidoM");
                    String nombreE = rs.getString("empleado_nombre") + " " + rs.getString("empleado_nombre") + " " + rs.getString("empleado_apellidoP") + " " + rs.getString("empleado_apellidoM");
                    if (nombreC.contains("null")) {
                        nombreC = "No registrado";
                    }
                    fila[0] = rs.getString("idVentas");
                    fila[1] = nombreC;
                    fila[2] = nombreE;
                    fila[3] = rs.getString("subtotal");
                    fila[4] = rs.getString("total");
                    modelo.addRow(fila);
                }
                break;
            case "Empleados":
                rs = empleado.listarEmpleados();
                fila = new Object[8];
                while (rs.next()) {
                    String apellidos = rs.getString("apellidoP") + " " + rs.getString("apellidoM");;
                    fila[0] = rs.getString("idEmpleado");
                    fila[1] = rs.getString("curp");
                    fila[2] = rs.getString("nombre");
                    fila[3] = apellidos;
                    fila[4] = rs.getString("direccion");
                    fila[5] = rs.getString("telefono");
                    fila[6] = rs.getString("correo");
                    fila[7] = rs.getString("acceso");
                    modelo.addRow(fila);
                }
                break;
        }
        tabla.setModel(modelo);
        if (productos) {
            renderer.colorearProductosAVencer(tabla);
        }
        tabla.getTableHeader().setReorderingAllowed(false);//Impide que las columnas de la tabla sean reordenadas
        //Recorre todas las celdas de la tabla para asi hacer que el usuario pueda seleccionarlas pero NO editarlas.
        for (int i = 0; i < tabla.getColumnCount(); i++) {
            TableColumn column = tabla.getColumnModel().getColumn(i);
            column.setCellEditor(new DefaultCellEditor(new JTextField()) {
                @Override
                public boolean isCellEditable(EventObject e) {
                    return false; // deshabilita la edición de celdas
                }
            });
        }
        return productos;
    }

//Estos metodos Guardan o actualizan datos en distintas tablas de la base de datos
    public void addUpdClientes(JTable tabla, JTextField txtCurpCliente, JTextField txtNombreCliente, JTextField txtApellidosCliente,
            JTextField txtTelefonoCliente, JTextField txtDireccionCliente, JTextField correo, boolean caso) throws SQLException, MessagingException {
        if (!"".equals(txtCurpCliente.getText()) || !"".equals(txtNombreCliente.getText()) || !"".equals(txtTelefonoCliente.getText())
                || !"".equals(txtDireccionCliente.getText())) {//Verifica que todos los campos necesarios contengan datos
            //Valida que los formatos de curp, teleefono y direccion sean correctos.
            if (validarCurp(txtCurpCliente.getText()) && validarTelefono(txtTelefonoCliente.getText()) && validarDireccion(txtDireccionCliente.getText())) {
                ArrayList<String> apellidos = separarApellidos(txtApellidosCliente.getText());//Ejecuta un metodo para separar apellidos y los almacena en un array
                if (caso) {//Si CASO es true, significa que debe registrar un cliente
                    //Verifica que la curp, telefono o correo electronico no hayan sido agregados antes.
                    if (!buscarCURP(tabla, txtCurpCliente.getText()) && !buscarTelefono(tabla, txtTelefonoCliente.getText()) && !buscarCorreo(tabla, correo.getText())) {//verifica si la curp y el telefono ingresados ya fue agregada
                        if (enviarCorreo(correo.getText())) {
                            client.RegistrarCliente(txtNombreCliente.getText(), apellidos.get(0), apellidos.get(1), txtCurpCliente.getText(), txtTelefonoCliente.getText(), txtDireccionCliente.getText(), correo.getText());
                        }
                    }
                } else {//si CASO es false entonces deberá actualizar un cliente
                    int seleccionado = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());//Obtiene el id del cliente en cuestion
                    client.ModificarCliente(seleccionado, txtNombreCliente.getText(), apellidos.get(0), apellidos.get(1),
                            txtCurpCliente.getText(), txtTelefonoCliente.getText(), txtDireccionCliente.getText(), correo.getText());
                }
                listarTablas(tabla);//Actualiza la tabla en el sistema
                limpiarCliente(txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente, txtDireccionCliente, correo);//Limpia los campos del panel clientes
            }
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    public void addUpdProveedor(JTable tabla, JTextField txtNombreproveedor, JTextField txtTelefonoProveedor, JTextField txtDireccionProveedor, boolean caso) throws SQLException {
        if (!"".equals(txtNombreproveedor.getText()) || !"".equals(txtTelefonoProveedor.getText()) || !"".equals(txtDireccionProveedor.getText())) {
            if (validarTelefono(txtTelefonoProveedor.getText()) && validarDireccion(txtDireccionProveedor.getText())) {//Valida los formatos de direccion y telefono
                if (caso) {//Si CASO es true, significa que debe registrar
                    //Verifica que el telefono no haya sido agregado previamente
                    if (!buscarTelefono(tabla, txtTelefonoProveedor.getText())) {//Verifica que el telefono no haya sido agregado previamente a la tabla
                        proveedor.RegistrarProveedor(txtNombreproveedor.getText(), txtTelefonoProveedor.getText(), txtDireccionProveedor.getText());
                    }
                } else {//si CASO es false entonces deberá actualizar
                    int seleccionado = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());//Obtiene el id del elemento en cuestion
                    proveedor.ModificarProveedor(seleccionado, txtNombreproveedor.getText(), txtTelefonoProveedor.getText(), txtDireccionProveedor.getText());
                }
                listarTablas(tabla);//Actualiza la tabla en el sistema
                limpiarProveedor(txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor);//Limpia los campos del panel proveedor
            }
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    public void addUpdProd(JTable tabla, JDateChooser vencimiento, JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd,
            JTextField txtPrecioCompra, JTextField txtPrecioVentaProd, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria, boolean caso) throws SQLException {
        if (!"".equals(txtCodProd.getText()) || !"".equals(txtNombreProd.getText()) || !"".equals(txtCantProd.getText())
                || !txtPrecioCompra.getText().isEmpty() || !txtPrecioVentaProd.getText().isEmpty()) {//Verifica que los campos contengan informacion
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
            limpiarProd(txtCodProd, txtNombreProd, txtCantProd, txtPrecioCompra, txtPrecioVentaProd);//Limpia los campos del panel proveedor
        } else {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        }
    }

    public void addUpdEmpleado(JTable tabla, JTextField correo, JTextField nombre, JTextField apellidos, JTextField curp, JTextField telefono, JTextField direccion, JPasswordField contraseña, JComboBox<String> combo, boolean caso) throws SQLException, MessagingException {
        if (curp.getText().isEmpty() || telefono.getText().isEmpty() || direccion.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        } else {
            ArrayList<String> apellidosS = separarApellidos(apellidos.getText());//Ejecuta un metodo para separar apellidos y los almacena en un array
            if (validarCurp(curp.getText()) && validarTelefono(telefono.getText()) && validarDireccion(direccion.getText())) {//Valida que el telefono sea de 10 digitos y la curp valida
                if (caso) {
                    if (validarContraseña(contraseña.getText())) {
                        if (!correo.getText().isEmpty() || !nombre.getText().isEmpty() || !apellidos.getText().isEmpty() || !contraseña.getText().isEmpty()) {
                            //Verifica que el correo, telefono o curp no haya sido agregado previamente
                            if (!buscarCURP(tabla, curp.getText()) && !buscarTelefono(tabla, telefono.getText()) && !buscarCorreo(tabla, correo.getText())) {//verifica si la curp y el telefono ingresados ya fueron agregados
                                if (enviarCorreo(correo.getText())) {
                                    usuario.registrar(correo.getText(), nombre.getText(), apellidosS.get(0), apellidosS.get(1), telefono.getText(), contraseña.getText(), combo.getSelectedItem().toString());
                                    empleado.registrarEmpleado(nombre.getText(), apellidosS.get(0), apellidosS.get(1), curp.getText(), direccion.getText());
                                    EnviarCorreo enviar = new EnviarCorreo();
                                    enviar.enviar(correo.getText(), "Bienvenida", new File(""));
                                    limpiarEmpleado(correo, nombre, apellidos, curp, telefono, direccion, contraseña);
                                    JOptionPane.showMessageDialog(null, "EL EMPLEADO HA SIDO REGISTRADO.");
                                }
                            }
                        } else {
                            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
                        }
                    }
                    listarTablas(tabla);
                } else {
                    int id = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());
                    String rol = combo.getSelectedItem().toString();
                    empleado.modificar(id, nombre.getText(), apellidosS.get(0), apellidosS.get(1), curp.getText(), telefono.getText(), direccion.getText(), rol);
                }
            }
            listarTablas(tabla);//Actualiza la tabla en el sistema
        }
    }

//Agrega un producto a la tabla ventas
    public void addProdVenta(JTable tabla, JTextField cantidad, String codigo, JLabel totalPagar) throws SQLException {
        if (buscarProducto(codigo)) {//Busca el producto en la base de datos y agrega su informacion a las variables creadas (en caso de haberlo encontrado)
            boolean presente = false;//Indicará si el producto en cuestión a agregar ya estaba en la tabla o no.
            int cant = 1;//Si no se ingreso una cantidad, por defecto el numero de la cantidad será 1
            if (!cantidad.getText().isEmpty()) {//Si se agregó la cantidad entonces tomara el numero ingresado como cantidad
                cant = Integer.parseInt(cantidad.getText());
            }
            if (stock >= cant && stock != 0) {//perimitirá que se agregue el producto solo si aun quedan en existencia
                int cantTabla = 0;//almacenar la cantidad del producto presente en la tabla (en caso de que el producto en cuestión ya haya sidp agregado previamente)
                int filaTabla = -1;//Almacena la fila en donde se encuentra el producto
                double total = 0.0;
                modelo = (DefaultTableModel) tabla.getModel();//Obtiene el modelo de la tabla venta
                for (int i = 0; i < modelo.getRowCount(); i++) {
                    if (codigo.equals(tabla.getValueAt(i, 0))) {//Verifica si ya hay un producto en la tabla con el mismo codigo
                        cantTabla = Integer.parseInt(tabla.getValueAt(i, 2).toString());//Obtiene la cantidad del producto que estaba en la tabla
                        filaTabla = i;//Obtiene la fila en la que se encuentra el producto
                        presente = true;//determina que el producto ya esta en la tabla
                        System.out.println("El producto ya estaba en la tabla");
                        break;//rompe la iteración
                    } else {//Si el producto en cuestión no estaba en la tabla...
                        presente = false;//Determina que el producto no está presente en la tabla
                        System.out.println("El producto NO estaba en la tabla");
                    }
                }
                if (presente) {//Si el producto ya estaba en la tabla...
                    cantTabla += cant;//Suma la cantidad ingresada por el usuario a la cantidad que ya estaba en la tabla
                    total = cantTabla * precio;//multiplica el precio por la nueva cantidad
                    modelo.setValueAt(cantTabla, filaTabla, 2);//Cambia la cantidad en la tabla
                    modelo.setValueAt(total, filaTabla, 4);//Cambia el precio en la tabla
                    System.out.println("Se sumó " + cantTabla + " al producto");
                } else {//Si el producto no estaba en la tabla lo agrega
                    Object[] fila = new Object[5];
                    total = cant * precio;//Multiplica la cantidad por el precio
                    fila[0] = codigo;
                    fila[1] = nombre;
                    fila[2] = cant;
                    fila[3] = precio;
                    fila[4] = total;
                    modelo.addRow(fila);//Agrega la fila a la tabla.
                    System.out.println("Se agregó " + nombre + " a la tabla");
                }
                TotalPagar(tabla, totalPagar);//Ejecuta el procedimiento para sumar todos los totales de la tabla.
                prod.addProdVenta(codigo, cant);//Resta la cantidad que se agrego de la base de datos
                cantidad.setText("");//borra la cantidad ingresada en el campo de cantidad
            } else {
                JOptionPane.showMessageDialog(null, "No hay suficientes productos en existencia.");
            }

        }
    }

//Actualiza o añade la información de la empresa
    public void actualizarInfo(JTextField txtNombreInfo, JTextField txtCorreoInfo, JTextField txtDireccionInfo, JTextField txtTelefonoInfo,
            JTextField txtWebInfo) throws SQLException {
        if (txtNombreInfo.getText().isEmpty() || txtDireccionInfo.getText().isEmpty()
                || txtTelefonoInfo.getText().isEmpty()) {//Verifica que los campos estén vacíos
            JOptionPane.showMessageDialog(renderer, "Algunos campos obligatorios están vacíos.");
        } else {
            info.addUpdInfo(txtNombreInfo.getText(), txtCorreoInfo.getText(), txtDireccionInfo.getText(), txtTelefonoInfo.getText(), txtWebInfo.getText());
            JOptionPane.showMessageDialog(null, "Se han guardado los cambios.");
        }
    }

    private ArrayList separarApellidos(String apellidos) {
        ArrayList<String> separados = new ArrayList<String>();
        for (String apellido : apellidos.split(" ")) {
            separados.add(apellido);
        }
        separados.add("");
        return separados;
    }

    public void eliminar(JTable tabla) throws SQLException {//Elimina elementos de las tablas, recibiendo como parametro la tabla en cuestión
        if (tabla.getSelectedRow() < 0) {//Verifica que haya algun elemento seleccionado en la tabla
            JOptionPane.showMessageDialog(null, "No se ha seleccionado ningún elemento");
        } else {
            int pregunta = JOptionPane.showConfirmDialog(null, "¿Está seguro de eliminar este elemento?");
            if (pregunta == 0) {//Confirma si el usuario realmente desea eliminar el elemento seleccionado
                int fila = tabla.getSelectedRow();
                switch (tabla.getName()) {//Ubica el nombre de la tabla con la que se va a trabajar y elimina el elemento de la misma.
                    case "Productos":
                        prod.EliminarProductos(tabla.getValueAt(fila, 0).toString());
                        break;
                    case "Clientes":
                        int id = Integer.parseInt(tabla.getValueAt(fila, 0).toString());//Obtiene el id del elemento a eliminar
                        client.EliminarCliente(id);
                        break;
                    case "Proveedores":
                        id = Integer.parseInt(tabla.getValueAt(fila, 0).toString());//Obtiene el id del elemento a eliminar
                        proveedor.EliminarProveedor(id);
                        break;
                    case "Empleados":
                        id = Integer.parseInt(tabla.getValueAt(fila, 0).toString());//Obtiene el id del elemento a eliminar
                        empleado.EliminarEmpleado(id);
                        break;

                }
                listarTablas(tabla);//Actualiza la tabla en el sistema
            }

        }
    }

    //Obtiene la información 
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

//Estos metodos se ejecutan al hacer click en alguna de las tablas 
    public void clickTablaProveedores(JTable tabla, JTextField txtNombreproveedor, JTextField txtTelefonoProveedor, JTextField txtDireccionProveedor) {
        int fila = tabla.getSelectedRow();
        txtNombreproveedor.setText(tabla.getValueAt(fila, 1).toString());
        txtTelefonoProveedor.setText(tabla.getValueAt(fila, 2).toString());
        txtDireccionProveedor.setText(tabla.getValueAt(fila, 3).toString());
    }

    public void clickTablaClientes(JTable tabla, JTextField curp, JTextField nombre, JTextField apellidos, JTextField tel, JTextField dir, JTextField correo) {
        int fila = tabla.getSelectedRow();
        curp.setText(tabla.getValueAt(fila, 1).toString());
        nombre.setText(tabla.getValueAt(fila, 2).toString());
        apellidos.setText(tabla.getValueAt(fila, 3).toString());
        tel.setText(tabla.getValueAt(fila, 4).toString());
        dir.setText(tabla.getValueAt(fila, 5).toString());
        correo.setText(tabla.getValueAt(fila, 6).toString());
    }

    public void clickTablaProd(JTable tabla, JDateChooser vencimiento, JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd, JTextField txtPrecioCompra, JTextField txtPrecioVenta, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria) throws ParseException {
        int fila = tabla.getSelectedRow();
        txtCodProd.setText(tabla.getValueAt(fila, 0).toString());
        txtNombreProd.setText(tabla.getValueAt(fila, 1).toString());
        txtCantProd.setText(tabla.getValueAt(fila, 7).toString());
        txtPrecioCompra.setText(tabla.getValueAt(fila, 5).toString());
        txtPrecioVenta.setText(tabla.getValueAt(fila, 6).toString());
        comboProveedor.setSelectedItem(tabla.getValueAt(fila, 2));
        String fechaString = tabla.getValueAt(fila, 4).toString();
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); // crea el objeto SimpleDateFormat con el formato deseado
        java.util.Date fechaDate = formato.parse(fechaString); // convierte el String a un objeto Date
        vencimiento.setDate(fechaDate);//Establece la fecha de vencimiento en el JDateChooser
    }

    public void clickTablaEmpleados(JTable tabla, JPasswordField pass, JTextField correo, JTextField nombre, JTextField apellidos, JTextField curp, JTextField tel, JTextField dir, JComboBox<String> combo) {
        int fila = tabla.getSelectedRow();
        correo.setText(tabla.getValueAt(fila, 7).toString());
        nombre.setText(tabla.getValueAt(fila, 2).toString());
        apellidos.setText(tabla.getValueAt(fila, 3).toString());
        curp.setText(tabla.getValueAt(fila, 1).toString());
        dir.setText(tabla.getValueAt(fila, 4).toString());
        tel.setText(tabla.getValueAt(fila, 5).toString());
        combo.setSelectedItem(tabla.getValueAt(fila, 6).toString());
        pass.setText("");
        pass.setEnabled(false);
        correo.setEnabled(false);
    }

    //llean los comboBox que hay en la interfaz
    public void llenarCombos(JComboBox<String> combo, JComboBox<String> combo2) throws SQLException {
        ResultSet rs = proveedor.ListarProveedor();
        combo.removeAllItems();
        combo2.removeAllItems();
        while (rs.next()) {
            combo.addItem(rs.getString("nombre"));
        }
        rs.close();
        rs = proveedor.listarCategoria();
        while (rs.next()) {
            combo2.addItem(rs.getString("descripcion"));
        }
        rs.close();
        // Obtener el modelo del JComboBox
        DefaultComboBoxModel<String> model = (DefaultComboBoxModel<String>) combo.getModel();

        // Ordenar los elementos del modelo
        List<String> items = new ArrayList<String>();
        for (int i = 0; i < model.getSize(); i++) {
            items.add(model.getElementAt(i));
        }
        Collections.sort(items);
// Establecer el modelo ordenado en el JComboBox
        combo.setModel(new DefaultComboBoxModel<String>(items.toArray(new String[0])));
        // Obtener el modelo del JComboBox
        DefaultComboBoxModel<String> model2 = (DefaultComboBoxModel<String>) combo2.getModel();
        // Ordenar los elementos del modelo
        List<String> items2 = new ArrayList<String>();
        for (int i = 0; i < model2.getSize(); i++) {
            items2.add(model2.getElementAt(i));
        }
        Collections.sort(items2);
// Establecer el modelo ordenado en el JComboBox
        combo2.setModel(new DefaultComboBoxModel<String>(items2.toArray(new String[0])));
    }

    private boolean enviarCorreo(String correo) {
        EnviarCorreo enviar = new EnviarCorreo();
        String codigo = enviar.enviar(correo, "confirmacion", new File(""));
        String mensaje = "Hemos envíado un código de confirmación a tu correo electrónico, digítalo aquí para continuar:";
        String confirmacion;
        do {
            confirmacion = JOptionPane.showInputDialog(null, mensaje, "Confirmación por correo electrónico", JOptionPane.PLAIN_MESSAGE);
            if (confirmacion == null) {
                return false; // El usuario canceló la operación
            } else if (!confirmacion.equals(codigo)) {
                mensaje = "El código ingresado es incorrecto. Inténtalo de nuevo o haz clic en \"Reenviar código\" para solicitar uno nuevo:";
                int opcion = JOptionPane.showOptionDialog(null, mensaje, "Error", JOptionPane.DEFAULT_OPTION, JOptionPane.ERROR_MESSAGE, null, new String[]{"Reenviar código", "Cancelar"}, "Reenviar código");
                if (opcion == 0) {
                    codigo = enviar.enviar(correo, "confirmacion", new File(""));
                    mensaje = "Hemos envíado un nuevo código de confirmación a tu correo electrónico, digítalo aquí para continuar:";
                } else {
                    return false; // El usuario canceló la operación
                }
            }
        } while (!confirmacion.equals(codigo));
        return true;
    }

    public void TotalPagar(JTable tabla, JLabel total) {//Busca todos los totales en la tabla de ventas y los suma
        double Totalpagar = 0.00;
        for (int i = 0; i < tabla.getRowCount(); i++) {//Recorre todas las filas de la tabla
            double cal = Double.parseDouble(String.valueOf(tabla.getModel().getValueAt(i, 4)));//Obtiene los totales
            Totalpagar = Totalpagar + cal;//Suma todos los totales
        }
        total.setText(String.format("%.2f", Totalpagar));//Establece el total en la interfaz con solo dos decimales
    }

    public void eliminarProdVenta(JTable tabla) throws SQLException {//Elimina un producto de la tabla ventas
        if (tabla.getRowCount() > -1) {//Verifica que se haya seleccionado un elemento
            String codigo = tabla.getValueAt(tabla.getSelectedRow(), 0).toString();//Obtiene el codigo de producto
            int cantidad = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 2).toString());//Obtiene la cantidad del producto
            prod.sumarProd(codigo, cantidad);//Suma la cantidad que se regresó a la base de datos
            modelo = (DefaultTableModel) tabla.getModel();//Obtiene el modelo de la tabla
            modelo.removeRow(tabla.getSelectedRow());//Elimina la fila de la tabla
        } else {
            JOptionPane.showMessageDialog(null, "No se ha seleccionado ningún elemento.");
        }
    }

//Genera un ticket en un documento PDF
    public void pdf(JTable TablaVenta, String nombreInfo, String direccionInfo, String nombreC, String telefonoInfo, String empleado, String curp) throws FileNotFoundException, DocumentException, IOException, SQLException {
        ResultSet rs = venta.obtenerUltimaVenta();//Obtiene la última venta generada
        int idVenta = 0;//Almacenará el id de la venta
        //Establece el descuento y el total en un formato en el que solo muestren 2 decimales
        String desc = String.format("%.2f", descuento);
        String tot = String.format("%.2f", this.total);
        if (rs.next()) {
            idVenta = rs.getInt("idVentas");
        }
        String imagePath = System.getProperty("user.dir") + "/src/img/logo.png";
        File file = new File("C:/Users/victo/OneDrive/Documentos/tickets de venta/venta " + idVenta + ".pdf");// Se crea un objeto File con la ruta y nombre del archivo PDF que se va a generar
//Se crean los objetos necesarios para generar el documento del ticket de venta
        try (FileOutputStream archivo = new FileOutputStream(file) // Se crea un objeto FileOutputStream con el archivo anteriormente creado para escribir en él
                ) {
            Document doc = new Document();// Se crea un objeto Document que representa el documento PDF
            PdfWriter.getInstance(doc, archivo);// Se crea un objeto PdfWriter con el Document y el FileOutputStream para escribir en el documento PDF
            doc.open();//Se abre el documento para empezar a escribir en el
            Image img = Image.getInstance(imagePath); // Se carga la imagen
            img.scaleAbsolute(100, 100);//escala la imagen
            img.setAlignment(Element.ALIGN_CENTER);//alinea la imagen al centro
            Font negrita = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD, BaseColor.BLACK);//Se establece una fuente en negrita

            Paragraph encabezado = new Paragraph();//Se crea una seccion para el encabezado del documento
            //Se agrega la informacion de la empresa en el encabezado
            encabezado.add(img);//Se agrega la imagen al encabezado
            encabezado.add(nombreInfo + "\n" + direccionInfo + "\n");
            encabezado.add(fechaVenta + "  " + horaActual + " \n\n");//Se agrega la fecha y hora actual al encabezado
            encabezado.setAlignment(Element.ALIGN_CENTER);
            encabezado.add("______________________________________________________________________________");
            doc.add(encabezado);//Se agrega el encabezado al documento

            //Productos
            PdfPTable tablaProd = new PdfPTable(4);//Se crea una seccion para los productos en el ticket, el cual será de 4 columnas
            tablaProd.setWidthPercentage(100);//Se crea un porcentaje de ancho para los productos
            tablaProd.getDefaultCell().setBorder(0);// Se establece el borde por defecto de las celdas en 0
//Se estabblece el ancho de las columnas y la alineación de la seccion
            float[] columnProd = new float[]{10f, 50f, 15f, 20f};
            tablaProd.setWidths(columnProd);
            tablaProd.setHorizontalAlignment(Element.ALIGN_LEFT);//Se alinea la seccion de productos a la izquierda
//Se establece la informacion de los productos en el encabezado de la seccion de productos y se le establece la fuente en negrita
            PdfPCell prod1 = new PdfPCell(new Phrase("Cantidad", negrita));
            PdfPCell prod2 = new PdfPCell(new Phrase("Descripcion", negrita));
            PdfPCell prod3 = new PdfPCell(new Phrase("Precio unitario", negrita));
            PdfPCell prod4 = new PdfPCell(new Phrase("Precio total", negrita));
            prod1.setBorder(0);
            prod2.setBorder(0);
            prod3.setBorder(0);
            prod4.setBorder(0);
//Se agrega la informacion a la seccion de los productos
            tablaProd.addCell(prod1);
            tablaProd.addCell(prod2);
            tablaProd.addCell(prod3);
            tablaProd.addCell(prod4);
            //Estas cuatro celdas son simplemente para agregar un salto de linea inmediatamente despues de la informacion de seccion,
            // deben ser forsozamente 4, por que la tabla de productos se establecio de 4 columnas
            tablaProd.addCell("");
            tablaProd.addCell("");
            tablaProd.addCell("");
            tablaProd.addCell("");
//Se recorren todos los elementos que se compraron para agregarlos al ticket
            for (int i = 0; i < TablaVenta.getRowCount(); i++) {
                String descripcion = TablaVenta.getValueAt(i, 1).toString();
                String cantidad = TablaVenta.getValueAt(i, 2).toString();
                String precio = TablaVenta.getValueAt(i, 3).toString();
                String precioT = TablaVenta.getValueAt(i, 4).toString();
                tablaProd.addCell(cantidad);
                tablaProd.addCell(descripcion);
                tablaProd.addCell(precio);
                tablaProd.addCell(precioT);
            }
            doc.add(tablaProd);//Se agregan todos los productos al ticket
//Se crea una seccion para escribir el total en el ticket
            Paragraph total = new Paragraph();
            total.add(Chunk.NEWLINE);//Salto de linea
            total.add("______________________________________________________________________________");
            total.add("Subtotal " + subtotal + "\n");
            total.add("Descuento: " + desc + "\n");
            total.add("Total " + tot + "\n");
            total.setAlignment(Element.ALIGN_RIGHT);
            doc.add(total);//Se agrega la seccion al ticket
//Se crea una seccion para la informacion del cliente
            Paragraph Cliente = new Paragraph();
            Cliente.setAlignment(Element.ALIGN_CENTER);
            String cliente = "Cliente";
            if (!nombreC.isEmpty()) {
                cliente = nombreC;
            }
            Cliente.add("Apreciable " + cliente + "\n");
            if (!empleado.isEmpty() || empleado != null) {
                Cliente.add("Le atendió: " + empleado + "\n");
            }
            Cliente.add("Que tenga un excelente día");
            doc.add(Cliente);//Se agrega la informacon del cliente al ticket
//Se crea una seccion para agregar la firma del cliente al ticket 
            Paragraph firma = new Paragraph();
            firma.add(Chunk.NEWLINE);
            firma.add("Cancelación y firma\n\n");
            firma.add("-------------------");
            firma.setAlignment(Element.ALIGN_CENTER);
            doc.add(firma);//Se agrega la firma al ticket
//Se crea una seccion para escribir un mensaje estatico al final del ticket
            Paragraph mensaje = new Paragraph();
            mensaje.add(Chunk.NEWLINE);//Salto de linea
            mensaje.add("Gracias por su compra" + "\n");
            mensaje.add("Para mayor información acerca del tratamiento de sus datos, usted puede consultar la version integral del aviso de privacidad, "
                    + "asi como todo lo relacionado a servicio a domicilio y atención a clientes");
            mensaje.add("\n ATENCIÓN A CLIENTES " + telefonoInfo);
            mensaje.setAlignment(Element.ALIGN_CENTER);
            doc.add(mensaje);//Se agrega el mensaje al ticket

            doc.close();//Se cierra el documento, indicando que ya se dejo de escribir en el
        } // Se crea un objeto Document que representa el documento PDF
        Desktop.getDesktop().open(file);//Se abre el documento automaticamente
        if (!nombreC.isEmpty()) {
            EnviarCorreo enviar = new EnviarCorreo();
            enviar.enviar(correo, "ticket", file);//envia un correo con el ticket al usuario que hizo la compra
        }

        //Elimina todas las filas de la tabla venta
        modelo = (DefaultTableModel) TablaVenta.getModel();
        modelo.setRowCount(0);
    }

//Genera una venta y la inserta en la base de datos
    public void generarVenta(JTable TablaVenta, JLabel LabelTotal, int idUsuario, int idCliente) throws SQLException, DocumentException, IOException {
        if (TablaVenta.getRowCount() > 0) {//Verifia que haya productos en la tabla
            double monto = Double.parseDouble(LabelTotal.getText());
            if (monto >= 1000) {//Aplica descuentos dependiendo de la cantidad total de la venta
                descuento = monto * 0.10;
            } else if (monto >= 2000) {
                descuento = monto * 0.20;
            } else if (monto >= 3000) {
                descuento = monto * 0.30;
            } else if (monto >= 4000) {
                descuento = monto * 0.40;
            } else if (monto >= 5000) {
                descuento = monto * 0.50;
            }
            subtotal = monto;
            total = monto - descuento;
            venta.RegistrarVenta(subtotal, total, idCliente, idUsuario);
            generarDetalle(TablaVenta);
            LabelTotal.setText("-----");
            ventaAutorizada = true;
        } else {
            JOptionPane.showMessageDialog(null, "Noy productos en la venta");
            ventaAutorizada = false;
        }
    }

//Genera un detalle de la venta generada
    private void generarDetalle(JTable TablaVenta) throws SQLException, DocumentException, IOException {
        for (int i = 0; i < TablaVenta.getRowCount(); i++) {//Recorre toda slas filas de la tabla ventas
            String codigo = TablaVenta.getValueAt(i, 0).toString();//Obtiene el codigo del producto en cuestion
            int cantidad = Integer.parseInt(TablaVenta.getValueAt(i, 2).toString());//obtiene la cantidad
            double precioU = Double.parseDouble(TablaVenta.getValueAt(i, 3).toString());//precio unitario
            double total = Double.parseDouble(TablaVenta.getValueAt(i, 4).toString());//Precio total del producto * la cantidad
            venta.RegistrarDetalle(codigo, cantidad, precioU, total);//Registra los detalles en la base de datos
        }
    }

    public int buscarCliente(String curp, JTextField nombre) throws SQLException {//Busca un cliente en la base de datos por su curp
        if (validarCurp(curp)) {//Valida que la curp sea real
            ResultSet rs = client.Buscarcliente(curp);//Busca el cliente en cuestion
            if (rs.next()) {//Si lo encuentra, escribe el nombre en el campo de nombrey obtiene el idCliente
                nombre.setText(rs.getString("nombre") + " " + rs.getString("apellido_P") + " " + rs.getString("apellido_M"));
                correo = rs.getString("correo");
                return rs.getInt("idCliente");
            } else {//Si no lo encuentra avisa al usuario y devuelve 0
                JOptionPane.showMessageDialog(null, "No se ha encontrado un cliente con esta curp");
                return 0;
            }
        } else {
            return 0;
        }
    }

    //Abre un documento pdf seleccionado por el usuario
    public void abrirPDF(JTable tabla) {
        if (tabla.getSelectedRow() >= 0) {
            String id = tabla.getValueAt(tabla.getSelectedRow(), 0).toString();
            File file = new File("C:/Users/victo/OneDrive/Documentos/tickets de venta/venta " + id + ".pdf");
            if (file.exists()) { // Verifica si el archivo existe antes de abrirlo
                try {
                    Desktop.getDesktop().open(file);
                } catch (IOException ex) {
                    ex.printStackTrace();
                    JOptionPane.showMessageDialog(null, "No se pudo abrir el archivo PDF.");
                }
            } else {
                JOptionPane.showMessageDialog(null, "El ticket de venta ha sido eliminado o no se encuentra en la ruta especificada.");
            }
        } else {
            JOptionPane.showMessageDialog(null, "No se ha seleccionado un elemento.");
        }
    }

//Estos métodos buscan algun valor repetido en alguna de las tablas antes de hacer un registro
    private boolean buscarCURP(JTable tabla, String curp) {//Verficia que la curp ingresadda no se encuentre en la tabla
        boolean presente = false;
        for (int i = 0; i < tabla.getRowCount(); i++) {//Recorre todas las filas de la tabla
            String curpTabla = tabla.getValueAt(i, 1).toString();//La curp siempre estará en la columan 1 en cualquier tabla
            if (curpTabla.equals(curp)) {//Verifica que la curp ya esté registrada en la tabla, de ser asi, devuelve TRUE
                JOptionPane.showMessageDialog(null, "Esta CURP ya está registrada.");
                presente = true;
                break;
            } else {
                presente = false;
            }
        }
        return presente;
    }

    private boolean buscarCorreo(JTable tabla, String correo) {//Verficia que la curp ingresadda no se encuentre en la tabla
        boolean presente = false;
        for (int i = 0; i < tabla.getRowCount(); i++) {//Recorre todas las filas de la tabla
            String correoTabla = tabla.getValueAt(i, 6).toString();//El correo siempre estará en la columan 6 en cualquier tabla
            if (correoTabla.equals(correo)) {//Verifica que la curp ya esté registrada en la tabla, de ser asi, devuelve TRUE
                JOptionPane.showMessageDialog(null, "Este correo ya está registrado.");
                presente = true;
                break;
            } else {
                presente = false;
            }
        }
        return presente;
    }

    private boolean buscarTelefono(JTable tabla, String tel) {//Verficia que el teléfono ingresaddo no se encuentre en la tabla
        boolean presente = false;
        for (int i = 0; i < tabla.getRowCount(); i++) {//Recorre todas las filas de la tabla
            int columna = 0;
            if (tabla.getName().equalsIgnoreCase("Proveedores")) {
                columna = 2;
            } else {
                columna = 4;
            }
            String telTabla = "";//Declara una variable para almacenar el telefono en la tabla
            telTabla = tabla.getValueAt(i, columna).toString();//Obtiene el telefono de la tabla
            if (telTabla.equals(tel)) {//Si el telefono ya está en la tabla, rompe el cico y devuelve TRUE
                JOptionPane.showMessageDialog(null, "Este teléfono ya está registrado.");
                presente = true;
                break;
            } else {
                presente = false;
            }
        }
        return presente;
    }

//Estos métodos validan que una cadena cumpla con ciertas condiciones
    private boolean validarCurp(String curp) {//Valida un curp
        if (curp.matches("[A-Z]{4}[0-9]{6}[H,M][A-Z]{5}[0-9]{2}")) {
            return true;
        } else {
            JOptionPane.showMessageDialog(null, "El CURP ingresado es inválido.");
            return false;
        }
    }

    private boolean validarTelefono(String tel) {//Valida un telefono
        if (tel.matches("[0-9]{10}")) {
            return true;
        } else {
            JOptionPane.showMessageDialog(null, "El número telefonico debe ser de 10 digitos.");
            return false;
        }
    }

    private boolean validarDireccion(String dir) {//Valida una dirección
        if (dir.matches("^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ\\s]+,[\\s]*[0-9]+,[\\s]*[0-9]{5},[\\s]*[a-zA-ZáéíóúÁÉÍÓÚñÑ\\s]+$")) {
            return true;
        } else {
            JOptionPane.showMessageDialog(null, "La dirección debe ser con el siguiente formato: calle, número, código postal, ciudad (separado por comas).");
            return false;
        }
    }

    private boolean validarContraseña(String password) {
        if (password.matches("^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{10,}$")) {
            return true;
        } else {
            JOptionPane.showMessageDialog(null, "La contraseña debe tener al menos 10 caracteres y contener al menos una letra mayúscula, una letra minúscula, un número y un caracter especial (!@#$&*).");
            return false;
        }
    }

    public boolean buscarProducto(String codigoBarras) throws SQLException {
        System.out.println(codigoBarras);
        ResultSet rs = prod.BuscarProdID(codigoBarras);//Busca el producto por su codigo o nombre en la base de datos
        if (rs.next()) {
            nombre = rs.getString("nombre");
            precio = rs.getDouble("precioVenta");//Cambia el precio del producto en la interfas
            stock = rs.getInt("cantidad");//Cambia el stock en la interfaz
            return true;
        } else {
            JOptionPane.showMessageDialog(null, "No existe este producto.");
            return false;
        }
    }

    public void sumarCantidad(JTable tabla, JTextField txtCantidadVenta, JLabel total) {
        if (tabla.getSelectedRow() < 0) {//verifica que haya un producto seleccionado en la tabla
            JOptionPane.showMessageDialog(null, "Seleccione un producto en la tabla");
        } else {
            int cantidadTabla = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 2).toString());//Obtiene la cantidad de producto que estaba en la tabla
            int cantidadNueva = Integer.parseInt(txtCantidadVenta.getText());//Obtiene la cantidad nueva ingresada por el usuario.
            cantidadNueva += cantidadTabla;//Suma las cantidades
            tabla.setValueAt(cantidadNueva, tabla.getSelectedRow(), 2);//Establece la nueva cantidad en la tabla
            TotalPagar(tabla, total);//vuelve a sumar el total de la venta
            txtCantidadVenta.setText("");//Borra la cantidad del campo de cantidad
        }

    }

    public void buscarProd(JTable tabla, String codigoBarras, JDateChooser vencimiento, JTextField txtCodProd, JTextField txtNombreProd, JTextField txtCantProd, JTextField txtPrecioCompra, JTextField txtPrecioVenta, JComboBox<String> comboProveedor, JComboBox<String> comboCategoria) throws ParseException {
        for (int i = 0; i < tabla.getRowCount(); i++) {
            String codigoTabla = tabla.getValueAt(i, 0).toString();//Obtiene el codigo presente en la tabla
            //Si el código ingresado ya está presente en la tabla, extrae los datos de dicho producto

            System.out.println(codigoBarras + " codigo");
            if (codigoBarras.equals(codigoTabla)) {
                txtNombreProd.setText(tabla.getValueAt(i, 1).toString());
                txtCantProd.setText(tabla.getValueAt(i, 7).toString());
                txtPrecioCompra.setText(tabla.getValueAt(i, 5).toString());
                txtPrecioVenta.setText(tabla.getValueAt(i, 6).toString());
                comboProveedor.setSelectedItem(tabla.getValueAt(i, 2));
                String fechaString = tabla.getValueAt(i, 4).toString();
                SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); // crea el objeto SimpleDateFormat con el formato deseado
                java.util.Date fechaDate = formato.parse(fechaString); // convierte el String a un objeto Date
                vencimiento.setDate(fechaDate);//Establece la fecha de vencimiento en el JDateChooser
                break;//Rompe la iteración.
            }
        }
    }

    public String keyTyped(KeyEvent evt, Eventos event, String codigo) {
        if (evt.getKeyChar() == '\n') { // Verifica si se ingresó un carácter de nueva línea
            evt.consume(); // Consume el evento para que no se procese nuevamente
        }
        return codigo; // Obtiene el texto ingresado en el JTextField
    }
}
