package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConfigDao {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public void addUpdInfo(String nombre, String correo, String direccion, String telefono, String web) throws SQLException {
        Connection con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{CALL insertar_actualizar_info(?, ?, ?, ?, ?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, direccion);
        cstmt.setString(3, telefono);
        cstmt.setString(4, web);
        cstmt.setString(5, correo);
        cstmt.execute();
        con.close();
        System.out.println(nombre);
        System.out.println(direccion);
        System.out.println(web);
        System.out.println(telefono);
        System.out.println(correo);
    }

    public ResultSet listarInfo() throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL listarInfo() }");
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }

}
