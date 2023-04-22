package Vista;

import Modelo.ClienteDao;
import Modelo.Combo;
import Modelo.ConfigDao;
import Modelo.Eventos;
import Modelo.LoginDAO;
import Modelo.ProductosDao;
import Modelo.ProveedorDao;
import Modelo.VentaDao;
import Modelo.login;
import Modelo.metodos;
import Reportes.Grafico;
import com.itextpdf.text.DocumentException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public final class Sistema extends javax.swing.JFrame {

    Date fechaVenta = new Date();//Almacena la fecha de venta
    String fechaActual = new SimpleDateFormat("dd/MM/yyyy").format(fechaVenta);//Almacena la fecha actual
    ProveedorDao PrDao = new ProveedorDao();
    ProductosDao proDao = new ProductosDao();
    VentaDao Vdao = new VentaDao();
    ConfigDao conf = new ConfigDao();
    Eventos event = new Eventos();
    DefaultTableModel tmp = new DefaultTableModel();
    int item;
    double Totalpagar = 0.00;
    metodos method = new metodos();
    int idUsuario = 8;

    public Sistema(int idUsuario) throws SQLException {
        initComponents();
//        this.idUsuario = idUsuario;
        //Establece los nombres de las tablas en el sistema para un facil manejo de estas
        tablaClientes.setName("Clientes");
        TablaVenta.setName("Venta");
        TablaProveedores.setName("Proveedores");
        TablaProductos.setName("Productos");
        TablaVentas.setName("Ventas");
        TablaUsuarios.setName("Usuarios");
        TablaEmpleados.setName("Empleados");
        comboCodProd.setName("Codigos");
        comboNombreProd.setName("Nombres");
        //Importa los datos de la BDD para llenar todas las tablas al iniciar el sistema
        method.llenarCombos(comboProveedor, comboCategoria, comboCodProd, comboNombreProd);
        method.comboListener(comboCodProd, comboNombreProd, txtPrecioVenta, txtStock);
        method.comboListener(comboNombreProd, comboCodProd, txtPrecioVenta, txtStock);
        method.actualizarInfo(txtNombreInfo, txtCorreoInfo, txtDireccionInfo, txtTelefonoInfo, txtWebInfo);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btnNuevaVenta = new javax.swing.JButton();
        btnClientes = new javax.swing.JButton();
        btnProveedor = new javax.swing.JButton();
        btnProductos = new javax.swing.JButton();
        btnVentas = new javax.swing.JButton();
        btnConfig = new javax.swing.JButton();
        tipo = new javax.swing.JLabel();
        btnUsuarios = new javax.swing.JButton();
        btnEmpleados = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        pane = new javax.swing.JTabbedPane();
        panelVenta = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtCantidadVenta = new javax.swing.JTextField();
        txtPrecioVenta = new javax.swing.JTextField();
        txtStock = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        TablaVenta = new javax.swing.JTable();
        btnEliminarventa = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txtNombreClienteventa = new javax.swing.JTextField();
        btnGenerarVenta = new javax.swing.JButton();
        jLabel10 = new javax.swing.JLabel();
        LabelTotal = new javax.swing.JLabel();
        btnGraficar = new javax.swing.JButton();
        Midate = new com.toedter.calendar.JDateChooser();
        jLabel11 = new javax.swing.JLabel();
        txtCurpVenta = new javax.swing.JTextField();
        comboCodProd = new javax.swing.JComboBox<>();
        comboNombreProd = new javax.swing.JComboBox<>();
        panelCliente = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tablaClientes = new javax.swing.JTable();
        jPanel9 = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        txtCurpCliente = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        txtNombreCliente = new javax.swing.JTextField();
        txtTelefonoCliente = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        txtDireccionCliente = new javax.swing.JTextField();
        btnGuardarCliente = new javax.swing.JButton();
        btnEditarCliente = new javax.swing.JButton();
        btnEliminarCliente = new javax.swing.JButton();
        btnNuevoCliente = new javax.swing.JButton();
        apellidos = new javax.swing.JLabel();
        txtApellidosCliente = new javax.swing.JTextField();
        panelProveedor = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        TablaProveedores = new javax.swing.JTable();
        jPanel10 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        txtNombreproveedor = new javax.swing.JTextField();
        jLabel19 = new javax.swing.JLabel();
        txtTelefonoProveedor = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        txtDireccionProveedor = new javax.swing.JTextField();
        btnguardarProveedor = new javax.swing.JButton();
        btnEditarProveedor = new javax.swing.JButton();
        btnNuevoProveedor = new javax.swing.JButton();
        btnEliminarProveedor = new javax.swing.JButton();
        panelProducto = new javax.swing.JPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        TablaProductos = new javax.swing.JTable();
        jPanel11 = new javax.swing.JPanel();
        jLabel22 = new javax.swing.JLabel();
        txtCodProd = new javax.swing.JTextField();
        jLabel23 = new javax.swing.JLabel();
        txtNombreProd = new javax.swing.JTextField();
        jLabel24 = new javax.swing.JLabel();
        txtCantProd = new javax.swing.JTextField();
        jLabel25 = new javax.swing.JLabel();
        txtPrecioCompra = new javax.swing.JTextField();
        jLabel26 = new javax.swing.JLabel();
        comboProveedor = new javax.swing.JComboBox<>();
        btnGuardarpro = new javax.swing.JButton();
        btnEditarpro = new javax.swing.JButton();
        btnEliminarPro = new javax.swing.JButton();
        btnNuevoPro = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        comboCategoria = new javax.swing.JComboBox<>();
        jLabel17 = new javax.swing.JLabel();
        txtPrecioVentaProd = new javax.swing.JTextField();
        vencimiento = new com.toedter.calendar.JDateChooser();
        jLabel38 = new javax.swing.JLabel();
        panelVentas = new javax.swing.JPanel();
        jScrollPane5 = new javax.swing.JScrollPane();
        TablaVentas = new javax.swing.JTable();
        btnPdfVentas = new javax.swing.JButton();
        jLabel16 = new javax.swing.JLabel();
        panelDatos = new javax.swing.JPanel();
        btnActualizarConfig = new javax.swing.JButton();
        jLabel32 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        txtNombreInfo = new javax.swing.JTextField();
        jLabel28 = new javax.swing.JLabel();
        jLabel30 = new javax.swing.JLabel();
        txtDireccionInfo = new javax.swing.JTextField();
        txtTelefonoInfo = new javax.swing.JTextField();
        jLabel29 = new javax.swing.JLabel();
        txtWebInfo = new javax.swing.JTextField();
        jLabel31 = new javax.swing.JLabel();
        correolbl = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        txtCorreoInfo = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        panelUsuarios = new javax.swing.JPanel();
        jPanel13 = new javax.swing.JPanel();
        jLabel33 = new javax.swing.JLabel();
        jLabel34 = new javax.swing.JLabel();
        jLabel35 = new javax.swing.JLabel();
        txtCorreo = new javax.swing.JTextField();
        txtPass = new javax.swing.JPasswordField();
        btnIniciar = new javax.swing.JButton();
        jLabel36 = new javax.swing.JLabel();
        txtNombre = new javax.swing.JTextField();
        jLabel37 = new javax.swing.JLabel();
        cbxRol = new javax.swing.JComboBox<>();
        jScrollPane6 = new javax.swing.JScrollPane();
        TablaUsuarios = new javax.swing.JTable();
        panelEmpleados = new javax.swing.JPanel();
        jPanel14 = new javax.swing.JPanel();
        jLabel40 = new javax.swing.JLabel();
        jLabel41 = new javax.swing.JLabel();
        txtCorreoEmpleado = new javax.swing.JTextField();
        txtPassEmpleado = new javax.swing.JPasswordField();
        jLabel42 = new javax.swing.JLabel();
        txtApellidosEmpleado = new javax.swing.JTextField();
        jLabel43 = new javax.swing.JLabel();
        comboRol = new javax.swing.JComboBox<>();
        jLabelxd = new javax.swing.JLabel();
        txtNombreEmpleado = new javax.swing.JTextField();
        jLabel44 = new javax.swing.JLabel();
        txtTelefonoEmpledo = new javax.swing.JTextField();
        rol = new javax.swing.JLabel();
        txtCurpEmpleado = new javax.swing.JTextField();
        btnguardarEmpleado = new javax.swing.JButton();
        btnNuevoEmpleado = new javax.swing.JButton();
        btnEliminarEmpleado = new javax.swing.JButton();
        btnEditarEmpleado = new javax.swing.JButton();
        direccion = new javax.swing.JLabel();
        txtDireccionEmpleado = new javax.swing.JTextField();
        jScrollPane7 = new javax.swing.JScrollPane();
        TablaEmpleados = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(69, 8, 206));

        btnNuevaVenta.setBackground(new java.awt.Color(153, 153, 153));
        btnNuevaVenta.setForeground(new java.awt.Color(255, 255, 255));
        btnNuevaVenta.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Nventa.png"))); // NOI18N
        btnNuevaVenta.setText("Nueva Venta");
        btnNuevaVenta.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnNuevaVenta.setFocusable(false);
        btnNuevaVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevaVentaActionPerformed(evt);
            }
        });

        btnClientes.setBackground(new java.awt.Color(153, 153, 153));
        btnClientes.setForeground(new java.awt.Color(255, 255, 255));
        btnClientes.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Clientes.png"))); // NOI18N
        btnClientes.setText("Clientes");
        btnClientes.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnClientes.setFocusable(false);
        btnClientes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnClientesActionPerformed(evt);
            }
        });

        btnProveedor.setBackground(new java.awt.Color(153, 153, 153));
        btnProveedor.setForeground(new java.awt.Color(255, 255, 255));
        btnProveedor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/proveedor.png"))); // NOI18N
        btnProveedor.setText("Proveedor");
        btnProveedor.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnProveedor.setFocusable(false);
        btnProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnProveedorActionPerformed(evt);
            }
        });

        btnProductos.setBackground(new java.awt.Color(153, 153, 153));
        btnProductos.setForeground(new java.awt.Color(255, 255, 255));
        btnProductos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/producto.png"))); // NOI18N
        btnProductos.setText("Productos");
        btnProductos.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnProductos.setFocusable(false);
        btnProductos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnProductosMouseClicked(evt);
            }
        });
        btnProductos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnProductosActionPerformed(evt);
            }
        });

        btnVentas.setBackground(new java.awt.Color(153, 153, 153));
        btnVentas.setForeground(new java.awt.Color(255, 255, 255));
        btnVentas.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/compras.png"))); // NOI18N
        btnVentas.setText("Ventas");
        btnVentas.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnVentas.setFocusable(false);
        btnVentas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVentasActionPerformed(evt);
            }
        });

        btnConfig.setBackground(new java.awt.Color(153, 153, 153));
        btnConfig.setForeground(new java.awt.Color(255, 255, 255));
        btnConfig.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/config.png"))); // NOI18N
        btnConfig.setText("Config");
        btnConfig.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnConfig.setFocusable(false);
        btnConfig.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConfigActionPerformed(evt);
            }
        });

        tipo.setForeground(new java.awt.Color(255, 255, 255));

        btnUsuarios.setBackground(new java.awt.Color(153, 153, 153));
        btnUsuarios.setForeground(new java.awt.Color(255, 255, 255));
        btnUsuarios.setText("Usuarios");
        btnUsuarios.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnUsuarios.setFocusable(false);
        btnUsuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUsuariosActionPerformed(evt);
            }
        });

        btnEmpleados.setText("Empleados");
        btnEmpleados.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEmpleadosActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(btnNuevaVenta, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE)
            .addComponent(btnClientes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(btnProveedor, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(btnProductos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(btnVentas, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(btnConfig, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(btnUsuarios, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(74, 74, 74)
                .addComponent(tipo)
                .addContainerGap(126, Short.MAX_VALUE))
            .addComponent(btnEmpleados, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(168, 168, 168)
                .addComponent(tipo)
                .addGap(8, 8, 8)
                .addComponent(btnNuevaVenta, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnClientes, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnProductos, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnVentas, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnConfig, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnUsuarios, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnEmpleados, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 112, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 200, 650));

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/encabezado.png"))); // NOI18N
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 0, 870, 130));

        pane.setBackground(new java.awt.Color(255, 255, 255));

        panelVenta.setBackground(new java.awt.Color(102, 255, 204));
        panelVenta.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setText("Código");
        panelVenta.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, -1, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setText("Nombre");
        panelVenta.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 50, -1, -1));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setText("Cantidad");
        panelVenta.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 50, -1, -1));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("Precio");
        panelVenta.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 50, -1, -1));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 0, 255));
        jLabel7.setText("Stock Disponible");
        panelVenta.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 120, -1, -1));

        txtCantidadVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCantidadVentaActionPerformed(evt);
            }
        });
        txtCantidadVenta.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtCantidadVentaKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCantidadVentaKeyTyped(evt);
            }
        });
        panelVenta.add(txtCantidadVenta, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 70, 40, 30));

        txtPrecioVenta.setEditable(false);
        panelVenta.add(txtPrecioVenta, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 70, 80, 30));

        txtStock.setEditable(false);
        panelVenta.add(txtStock, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 110, 79, 30));

        TablaVenta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "CÓDIGO", "NOMBRE", "CANTIDAD", "PRECIO U.", "PRECIO TOTAL"
            }
        ));
        jScrollPane1.setViewportView(TablaVenta);
        if (TablaVenta.getColumnModel().getColumnCount() > 0) {
            TablaVenta.getColumnModel().getColumn(0).setPreferredWidth(60);
            TablaVenta.getColumnModel().getColumn(1).setPreferredWidth(100);
            TablaVenta.getColumnModel().getColumn(2).setPreferredWidth(40);
            TablaVenta.getColumnModel().getColumn(3).setPreferredWidth(50);
            TablaVenta.getColumnModel().getColumn(4).setPreferredWidth(60);
        }

        panelVenta.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 150, 1080, 191));

        btnEliminarventa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/eliminar.png"))); // NOI18N
        btnEliminarventa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEliminarventaActionPerformed(evt);
            }
        });
        panelVenta.add(btnEliminarventa, new org.netbeans.lib.awtextra.AbsoluteConstraints(780, 110, -1, 40));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jLabel8.setText("CURP");
        panelVenta.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(12, 352, -1, -1));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jLabel9.setText("Nombre");
        panelVenta.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 360, -1, -1));

        txtNombreClienteventa.setEditable(false);
        panelVenta.add(txtNombreClienteventa, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 380, 169, 30));

        btnGenerarVenta.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/print.png"))); // NOI18N
        btnGenerarVenta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGenerarVentaActionPerformed(evt);
            }
        });
        panelVenta.add(btnGenerarVenta, new org.netbeans.lib.awtextra.AbsoluteConstraints(453, 373, -1, 45));

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/money.png"))); // NOI18N
        jLabel10.setText("Total a Pagar:");
        panelVenta.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 377, -1, -1));

        LabelTotal.setText("-----");
        panelVenta.add(LabelTotal, new org.netbeans.lib.awtextra.AbsoluteConstraints(756, 381, -1, -1));

        btnGraficar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/torta.png"))); // NOI18N
        btnGraficar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGraficarActionPerformed(evt);
            }
        });
        panelVenta.add(btnGraficar, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 60, -1, -1));
        panelVenta.add(Midate, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 70, 210, 30));

        jLabel11.setText("Seleccionar:");
        panelVenta.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 50, -1, -1));
        panelVenta.add(txtCurpVenta, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 372, 220, 30));

        panelVenta.add(comboCodProd, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 70, 110, 30));

        panelVenta.add(comboNombreProd, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 70, 180, 30));

        pane.addTab("1", panelVenta);

        panelCliente.setBackground(new java.awt.Color(255, 255, 255));
        panelCliente.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tablaClientes.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "CURP", "NOMBRE", "APELLIDOS", "TELÉFONO", "DIRECCIÓN", "FECHA"
            }
        ));
        tablaClientes.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tablaClientesMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tablaClientes);
        if (tablaClientes.getColumnModel().getColumnCount() > 0) {
            tablaClientes.getColumnModel().getColumn(0).setPreferredWidth(10);
            tablaClientes.getColumnModel().getColumn(1).setPreferredWidth(50);
            tablaClientes.getColumnModel().getColumn(2).setResizable(false);
            tablaClientes.getColumnModel().getColumn(2).setPreferredWidth(100);
            tablaClientes.getColumnModel().getColumn(3).setHeaderValue("APELLIDOS");
            tablaClientes.getColumnModel().getColumn(4).setResizable(false);
            tablaClientes.getColumnModel().getColumn(4).setPreferredWidth(50);
            tablaClientes.getColumnModel().getColumn(5).setPreferredWidth(80);
        }

        panelCliente.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 50, 660, 330));

        jPanel9.setBackground(new java.awt.Color(204, 204, 255));
        jPanel9.setBorder(javax.swing.BorderFactory.createTitledBorder("Registro Cliente"));

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel12.setText("CURP:");

        txtCurpCliente.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtCurpClienteKeyTyped(evt);
            }
        });

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel13.setText("Nombre:");

        jLabel14.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel14.setText("Télefono:");

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel15.setText("Dirección:");

        btnGuardarCliente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/GuardarTodo.png"))); // NOI18N
        btnGuardarCliente.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnGuardarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarClienteActionPerformed(evt);
            }
        });

        btnEditarCliente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Actualizar (2).png"))); // NOI18N
        btnEditarCliente.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnEditarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarClienteActionPerformed(evt);
            }
        });

        btnEliminarCliente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/eliminar.png"))); // NOI18N
        btnEliminarCliente.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnEliminarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEliminarClienteActionPerformed(evt);
            }
        });

        btnNuevoCliente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/nuevo.png"))); // NOI18N
        btnNuevoCliente.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnNuevoCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoClienteActionPerformed(evt);
            }
        });

        apellidos.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        apellidos.setText("Apellidos:");

        javax.swing.GroupLayout jPanel9Layout = new javax.swing.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addComponent(jLabel15)
                        .addGap(38, 38, 38)
                        .addComponent(txtDireccionCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 148, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel14)
                            .addComponent(apellidos, javax.swing.GroupLayout.PREFERRED_SIZE, 69, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(28, 28, 28)
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtTelefonoCliente, javax.swing.GroupLayout.DEFAULT_SIZE, 148, Short.MAX_VALUE)
                            .addComponent(txtApellidosCliente)))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(55, 55, 55)
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel9Layout.createSequentialGroup()
                                .addComponent(btnGuardarCliente)
                                .addGap(39, 39, 39)
                                .addComponent(btnEditarCliente))
                            .addGroup(jPanel9Layout.createSequentialGroup()
                                .addComponent(btnEliminarCliente)
                                .addGap(39, 39, 39)
                                .addComponent(btnNuevoCliente))))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel13)
                            .addComponent(jLabel12))
                        .addGap(46, 46, 46)
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtCurpCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtNombreCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 148, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel9Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12)
                    .addComponent(txtCurpCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(14, 14, 14)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(4, 4, 4)
                        .addComponent(jLabel13))
                    .addComponent(txtNombreCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtApellidosCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(apellidos))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTelefonoCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel14))
                .addGap(10, 10, 10)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(4, 4, 4)
                        .addComponent(jLabel15))
                    .addComponent(txtDireccionCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(16, 16, 16)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnGuardarCliente)
                    .addComponent(btnEditarCliente))
                .addGap(18, 18, 18)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnEliminarCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNuevoCliente))
                .addGap(29, 29, 29))
        );

        panelCliente.add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, 270, 330));

        pane.addTab("2", panelCliente);

        panelProveedor.setBackground(new java.awt.Color(255, 255, 255));
        panelProveedor.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        TablaProveedores.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "NOMBRE", "TELÉFONO", "DIRECCIÓN"
            }
        ));
        TablaProveedores.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TablaProveedoresMouseClicked(evt);
            }
        });
        jScrollPane3.setViewportView(TablaProveedores);
        if (TablaProveedores.getColumnModel().getColumnCount() > 0) {
            TablaProveedores.getColumnModel().getColumn(0).setPreferredWidth(20);
            TablaProveedores.getColumnModel().getColumn(1).setPreferredWidth(100);
            TablaProveedores.getColumnModel().getColumn(2).setPreferredWidth(50);
            TablaProveedores.getColumnModel().getColumn(3).setPreferredWidth(80);
        }

        panelProveedor.add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(285, 57, 660, 310));

        jPanel10.setBackground(new java.awt.Color(255, 204, 204));
        jPanel10.setBorder(javax.swing.BorderFactory.createTitledBorder("Nuevo Proveedor"));

        jLabel18.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel18.setText("Nombre:");

        jLabel19.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel19.setText("Teléfono:");

        jLabel20.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel20.setText("Dirección:");

        btnguardarProveedor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/GuardarTodo.png"))); // NOI18N
        btnguardarProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnguardarProveedorActionPerformed(evt);
            }
        });

        btnEditarProveedor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Actualizar (2).png"))); // NOI18N
        btnEditarProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarProveedorActionPerformed(evt);
            }
        });

        btnNuevoProveedor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/nuevo.png"))); // NOI18N
        btnNuevoProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoProveedorActionPerformed(evt);
            }
        });

        btnEliminarProveedor.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/eliminar.png"))); // NOI18N
        btnEliminarProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEliminarProveedorActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel10Layout = new javax.swing.GroupLayout(jPanel10);
        jPanel10.setLayout(jPanel10Layout);
        jPanel10Layout.setHorizontalGroup(
            jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel10Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addComponent(jLabel18)
                        .addGap(34, 34, 34)
                        .addComponent(txtNombreproveedor, javax.swing.GroupLayout.DEFAULT_SIZE, 141, Short.MAX_VALUE))
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel19)
                            .addComponent(jLabel20))
                        .addGap(24, 24, 24)
                        .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtTelefonoProveedor)
                            .addComponent(txtDireccionProveedor))))
                .addContainerGap())
            .addGroup(jPanel10Layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addComponent(btnEliminarProveedor)
                        .addGap(73, 73, 73)
                        .addComponent(btnNuevoProveedor))
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addComponent(btnguardarProveedor)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnEditarProveedor)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel10Layout.setVerticalGroup(
            jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel10Layout.createSequentialGroup()
                .addContainerGap(23, Short.MAX_VALUE)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel18)
                    .addComponent(txtNombreproveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel19)
                    .addComponent(txtTelefonoProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addGap(4, 4, 4)
                        .addComponent(jLabel20))
                    .addComponent(txtDireccionProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(44, 44, 44)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnguardarProveedor)
                    .addComponent(btnEditarProveedor))
                .addGap(17, 17, 17)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnEliminarProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNuevoProveedor))
                .addGap(28, 28, 28))
        );

        panelProveedor.add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, 260, 320));

        pane.addTab("3", panelProveedor);

        panelProducto.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        TablaProductos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "CODIGO", "NOMBRE", "PROVEEDOR", "FECHA INGRESO", "FECHA CADUCIDAD", "$ COMPRA", "$ VENTA", "STOCK", "CATEGORIA"
            }
        ));
        TablaProductos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TablaProductosMouseClicked(evt);
            }
        });
        jScrollPane4.setViewportView(TablaProductos);
        if (TablaProductos.getColumnModel().getColumnCount() > 0) {
            TablaProductos.getColumnModel().getColumn(0).setPreferredWidth(50);
            TablaProductos.getColumnModel().getColumn(1).setPreferredWidth(100);
            TablaProductos.getColumnModel().getColumn(2).setPreferredWidth(60);
            TablaProductos.getColumnModel().getColumn(5).setPreferredWidth(50);
            TablaProductos.getColumnModel().getColumn(7).setPreferredWidth(40);
        }

        panelProducto.add(jScrollPane4, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 50, 900, 330));

        jPanel11.setBackground(new java.awt.Color(255, 204, 255));
        jPanel11.setBorder(javax.swing.BorderFactory.createTitledBorder("Nuevo Producto"));

        jLabel22.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel22.setText("Código:");

        jLabel23.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel23.setText("Nombre:");

        jLabel24.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel24.setText("Cantidad:");

        jLabel25.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel25.setText("Precio de compra:");

        txtPrecioCompra.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtPrecioCompraKeyTyped(evt);
            }
        });

        jLabel26.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel26.setText("Proveedor:");

        comboProveedor.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                comboProveedorItemStateChanged(evt);
            }
        });
        comboProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboProveedorActionPerformed(evt);
            }
        });

        btnGuardarpro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/GuardarTodo.png"))); // NOI18N
        btnGuardarpro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarproActionPerformed(evt);
            }
        });

        btnEditarpro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Actualizar (2).png"))); // NOI18N
        btnEditarpro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarproActionPerformed(evt);
            }
        });

        btnEliminarPro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/eliminar.png"))); // NOI18N
        btnEliminarPro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEliminarProActionPerformed(evt);
            }
        });

        btnNuevoPro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/nuevo.png"))); // NOI18N
        btnNuevoPro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoProActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setText("Categoria:");

        jLabel17.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel17.setText("Precio de venta:");

        jLabel38.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel38.setText("Fecha de vencimiento");

        javax.swing.GroupLayout jPanel11Layout = new javax.swing.GroupLayout(jPanel11);
        jPanel11.setLayout(jPanel11Layout);
        jPanel11Layout.setHorizontalGroup(
            jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel11Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(btnGuardarpro)
                .addGap(3, 3, 3)
                .addComponent(btnEditarpro)
                .addGap(3, 3, 3)
                .addComponent(btnEliminarPro)
                .addGap(3, 3, 3)
                .addComponent(btnNuevoPro)
                .addGap(101, 101, 101))
            .addGroup(jPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel11Layout.createSequentialGroup()
                        .addComponent(jLabel24)
                        .addGap(20, 20, 20)
                        .addComponent(txtCantProd, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel11Layout.createSequentialGroup()
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel26, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(comboProveedor, 0, 143, Short.MAX_VALUE)
                            .addComponent(comboCategoria, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel11Layout.createSequentialGroup()
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel23)
                            .addComponent(jLabel22)
                            .addComponent(jLabel38))
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel11Layout.createSequentialGroup()
                                .addGap(28, 28, 28)
                                .addComponent(txtNombreProd, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel11Layout.createSequentialGroup()
                                .addGap(30, 30, 30)
                                .addComponent(txtCodProd, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel11Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(vencimiento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel11Layout.createSequentialGroup()
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jLabel17, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel25, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtPrecioCompra, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel11Layout.createSequentialGroup()
                                .addComponent(txtPrecioVentaProd)
                                .addGap(2, 2, 2)))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel11Layout.setVerticalGroup(
            jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel11Layout.createSequentialGroup()
                .addContainerGap(33, Short.MAX_VALUE)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel38, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(vencimiento, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(12, 12, 12)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel22)
                    .addComponent(txtCodProd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel23)
                    .addComponent(txtNombreProd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel24)
                    .addComponent(txtCantProd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel25)
                    .addComponent(txtPrecioCompra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtPrecioVentaProd, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel17))
                .addGap(9, 9, 9)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(comboProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel26))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(comboCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnGuardarpro)
                    .addComponent(btnEditarpro)
                    .addComponent(btnEliminarPro, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNuevoPro))
                .addGap(23, 23, 23))
        );

        panelProducto.add(jPanel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 250, 370));

        pane.addTab("4", panelProducto);

        panelVentas.setBackground(new java.awt.Color(255, 255, 102));
        panelVentas.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        TablaVentas.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "CLIENTE", "VENDEDOR", "SUBTOTAL", "TOTAL"
            }
        ));
        TablaVentas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TablaVentasMouseClicked(evt);
            }
        });
        jScrollPane5.setViewportView(TablaVentas);
        if (TablaVentas.getColumnModel().getColumnCount() > 0) {
            TablaVentas.getColumnModel().getColumn(0).setPreferredWidth(20);
            TablaVentas.getColumnModel().getColumn(1).setPreferredWidth(60);
            TablaVentas.getColumnModel().getColumn(2).setPreferredWidth(60);
            TablaVentas.getColumnModel().getColumn(4).setPreferredWidth(60);
        }

        panelVentas.add(jScrollPane5, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 80, 1130, 310));

        btnPdfVentas.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/pdf.png"))); // NOI18N
        btnPdfVentas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPdfVentasActionPerformed(evt);
            }
        });
        panelVentas.add(btnPdfVentas, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 40, -1, -1));

        jLabel16.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("Historial Ventas");
        panelVentas.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 50, 280, -1));

        pane.addTab("5", panelVentas);

        panelDatos.setBackground(new java.awt.Color(255, 255, 255));
        panelDatos.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnActualizarConfig.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Actualizar (2).png"))); // NOI18N
        btnActualizarConfig.setText("ACTUALIZAR");
        btnActualizarConfig.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnActualizarConfigActionPerformed(evt);
            }
        });
        panelDatos.add(btnActualizarConfig, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 320, -1, 35));

        jLabel32.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel32.setText("DATOS DE LA EMPRESA");
        panelDatos.add(jLabel32, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 40, -1, -1));

        jPanel8.setBackground(new java.awt.Color(153, 255, 204));

        jLabel28.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel28.setText("NOMBRE");

        jLabel30.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel30.setText("DIRECCIÓN");

        jLabel29.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel29.setText("TELÉFONO");

        jLabel31.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel31.setText("PÁGINA WEB");

        correolbl.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        correolbl.setText("CORREO");

        jTextField1.setText("jTextField1");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(correolbl)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(txtCorreoInfo, javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(txtTelefonoInfo, javax.swing.GroupLayout.DEFAULT_SIZE, 150, Short.MAX_VALUE)
                                    .addComponent(jLabel28, javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtNombreInfo))
                                .addComponent(jLabel29)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 35, Short.MAX_VALUE)
                        .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel30)
                            .addComponent(txtDireccionInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel31)
                            .addComponent(txtWebInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(79, 79, 79))))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel8Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel28)
                        .addGap(13, 13, 13)
                        .addComponent(txtNombreInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel30)
                        .addGap(13, 13, 13)
                        .addComponent(txtDireccionInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel29)
                        .addGap(13, 13, 13)
                        .addComponent(txtTelefonoInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addComponent(jLabel31)
                        .addGap(13, 13, 13)
                        .addComponent(txtWebInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(correolbl)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtCorreoInfo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(84, Short.MAX_VALUE))
        );

        panelDatos.add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 70, 420, 310));

        jLabel21.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/empresa.png"))); // NOI18N
        panelDatos.add(jLabel21, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 100, 410, 290));

        pane.addTab("6", panelDatos);

        panelUsuarios.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel13.setBackground(new java.awt.Color(255, 204, 255));

        jLabel33.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/iniciar.png"))); // NOI18N

        jLabel34.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel34.setForeground(new java.awt.Color(0, 0, 255));
        jLabel34.setText("Correo Electrónico");

        jLabel35.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel35.setForeground(new java.awt.Color(0, 0, 255));
        jLabel35.setText("Password");

        txtCorreo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCorreoActionPerformed(evt);
            }
        });

        btnIniciar.setBackground(new java.awt.Color(0, 0, 204));
        btnIniciar.setForeground(new java.awt.Color(255, 255, 255));
        btnIniciar.setText("Registrar");
        btnIniciar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnIniciar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnIniciarActionPerformed(evt);
            }
        });

        jLabel36.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel36.setForeground(new java.awt.Color(0, 0, 255));
        jLabel36.setText("Nombre:");

        jLabel37.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel37.setForeground(new java.awt.Color(0, 0, 255));
        jLabel37.setText("Rol:");

        cbxRol.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Administrador", "Asistente" }));

        javax.swing.GroupLayout jPanel13Layout = new javax.swing.GroupLayout(jPanel13);
        jPanel13.setLayout(jPanel13Layout);
        jPanel13Layout.setHorizontalGroup(
            jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel13Layout.createSequentialGroup()
                .addGroup(jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel13Layout.createSequentialGroup()
                        .addGap(97, 97, 97)
                        .addComponent(btnIniciar, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel13Layout.createSequentialGroup()
                        .addGap(30, 30, 30)
                        .addGroup(jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel36)
                            .addComponent(jLabel35)
                            .addComponent(jLabel34)
                            .addComponent(txtCorreo, javax.swing.GroupLayout.DEFAULT_SIZE, 226, Short.MAX_VALUE)
                            .addComponent(txtPass)
                            .addComponent(jLabel37)
                            .addComponent(txtNombre)
                            .addComponent(cbxRol, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel13Layout.createSequentialGroup()
                        .addGap(83, 83, 83)
                        .addComponent(jLabel33, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(24, Short.MAX_VALUE))
        );
        jPanel13Layout.setVerticalGroup(
            jPanel13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel13Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel33)
                .addGap(18, 18, 18)
                .addComponent(jLabel34)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtCorreo, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel35)
                .addGap(2, 2, 2)
                .addComponent(txtPass, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel36)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel37)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cbxRol, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 9, Short.MAX_VALUE)
                .addComponent(btnIniciar, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        panelUsuarios.add(jPanel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 40, 280, 380));

        TablaUsuarios.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Id", "Nombre", "Correo", "Rol"
            }
        ));
        jScrollPane6.setViewportView(TablaUsuarios);

        panelUsuarios.add(jScrollPane6, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 40, 860, 480));

        pane.addTab("7", panelUsuarios);

        panelEmpleados.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel14.setBackground(new java.awt.Color(255, 204, 255));

        jLabel40.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel40.setForeground(new java.awt.Color(0, 0, 255));
        jLabel40.setText("Correo Electrónico");

        jLabel41.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel41.setForeground(new java.awt.Color(0, 0, 255));
        jLabel41.setText("Password");

        txtCorreoEmpleado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCorreoEmpleadoActionPerformed(evt);
            }
        });

        jLabel42.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel42.setForeground(new java.awt.Color(0, 0, 255));
        jLabel42.setText("Nombre:");

        jLabel43.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel43.setForeground(new java.awt.Color(0, 0, 255));
        jLabel43.setText("Rol:");

        comboRol.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Administrador", "Asistente" }));

        jLabelxd.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabelxd.setForeground(new java.awt.Color(0, 0, 255));
        jLabelxd.setText("Apellidos:");

        jLabel44.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel44.setForeground(new java.awt.Color(0, 0, 255));
        jLabel44.setText("Teléfono");

        rol.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rol.setForeground(new java.awt.Color(0, 0, 255));
        rol.setText("CURP");

        btnguardarEmpleado.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/GuardarTodo.png"))); // NOI18N
        btnguardarEmpleado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnguardarEmpleadoActionPerformed(evt);
            }
        });

        btnNuevoEmpleado.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/nuevo.png"))); // NOI18N
        btnNuevoEmpleado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevoEmpleadoActionPerformed(evt);
            }
        });

        btnEliminarEmpleado.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/eliminar.png"))); // NOI18N

        btnEditarEmpleado.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Img/Actualizar (2).png"))); // NOI18N
        btnEditarEmpleado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarEmpleadoActionPerformed(evt);
            }
        });

        direccion.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        direccion.setForeground(new java.awt.Color(0, 0, 255));
        direccion.setText("Direccion");

        javax.swing.GroupLayout jPanel14Layout = new javax.swing.GroupLayout(jPanel14);
        jPanel14.setLayout(jPanel14Layout);
        jPanel14Layout.setHorizontalGroup(
            jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel14Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel14Layout.createSequentialGroup()
                        .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btnEliminarEmpleado)
                            .addGroup(jPanel14Layout.createSequentialGroup()
                                .addComponent(btnguardarEmpleado)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btnNuevoEmpleado)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnEditarEmpleado)
                        .addGap(37, 37, 37))
                    .addGroup(jPanel14Layout.createSequentialGroup()
                        .addComponent(jLabel43)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel14Layout.createSequentialGroup()
                        .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtPassEmpleado)
                            .addComponent(txtCorreoEmpleado)
                            .addGroup(jPanel14Layout.createSequentialGroup()
                                .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel41)
                                    .addComponent(jLabel40)
                                    .addComponent(jLabel42)
                                    .addComponent(txtNombreEmpleado, javax.swing.GroupLayout.DEFAULT_SIZE, 226, Short.MAX_VALUE)
                                    .addComponent(jLabelxd, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtApellidosEmpleado)
                                    .addComponent(jLabel44, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtTelefonoEmpledo)
                                    .addComponent(txtCurpEmpleado)
                                    .addComponent(rol, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(0, 0, Short.MAX_VALUE)))
                        .addContainerGap(24, Short.MAX_VALUE))
                    .addGroup(jPanel14Layout.createSequentialGroup()
                        .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(comboRol, 0, 226, Short.MAX_VALUE)
                            .addComponent(direccion, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtDireccionEmpleado))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel14Layout.setVerticalGroup(
            jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel14Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel40)
                .addGap(2, 2, 2)
                .addComponent(txtCorreoEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel41)
                .addGap(2, 2, 2)
                .addComponent(txtPassEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel42)
                .addGap(14, 14, 14)
                .addComponent(txtNombreEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabelxd)
                .addGap(14, 14, 14)
                .addComponent(txtApellidosEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel44)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtTelefonoEmpledo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rol)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtCurpEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(direccion)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtDireccionEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel43)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(comboRol, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel14Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnguardarEmpleado)
                    .addComponent(btnNuevoEmpleado)
                    .addComponent(btnEditarEmpleado))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnEliminarEmpleado)
                .addGap(35, 35, 35))
        );

        panelEmpleados.add(jPanel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 40, 280, 560));

        TablaEmpleados.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "NOMBRE", "CURP", "DIRECCIÓN", "TELEFONO", "ROL"
            }
        ));
        TablaEmpleados.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TablaEmpleadosMouseClicked(evt);
            }
        });
        jScrollPane7.setViewportView(TablaEmpleados);

        panelEmpleados.add(jScrollPane7, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 40, 860, 380));

        pane.addTab("7", panelEmpleados);

        getContentPane().add(pane, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 95, 1180, 640));

        pack();
    }// </editor-fold>//GEN-END:initComponents
