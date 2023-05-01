package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    Connection con;
    Conexion cn = new Conexion();

    public ResultSet log(String correo, String pass) throws SQLException {
        con = cn.getConnection();
        CallableStatement cstmt = con.prepareCall("{ CALL get_login(?,?) }");
        cstmt.setString(1, correo);
        cstmt.setString(2, pass);
        ResultSet rs = cstmt.executeQuery();
        return rs;
    }
}