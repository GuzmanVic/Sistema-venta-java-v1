/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import Controlador.login;
import java.sql.SQLException;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author ALUMNO
 */
public class LoginTest {
    
    public LoginTest() {
    }

    @Test
      public void testValidar() throws SQLException {
        login log = new login();
     //   boolean resultado = log.validar("usuario@example.com", "password", new Login());
        assertTrue(resultado);
    }
    
}
