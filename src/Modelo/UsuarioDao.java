package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public ResultSet listarUsuarios() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarUsuarios() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

    void registrar(String correo, String nombre, String apellidoP, String apellidoM, String tel, String contraseña, String acceso) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL nuevoUsuario(?, ?, ?, ?, ?, ?, ?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, apellidoP);
        cstmt.setString(3, apellidoM);
        cstmt.setString(4, tel);
        cstmt.setString(5, correo);
        cstmt.setString(6, contraseña);
        cstmt.setString(7, acceso);
        cstmt.execute();
        con.close();
        System.out.println("usuario registrado");
    }

    public String buscarEmpleado(int idEmpleado) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL buscarEmpleado(?) }");
        cstmt.setInt(1, idEmpleado);
        ResultSet rs = cstmt.executeQuery();
        String nombre = "";
        if (rs.next()) {
            nombre = rs.getString("nombre");
        }
        return nombre;

    }
}
