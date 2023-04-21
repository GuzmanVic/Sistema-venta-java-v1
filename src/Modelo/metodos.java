package Modelo;

import Vista.Sistema;
import com.itextpdf.text.BaseColor;
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
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JLabel;
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
        JTextField[] camposTexto = {curp, nombre, apellidos, telefono, direccion};
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
                fila = new Object[6];
                while (rs.next()) {
                    String nombre = rs.getString("nombre") + " " + rs.getString("apellidoP") + " " + rs.getString("apellidoM");;
                    fila[0] = rs.getString("idEmpleado");
                    fila[1] = nombre;
                    fila[2] = rs.getString("curp");
                    fila[3] = rs.getString("direccion");
                    fila[4] = rs.getString("telefono");
                    fila[5] = rs.getString("acceso");
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

    public void addUpdEmpleado(JTable tabla, JTextField correo, JTextField nombre, JTextField apellidos, JTextField curp, JTextField telefono, JTextField direccion, JPasswordField contraseña, JComboBox<String> combo, boolean caso) throws SQLException {
        if (curp.getText().isEmpty() || telefono.getText().isEmpty() || direccion.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Los campos estan vacios");
        } else {
            if (caso) {
                if (correo.getText().isEmpty() || nombre.getText().isEmpty() || apellidos.getText().isEmpty() || contraseña.getText().isEmpty()) {
                    if (enviarCorreo(correo.getText())) {
                        ArrayList<String> apellidosS = separarApellidos(apellidos.getText());//Ejecuta un metodo para separar apellidos y los almacena en un array
                        usuario.registrar(correo.getText(), nombre.getText(), apellidosS.get(0), apellidosS.get(1), telefono.getText(), contraseña.getText(), combo.getSelectedItem().toString());
                        empleado.registrarEmpleado(nombre.getText(), apellidosS.get(0), apellidosS.get(1), curp.getText(), direccion.getText());
                    }

                }
            } else {
                int id = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 0).toString());
                empleado.modificar(id, curp.getText(), telefono.getText(), direccion.getText());
            }
            listarTablas(tabla);
            limpiarEmpleado(correo, nombre, apellidos, curp, telefono, direccion, contraseña);
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

    public void clickTablaEmpleados(JTable tabla, JTextField correo, JTextField nombre, JTextField apellidos, JTextField curp, JTextField tel, JTextField dir, JPasswordField pass, JComboBox<String> combo) {
        int fila = tabla.getSelectedRow();
        correo.setEnabled(false);
        nombre.setEnabled(false);
        apellidos.setEnabled(false);
        curp.setText(tabla.getValueAt(fila, 2).toString());
        dir.setText(tabla.getValueAt(fila, 3).toString());
        tel.setText(tabla.getValueAt(fila, 4).toString());
        combo.setSelectedItem(tabla.getValueAt(fila, 5).toString());
    }

    public void llenarCombos(JComboBox<String> combo, JComboBox<String> combo2, JComboBox<String> combo3, JComboBox<String> combo4) throws SQLException {
        ResultSet rs = proveedor.ListarProveedor();
        while (rs.next()) {
            combo.addItem(rs.getString("nombre"));
        }
        rs.close();
        rs = proveedor.listarCategoria();
        while (rs.next()) {
            combo2.addItem(rs.getString("descripcion"));
        }
        rs.close();
        rs = prod.ListarProductos();
        while (rs.next()) {
            combo3.addItem(rs.getString("serie"));
        }
        rs.close();
        rs = prod.ListarProductos();
        while (rs.next()) {
            combo4.addItem(rs.getString("nombre"));
        }
        rs.close();
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

    private boolean enviarCorreo(String correo) {
        return true;
    }

    public void comboListener(JComboBox<String> combo, JComboBox<String> combo2, JTextField precio, JTextField stock) throws SQLException {
        combo.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    ResultSet rs = prod.BuscarProd(combo.getName(), combo.getSelectedItem().toString());
                    if (rs.next()) {
                        if (combo.getName().equalsIgnoreCase("Codigos")) {
                            combo2.setSelectedItem(rs.getString("nombre"));
                        } else {
                            combo2.setSelectedItem(rs.getString("serie"));
                        }
                        precio.setText(rs.getString("precioVenta"));
                        stock.setText(rs.getString("cantidad"));
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(metodos.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        });
    }

    public void addProdVenta(JTable tabla, JTextField cantidad, JTextField stock, JComboBox<String> comboCodProd, JComboBox<String> comboNombreProd,
            JTextField precioVenta, JLabel totalPagar) throws SQLException {
        modelo = (DefaultTableModel) tabla.getModel();//Obtiene el modelo de la tabla venta
        Object[] fila = new Object[5];
        int cant = Integer.parseInt(cantidad.getText());
        double precio = Double.parseDouble(precioVenta.getText());
        double total = cant * precio;
        fila[0] = comboCodProd.getSelectedItem().toString();
        fila[1] = comboNombreProd.getSelectedItem().toString();
        fila[2] = cantidad.getText();
        fila[3] = precioVenta.getText();
        fila[4] = total;
        modelo.addRow(fila);
        TotalPagar(tabla, totalPagar);
        prod.addProdVenta(fila[0].toString(), cant);
        stock.setText(String.valueOf(Integer.parseInt(stock.getText()) - cant));//Resta la cantidad en stock en la interfaz
    }

    public void TotalPagar(JTable tabla, JLabel total) {
        double Totalpagar = 0.00;
        int numFila = tabla.getRowCount();
        for (int i = 0; i < numFila; i++) {
            double cal = Double.parseDouble(String.valueOf(tabla.getModel().getValueAt(i, 4)));
            Totalpagar = Totalpagar + cal;
        }
        total.setText(String.format("%.2f", Totalpagar));
    }

    public void eliminarProdVenta(JTable tabla) throws SQLException {
        int cantidad = Integer.parseInt(tabla.getValueAt(tabla.getSelectedRow(), 2).toString());
        prod.sumarProd(tabla.getValueAt(tabla.getSelectedRow(), 0).toString(), cantidad);
        modelo = (DefaultTableModel) tabla.getModel();
        modelo.removeRow(tabla.getSelectedRow());
    }

    public void pdf() throws FileNotFoundException, DocumentException, IOException {
        File file = new File("src/pdf/venta" + idVenta + ".pdf");// Se crea un objeto File con la ruta y nombre del archivo PDF que se va a generar

//Se crean los objetos necesarios para generar el documento del ticket de venta
        try (FileOutputStream archivo = new FileOutputStream(file) // Se crea un objeto FileOutputStream con el archivo anteriormente creado para escribir en él
                ) {
            Document doc = new Document();// Se crea un objeto Document que representa el documento PDF
            PdfWriter.getInstance(doc, archivo);// Se crea un objeto PdfWriter con el Document y el FileOutputStream para escribir en el documento PDF
            doc.open();//Se abre el documento para empezar a escribir en el
            Image img = Image.getInstance("src/img/logo.png");//Se agarra una imagen
            img.scaleAbsolute(100, 100);//escala la imagen
            img.setAlignment(Element.ALIGN_CENTER);//alinea la imagen al centro
            Font negrita = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD, BaseColor.BLACK);//Se establece una fuente en negrita

            Paragraph encabezado = new Paragraph();//Se crea una seccion para el encabezado del documento
            //Se agrega la informacion de la empresa en el encabezado
            encabezado.add(img);//Se agrega la imagen al encabezado
            encabezado.add(nombreInfo.getText() + "\n" + direccionInfo.getText() + "\n");
            encabezado.add(fechaActual + "  " + horaActual + "\n\n");//Se agrega la fecha y hora actual al encabezado
            encabezado.setAlignment(Element.ALIGN_CENTER);
            encabezado.add("________________________________________________________________________________________________________________________");
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
            for (int i = 0; i < tablaVenta.getRowCount(); i++) {
                String descripcion = tablaVenta.getValueAt(i, 1).toString();
                String cantidad = tablaVenta.getValueAt(i, 2).toString();
                String precio = tablaVenta.getValueAt(i, 3).toString();
                String precioT = tablaVenta.getValueAt(i, 4).toString();
                tablaProd.addCell(cantidad);
                tablaProd.addCell(descripcion);
                tablaProd.addCell(precio);
                tablaProd.addCell(precioT);
            }
            doc.add(tablaProd);//Se agregan todos los productos al ticket
//Se crea una seccion para escribir el total en el ticket
            Paragraph total = new Paragraph();
            total.add(Chunk.NEWLINE);//Salto de linea
            total.add("________________________________________________________________________________________________________________________");
            total.add("Total " + lblTotal.getText() + "\n");
            total.add("Descuento: " + method.desc + "\n");
            total.add("Subtotal " + subtotal);
            total.setAlignment(Element.ALIGN_RIGHT);
            doc.add(total);//Se agrega la seccion al ticket
//Se crea una seccion para la informacion del cliente
            Paragraph Cliente = new Paragraph();
            Cliente.setAlignment(Element.ALIGN_CENTER);
            String cliente = "Cliente";
            if (!txtNombreClienteVenta.getText().isEmpty()) {
                cliente = txtNombreClienteVenta.getText();
            }
            Cliente.add("Apreciable: " + cliente + "\n");
            Cliente.add("Le atendió: " + usuario);
            Cliente.add("Que tenga un excelente día");
            doc.add(Cliente);//Se agrega la informacon del cliente al ticket
//Se crea una seccion para agregar la firma del cliente al ticket 
            Paragraph firma = new Paragraph();
            firma.add(Chunk.NEWLINE);
            firma.add("Cancelación y firma\n\n");
            firma.add("-------------------");
            firma.setAlignment(Element.ALIGN_CENTER);
            doc.add(firma);//Se agrega la firma al ticket
//Se crea una seccion para escribir un mensaje estattico al final del ticket
            Paragraph mensaje = new Paragraph();
            mensaje.add(Chunk.NEWLINE);//Salto de linea
            mensaje.add("Gracias por su compra" + "\n");
            mensaje.add("Para mayor información acerca del tratamiento de sus datos, usted puede consultar la version integral del aviso de privacidad, "
                    + "asi como todo lo relacionado a servicio a domicilio y atención a clientes");
            mensaje.add("\n ATENCIÓN A CLIENTES " + telefonoInfo.getText());
            mensaje.setAlignment(Element.ALIGN_CENTER);
            doc.add(mensaje);//Se agrega el mensaje al ticket

            doc.close();//Se cierra el documento, indicando que ya se dejo de escribir en el
        } // Se crea un objeto Document que representa el documento PDF
        Desktop.getDesktop().open(file);//Se abre el documento automaticamente

    }
}
