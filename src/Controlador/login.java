package Controlador;

import Modelo.EmpleadoDao;
import Modelo.LoginDAO;
import Modelo.LoginDAO;
import Vista.Login;
import Vista.Sistema;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class login {

    private int idUsuario, idEmpleado;
    private String nombre, correo, acceso, telefono;

    LoginDAO login = new LoginDAO();
    EmpleadoDao empleado = new EmpleadoDao();

    //Valida el usuario que ingresa al sistema
    public void validar(String correo, String pass, Login athis) throws SQLException {
        if (!"".equals(correo) || !"".equals(pass)) {//Verifica que los campos cintengan informacion
            ResultSet rs = login.log(correo, pass);
            if (rs.next()) {//Si el usuario y contraseña son correctos, entonces abre la ventana de sistema
                obtenerDatosUsuario(rs);
                logeado loged = new logeado(nombre,acceso,telefono,this.correo,idUsuario,idEmpleado);//Guarda en un objeto la información del usuario ingresado en el sistema
                Sistema sis = new Sistema(loged);//Abre la ventana principal con la información del usuario como parametro
                sis.setVisible(true);
                athis.dispose();
            } else {
                JOptionPane.showMessageDialog(null, "Correo y/o Contraseña incorrecta");
            }
        }
    }
//Obtiene todos los datos del usuario de la base de datos.
    private void obtenerDatosUsuario(ResultSet rs) throws SQLException {
        idUsuario = rs.getInt("idUsuario");
        nombre = rs.getString("nombre") + " " + rs.getString("apellidoP") + " " + rs.getString("apellidoM");
        acceso = rs.getString("acceso");
        telefono = rs.getString("telefono");
        correo = rs.getString("correo");
        ResultSet rs1 = empleado.buscarEmpleado(idUsuario);
        if (rs1.next()) {
            idEmpleado=rs1.getInt("idEmpleado");
        }
    }
}
