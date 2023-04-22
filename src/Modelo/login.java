package Modelo;

import Vista.Login;
import Vista.Sistema;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class login {

    private int id;
    private String nombre;
    private String correo;
    private String pass;
    private String rol;

    LoginDAO login = new LoginDAO();

    //Valida el usuario que ingresa al sistema
    public void validar(String correo, String pass, Login athis) throws SQLException {
        if (!"".equals(correo) || !"".equals(pass)) {//Verifica que los campos cintengan informacion
            ResultSet rs = login.log(correo, pass);
            if (rs.next()) {//Si el usuario y contraseña son correctos, entonces abre la ventana de sistema
                Sistema sis = new Sistema(rs.getInt("idUsuario"));
                sis.setVisible(true);
                athis.dispose();
            } else {
                JOptionPane.showMessageDialog(null, "Correo y/o Contraseña incorrecta");
            }
        }
    }
/*
    public login(int id, String nombre, String correo, String pass, String rol) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.pass = pass;
        this.rol = rol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
*/
}