//Actualiza la tabla clientes y posiciona al usuario en el panel de clientes
    private void btnClientesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnClientesActionPerformed
        try {
            method.listarTablas(tablaClientes);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
        pane.setSelectedIndex(1);
    }//GEN-LAST:event_btnClientesActionPerformed
//Actualiza la tabla proveedores y posiciona al usuario en el panel de proveedores
    private void btnProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnProveedorActionPerformed
        try {
            method.listarTablas(TablaProveedores);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
        pane.setSelectedIndex(2);
    }//GEN-LAST:event_btnProveedorActionPerformed
//Actualiza la tabla productos y posiciona al usuario en el panel de productos
    private void btnProductosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnProductosActionPerformed
        try {
            method.listarTablas(TablaProductos);
            pane.setSelectedIndex(3);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnProductosActionPerformed
//Abre el panel de venta
    private void btnNuevaVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevaVentaActionPerformed
        pane.setSelectedIndex(0);
    }//GEN-LAST:event_btnNuevaVentaActionPerformed
//Abre el panel de configuracion y actualiza la informacion del mismo
    private void btnConfigActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConfigActionPerformed
        pane.setSelectedIndex(5);
        try {
            method.listarInfo(txtNombreInfo, txtCorreoInfo, txtDireccionInfo, txtTelefonoInfo, txtWebInfo);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnConfigActionPerformed
//Actualiza la tabla ventas y posiciona al usuario en el panel de ventas
    private void btnVentasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVentasActionPerformed
        try {
            method.listarTablas(TablaVentas);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
        pane.setSelectedIndex(4);
    }//GEN-LAST:event_btnVentasActionPerformed
//Abre el panel de usuarios y actualiza la tabla
    private void btnUsuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUsuariosActionPerformed
        try {
            method.listarTablas(TablaUsuarios);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
        pane.setSelectedIndex(6);
    }//GEN-LAST:event_btnUsuariosActionPerformed

    private void btnProductosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnProductosMouseClicked
    }//GEN-LAST:event_btnProductosMouseClicked
    private void btnIniciarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnIniciarActionPerformed
        if (txtNombre.getText().equals("") || txtCorreo.getText().equals("") || txtPass.getPassword().equals("")) {
            JOptionPane.showMessageDialog(null, "Todo los campos son requeridos");
        } else {
            String correo = txtCorreo.getText();
            String pass = String.valueOf(txtPass.getPassword());
            String nom = txtNombre.getText();
            String rol = cbxRol.getSelectedItem().toString();
            JOptionPane.showMessageDialog(null, "Usuario Registrado");
        }
    }//GEN-LAST:event_btnIniciarActionPerformed
    private void txtCorreoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCorreoActionPerformed
    }//GEN-LAST:event_txtCorreoActionPerformed
