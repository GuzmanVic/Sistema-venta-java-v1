package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class EmpleadoDao {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public ResultSet listarEmpleados() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarEmpleados() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

    void registrarEmpleado(String correo, String nombre, String apellidoP, String apellidoM, JTextField telefono, JPasswordField contraseña, String acceso) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL nuevoEmpleado(?, ?, ? ?, ?, ?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, apellidoP);
        cstmt.setString(3, apellidoM);
        cstmt.setString(4, curp);
        cstmt.setString(5, direccion);
        cstmt.setString(6, apellidoM);
        cstmt.execute();
        con.close();
    }
}
