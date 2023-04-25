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

    public void EliminarEmpleado(int id) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL eliminarEmpleado(?) }");
        cstmt.setInt(1, id);
        cstmt.executeQuery();
    }

    public void registrarEmpleado(String nombre, String apellidoP, String apellidoM, String curp, String direccion) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL nuevoEmpleado(?, ?, ?, ?, ?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, apellidoP);
        cstmt.setString(3, apellidoM);
        cstmt.setString(4, curp);
        cstmt.setString(5, direccion);
        cstmt.execute();
        con.close();
    }

    public void modificar(int id, String curp, String telefono, String direccion) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL actualizarEmpleado(?, ?, ?, ?)}");
        cstmt.setInt(1, id);
        cstmt.setString(2, curp);
        cstmt.setString(3, telefono);
        cstmt.setString(4, direccion);
        cstmt.execute();
        con.close();
    }

    public ResultSet buscarEmpleado(int idEmpleado) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL buscarEmpleado(?) }");
        cstmt.setInt(1, idEmpleado);
        ResultSet rs = cstmt.executeQuery();
        return rs;

    }
}
