package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