//Actualiza/Añade la información de la empresa
    private void btnActualizarConfigActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnActualizarConfigActionPerformed
        try {
            method.actualizarInfo(txtNombreInfo, txtCorreoInfo, txtDireccionInfo, txtTelefonoInfo, txtWebInfo);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnActualizarConfigActionPerformed

    private void btnPdfVentasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPdfVentasActionPerformed

    }//GEN-LAST:event_btnPdfVentasActionPerformed

    private void TablaVentasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TablaVentasMouseClicked
        // TODO add your handling code here:
        int fila = TablaVentas.rowAtPoint(evt.getPoint());
    }//GEN-LAST:event_TablaVentasMouseClicked
//Limpia los campos de texto en el panel de productos
    private void btnNuevoProActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoProActionPerformed
        method.limpiarProd(txtCodProd, txtNombreProd, txtCantProd, txtPrecioCompra, txtPrecioVentaProd);
    }//GEN-LAST:event_btnNuevoProActionPerformed
//Elimina un producto de la base de datos
    private void btnEliminarProActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEliminarProActionPerformed
        try {
            method.eliminar(TablaProductos);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEliminarProActionPerformed
//Actualiza un producto en la base de datos
    private void btnEditarproActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarproActionPerformed
        try {
            method.addUpdProd(TablaProductos, vencimiento, txtCodProd, txtNombreProd, txtCantProd, txtPrecioCompra, txtPrecioVentaProd, comboProveedor, comboCategoria, false);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEditarproActionPerformed
//Guarda el producto ingresado en la base de datos
    private void btnGuardarproActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarproActionPerformed
        try {
            method.addUpdProd(TablaProductos, vencimiento, txtCodProd, txtNombreProd, txtCantProd, txtPrecioCompra, txtPrecioVentaProd, comboProveedor, comboCategoria, true);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnGuardarproActionPerformed

    private void comboProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboProveedorActionPerformed
    }//GEN-LAST:event_comboProveedorActionPerformed

    private void comboProveedorItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_comboProveedorItemStateChanged
    }//GEN-LAST:event_comboProveedorItemStateChanged

    private void txtPrecioCompraKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPrecioCompraKeyTyped
        // TODO add your handling code here:
        event.numberDecimalKeyPress(evt, txtPrecioCompra);
    }//GEN-LAST:event_txtPrecioCompraKeyTyped
