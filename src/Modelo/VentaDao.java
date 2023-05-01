package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VentaDao {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public void RegistrarVenta(double subtotal, double total, int cliente, int vendedor) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL insertar_venta(?, ?, ?, ?)}");
        cstmt.setDouble(1, subtotal);
        cstmt.setDouble(2, total);
        cstmt.setInt(3, cliente);
        cstmt.setInt(4, vendedor);
        cstmt.execute();
        con.close();
    }

    public void RegistrarDetalle(String codigo, int cant, double precio, double total) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL insertar_detalleVenta(?, ?, ?, ?)}");
        cstmt.setString(1, codigo);
        cstmt.setInt(2, cant);
        cstmt.setDouble(3, precio);
        cstmt.setDouble(4, total);
        cstmt.execute();
        con.close();
    }

    public ResultSet Listarventas() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarVentas() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

    public int IdVenta() {
        int id = 0;
        String sql = "SELECT MAX(id) FROM ventas";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return id;
    }

    public ResultSet obtenerUltimaVenta() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL obtenerUltimaVenta() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;

    }
}