package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClienteDao {

    Conexion cn = new Conexion();
    Connection con;

    public void RegistrarCliente(String nombre, String apellidoP, String apellidoM, String curp, String telefono, String direccion, String correo) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL insertar_cliente(?, ?, ?, ?, ?, ?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, apellidoP);
        cstmt.setString(3, apellidoM);
        cstmt.setString(4, curp);
        cstmt.setString(5, telefono);
        cstmt.setString(6, direccion);
        cstmt.execute();
        con.close();
    }

    public ResultSet ListarCliente() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarClientes() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

    public void EliminarCliente(int id) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL eliminarCliente(?)}");
        cstmt.setInt(1, id);
        cstmt.execute();
        con.close();
    }

    public void ModificarCliente(int id, String nombre, String apellidoP, String apellidoM, String curp, String telefono, String direccion,String correo) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL actualizarCliente(?, ?, ?, ?, ?, ?, ?, ?)}");
        cstmt.setInt(1, id);
        cstmt.setString(2, curp);
        cstmt.setString(3, nombre);
        cstmt.setString(4, apellidoP);
        cstmt.setString(5, apellidoM);
        cstmt.setString(6, telefono);
        cstmt.setString(7, direccion);
        cstmt.setString(8, correo);
        cstmt.execute();
        con.close();
    }

    public ResultSet Buscarcliente(String curp) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL buscarCliente(?)}");
        cstmt.setString(1, curp);
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }
}
