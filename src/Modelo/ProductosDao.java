package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductosDao {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public void RegistrarProductos(String codigo, String nombre, String proveedor, Date vencimiento, double compra, double venta, int cantidad, String categoria) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL insertar_producto(?, ?, ?, ?, ?, ?, ?, ?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setString(3, proveedor);
        cstmt.setDate(4, vencimiento);
        cstmt.setDouble(5, compra);
        cstmt.setDouble(6, venta);
        cstmt.setInt(7, cantidad);
        cstmt.setString(8, categoria);
        cstmt.execute();
        con.close();
    }

    public ResultSet ListarProductos() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarProductos() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

    public void EliminarProductos(String codigo) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL eliminarProductos(?)}");
        cstmt.setString(1, codigo);
        cstmt.execute();
        con.close();
    }

    public void ModificarProductos(String codigo, String nombre, String proveedor, Date vencimiento, double compra, double venta, int cantidad, String categoria) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL actualizarProductos(?, ?, ?, ?, ?, ?, ?, ?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setDate(3, vencimiento);
        cstmt.setDouble(4, compra);
        cstmt.setDouble(5, venta);
        cstmt.setInt(6, cantidad);
        cstmt.setString(7, categoria);
        cstmt.setString(8, proveedor);
        cstmt.execute();
        con.close();
    }

    public ResultSet BuscarProd(String parametro, String busqueda) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = null;
        if (parametro.equalsIgnoreCase("codigos")) {
            cstmt = con.prepareCall("{ CALL buscarProdID(?) }");
        } else {
            cstmt = con.prepareCall("{ CALL buscarProdNombre(?) }");
        }
        cstmt.setString(1, busqueda);
        ResultSet rs = cstmt.executeQuery(); // ejecutar el procedimiento almacenado
        return rs;
    }

    public ResultSet BuscarProdID(String busqueda) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = null;
        cstmt = con.prepareCall("{ CALL buscarProdID(?) }");
        cstmt.setString(1, busqueda);
        ResultSet rs = cstmt.executeQuery(); // ejecutar el procedimiento almacenado
        return rs;
    }

    public void BuscarId(int id) {
        String sql = "SELECT pr.id AS id_proveedor, pr.nombre AS nombre_proveedor, p.* FROM proveedor pr INNER JOIN productos p ON p.proveedor = pr.id WHERE p.id = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }

    public void BuscarProveedor(String nombre) {
        String sql = "SELECT * FROM proveedor WHERE nombre = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }

    public void addProdVenta(String codigo, int cantidad) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL restarProd(?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setInt(2, cantidad);
        cstmt.execute();
        con.close();
    }

    public void sumarProd(String codigo, int cantidad) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL sumarProd(?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setInt(2, cantidad);
        cstmt.execute();
        con.close();

    }

    public void ActualizarStock(int cant, String id) {
        String sql = "UPDATE productos SET cantidad = ? WHERE serie = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, cant);
            ps.setString(2, id);
            ps.execute();
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }

}