//Se ejecuta al hacer click en un elemento de la tabla productos        
    private void TablaProductosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TablaProductosMouseClicked
        try {
            method.clickTablaProd(TablaProductos, vencimiento, txtCodProd, txtNombreProd, txtCantProd, txtPrecioCompra, txtPrecioVentaProd, comboProveedor, comboCategoria);
        } catch (ParseException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_TablaProductosMouseClicked
//Elimina un proveedor
    private void btnEliminarProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEliminarProveedorActionPerformed
        try {
            method.eliminar(TablaProveedores);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEliminarProveedorActionPerformed
//Limpia los campos de texto en el panel proveedor
    private void btnNuevoProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoProveedorActionPerformed
        method.limpiarProveedor(txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor);
    }//GEN-LAST:event_btnNuevoProveedorActionPerformed
//Actualiza un proveedor
    private void btnEditarProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarProveedorActionPerformed
        try {
            method.addUpdProveedor(TablaProveedores, txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor, false);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEditarProveedorActionPerformed
//Guardará un nuevo proveedor en la base de datos
    private void btnguardarProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnguardarProveedorActionPerformed
        try {
            method.addUpdProveedor(TablaProveedores, txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor, true);

        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnguardarProveedorActionPerformed
//Extrae los datos del proveedor seleccionado en la tabla
    private void TablaProveedoresMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TablaProveedoresMouseClicked
        method.clickTablaProveedores(TablaProveedores, txtNombreproveedor, txtTelefonoProveedor, txtDireccionProveedor);
    }//GEN-LAST:event_TablaProveedoresMouseClicked
//Limpia los campos del panel clientes
    private void btnNuevoClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoClienteActionPerformed
        method.limpiarCliente(txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente, txtDireccionCliente);
    }//GEN-LAST:event_btnNuevoClienteActionPerformed
//Elimina un cliente de la  base de datos
    private void btnEliminarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEliminarClienteActionPerformed
        try {
            method.eliminar(tablaClientes);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEliminarClienteActionPerformed
//Actualiza la informacion de un cliente
    private void btnEditarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarClienteActionPerformed
        if (tablaClientes.getSelectedRow() < 0) {
            JOptionPane.showMessageDialog(null, "seleccione una fila");
        } else {
            try {
                method.addUpdClientes(tablaClientes, txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente, txtDireccionCliente, false);
            } catch (SQLException ex) {
                Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_btnEditarClienteActionPerformed
//Guarda un cliente en la base de datos
    private void btnGuardarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarClienteActionPerformed
        try {
            method.addUpdClientes(tablaClientes, txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente, txtDireccionCliente, true);

        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnGuardarClienteActionPerformed

    private void txtCurpClienteKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCurpClienteKeyTyped

    }//GEN-LAST:event_txtCurpClienteKeyTyped
//Al hacer click en un elemento de la tabla clientes extrae sus datos y los pone en los campos de texto en el panel clientes
    private void tablaClientesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tablaClientesMouseClicked
        method.clickTablaClientes(tablaClientes, txtCurpCliente, txtNombreCliente, txtApellidosCliente, txtTelefonoCliente, txtDireccionCliente);
    }//GEN-LAST:event_tablaClientesMouseClicked
//Grafica un informe de ventas
    private void btnGraficarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGraficarActionPerformed
        String fechaReporte = new SimpleDateFormat("dd/MM/yyyy").format(Midate.getDate());
        Grafico.Graficar(fechaReporte);

    }//GEN-LAST:event_btnGraficarActionPerformed
//Realiza una nueva venta
    private void btnGenerarVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGenerarVentaActionPerformed
        try {
            method.generarVenta(TablaVenta, txtCurpVenta, LabelTotal, idUsuario);
            method.pdf(TablaVenta, txtNombreInfo.getText(), txtDireccionInfo.getText(), LabelTotal.getText(), txtCurpVenta.getText(), txtTelefonoInfo.getText(), idUsuario);
        } catch (SQLException | DocumentException | IOException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnGenerarVentaActionPerformed
    //elimina un prducto de la tabla de venta
    private void btnEliminarventaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEliminarventaActionPerformed
        try {
            // TODO add your handling code here:
            method.eliminarProdVenta(TablaVenta,txtStock,comboCodProd);
            method.TotalPagar(TablaVenta, LabelTotal);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEliminarventaActionPerformed
//Controla que el txt de cantidad solo acepte valores numéricos
    private void txtCantidadVentaKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCantidadVentaKeyTyped
        // TODO add your handling code here:
        event.numberKeyPress(evt);
    }//GEN-LAST:event_txtCantidadVentaKeyTyped

    private void txtCantidadVentaKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtCantidadVentaKeyPressed
        /*
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            if (!"".equals(txtCantidadVenta.getText())) {
                double precio = Double.parseDouble(txtPrecioVenta.getText());
                int stock = Integer.parseInt(txtStock.getText());
                item = item + 1;
                tmp = (DefaultTableModel) TablaVenta.getModel();
                for (int i = 0; i < TablaVenta.getRowCount(); i++) {
                    JOptionPane.showMessageDialog(null, "El producto ya esta registrado");
                    return;
                }
                ArrayList lista = new ArrayList();
                lista.add(item);
                Object[] O = new Object[5];
                O[0] = lista.get(1);
                O[1] = lista.get(2);
                O[2] = lista.get(3);
                O[3] = lista.get(4);
                O[4] = lista.get(5);
                tmp.addRow(O);
                TablaVenta.setModel(tmp);
                TotalPagar();
                LimparVenta();
                JOptionPane.showMessageDialog(null, "Stock no disponible");
            } else {
                JOptionPane.showMessageDialog(null, "Ingrese Cantidad");
            }
        }
         */
    }//GEN-LAST:event_txtCantidadVentaKeyPressed

    private void txtCorreoEmpleadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCorreoEmpleadoActionPerformed

    }//GEN-LAST:event_txtCorreoEmpleadoActionPerformed
//Actualiza la tabla empleados y posiciona al usuario en el panel empleados
    private void btnEmpleadosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEmpleadosActionPerformed
        try {
            pane.setSelectedIndex(7);
            method.listarTablas(TablaEmpleados);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEmpleadosActionPerformed
//Guarda un empleado en la base de datos
    private void btnguardarEmpleadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnguardarEmpleadoActionPerformed
        try {
            method.addUpdEmpleado(TablaEmpleados, txtCorreoEmpleado, txtNombreEmpleado, txtApellidosEmpleado, txtCurpEmpleado, txtTelefonoEmpledo, txtDireccionEmpleado, txtPassEmpleado, comboRol, true);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnguardarEmpleadoActionPerformed
//Extrae los datos del elemento seleccionado la tabla empleados
    private void TablaEmpleadosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TablaEmpleadosMouseClicked
        method.clickTablaEmpleados(TablaEmpleados, txtCorreoEmpleado, txtNombreEmpleado, txtApellidosEmpleado, txtCurpEmpleado, txtTelefonoEmpledo, txtDireccionEmpleado, txtPassEmpleado, comboRol);
    }//GEN-LAST:event_TablaEmpleadosMouseClicked
//Limpia los campos del panel empleados
    private void btnNuevoEmpleadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevoEmpleadoActionPerformed
        method.limpiarEmpleado(txtCorreoEmpleado, txtNombreEmpleado, txtApellidosEmpleado, txtCurpEmpleado, txtTelefonoEmpledo, txtDireccionEmpleado, txtPassEmpleado);
    }//GEN-LAST:event_btnNuevoEmpleadoActionPerformed
//Actualiza la informacion de un empleado
    private void btnEditarEmpleadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarEmpleadoActionPerformed
        try {
            method.addUpdEmpleado(TablaEmpleados, txtCorreoEmpleado, txtNombreEmpleado, txtApellidosEmpleado, txtCurpEmpleado, txtTelefonoEmpledo, txtDireccionEmpleado, txtPassEmpleado, comboRol, false);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnEditarEmpleadoActionPerformed
//Agrega un producto a la tabla ventas
    private void txtCantidadVentaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCantidadVentaActionPerformed
        try {
            method.addProdVenta(TablaVenta, txtCantidadVenta, txtStock, comboCodProd, comboNombreProd, txtPrecioVenta, LabelTotal);
        } catch (SQLException ex) {
            Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_txtCantidadVentaActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    new Sistema(8).setVisible(true);
                } catch (SQLException ex) {
                    Logger.getLogger(Sistema.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel LabelTotal;
    private com.toedter.calendar.JDateChooser Midate;
    private javax.swing.JTable TablaEmpleados;
    private javax.swing.JTable TablaProductos;
    private javax.swing.JTable TablaProveedores;
    private javax.swing.JTable TablaUsuarios;
    private javax.swing.JTable TablaVenta;
    private javax.swing.JTable TablaVentas;
    private javax.swing.JLabel apellidos;
    private javax.swing.JButton btnActualizarConfig;
    private javax.swing.JButton btnClientes;
    private javax.swing.JButton btnConfig;
    private javax.swing.JButton btnEditarCliente;
    private javax.swing.JButton btnEditarEmpleado;
    private javax.swing.JButton btnEditarProveedor;
    private javax.swing.JButton btnEditarpro;
    private javax.swing.JButton btnEliminarCliente;
    private javax.swing.JButton btnEliminarEmpleado;
    private javax.swing.JButton btnEliminarPro;
    private javax.swing.JButton btnEliminarProveedor;
    private javax.swing.JButton btnEliminarventa;
    private javax.swing.JButton btnEmpleados;
    private javax.swing.JButton btnGenerarVenta;
    private javax.swing.JButton btnGraficar;
    private javax.swing.JButton btnGuardarCliente;
    private javax.swing.JButton btnGuardarpro;
    private javax.swing.JButton btnIniciar;
    private javax.swing.JButton btnNuevaVenta;
    private javax.swing.JButton btnNuevoCliente;
    private javax.swing.JButton btnNuevoEmpleado;
    private javax.swing.JButton btnNuevoPro;
    private javax.swing.JButton btnNuevoProveedor;
    private javax.swing.JButton btnPdfVentas;
    private javax.swing.JButton btnProductos;
    private javax.swing.JButton btnProveedor;
    private javax.swing.JButton btnUsuarios;
    private javax.swing.JButton btnVentas;
    private javax.swing.JButton btnguardarEmpleado;
    private javax.swing.JButton btnguardarProveedor;
    private javax.swing.JComboBox<String> cbxRol;
    private javax.swing.JComboBox<String> comboCategoria;
    private javax.swing.JComboBox<String> comboCodProd;
    private javax.swing.JComboBox<String> comboNombreProd;
    private javax.swing.JComboBox<String> comboProveedor;
    private javax.swing.JComboBox<String> comboRol;
    private javax.swing.JLabel correolbl;
    private javax.swing.JLabel direccion;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel40;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel43;
    private javax.swing.JLabel jLabel44;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel jLabelxd;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel14;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JScrollPane jScrollPane6;
    private javax.swing.JScrollPane jScrollPane7;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTabbedPane pane;
    private javax.swing.JPanel panelCliente;
    private javax.swing.JPanel panelDatos;
    private javax.swing.JPanel panelEmpleados;
    private javax.swing.JPanel panelProducto;
    private javax.swing.JPanel panelProveedor;
    private javax.swing.JPanel panelUsuarios;
    private javax.swing.JPanel panelVenta;
    private javax.swing.JPanel panelVentas;
    private javax.swing.JLabel rol;
    private javax.swing.JTable tablaClientes;
    private javax.swing.JLabel tipo;
    private javax.swing.JTextField txtApellidosCliente;
    private javax.swing.JTextField txtApellidosEmpleado;
    private javax.swing.JTextField txtCantProd;
    private javax.swing.JTextField txtCantidadVenta;
    private javax.swing.JTextField txtCodProd;
    private javax.swing.JTextField txtCorreo;
    private javax.swing.JTextField txtCorreoEmpleado;
    private javax.swing.JTextField txtCorreoInfo;
    private javax.swing.JTextField txtCurpCliente;
    private javax.swing.JTextField txtCurpEmpleado;
    private javax.swing.JTextField txtCurpVenta;
    private javax.swing.JTextField txtDireccionCliente;
    private javax.swing.JTextField txtDireccionEmpleado;
    private javax.swing.JTextField txtDireccionInfo;
    private javax.swing.JTextField txtDireccionProveedor;
    private javax.swing.JTextField txtNombre;
    private javax.swing.JTextField txtNombreCliente;
    private javax.swing.JTextField txtNombreClienteventa;
    private javax.swing.JTextField txtNombreEmpleado;
    private javax.swing.JTextField txtNombreInfo;
    private javax.swing.JTextField txtNombreProd;
    private javax.swing.JTextField txtNombreproveedor;
    private javax.swing.JPasswordField txtPass;
    private javax.swing.JPasswordField txtPassEmpleado;
    private javax.swing.JTextField txtPrecioCompra;
    private javax.swing.JTextField txtPrecioVenta;
    private javax.swing.JTextField txtPrecioVentaProd;
    private javax.swing.JTextField txtStock;
    private javax.swing.JTextField txtTelefonoCliente;
    private javax.swing.JTextField txtTelefonoEmpledo;
    private javax.swing.JTextField txtTelefonoInfo;
    private javax.swing.JTextField txtTelefonoProveedor;
    private javax.swing.JTextField txtWebInfo;
    private com.toedter.calendar.JDateChooser vencimiento;
    // End of variables declaration//GEN-END:variables

}
