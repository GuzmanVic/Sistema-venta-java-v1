package Modelo;

import Vista.Login;
import Vista.Sistema;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class login {

    LoginDAO login = new LoginDAO();
   //Valida el usuario que ingresa al sistema
    public void validar(String correo,String pass,Login athis) throws SQLException {
        if (!"".equals(correo) || !"".equals(pass)) {//Verifica que los campos cintengan informacion
            ResultSet rs = login.log(correo, pass);
            if (rs.next()) {//Si el usuario y contraseña son correctos, entonces abre la ventana de sistema
                Sistema sis = new Sistema();
                sis.setVisible(true);
                athis.dispose();
            } else {
                JOptionPane.showMessageDialog(null, "Correo o Contraseña incorrecta");
            }
        }

    }
}