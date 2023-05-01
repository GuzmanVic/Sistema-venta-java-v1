/*package Test;

import Controlador.login;
import Modelo.LoginDAO;
import Vista.Login;
import Vista.Sistema;
import java.sql.ResultSet;
import org.junit.Test;
import static org.junit.Assert.*;
import java.sql.SQLException;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

public class LoginTest {

    @Test
    public void testValidar() throws SQLException {
        // Prueba de credenciales inválidas
        login instanciaLogin = new login();
        Login instanciaLoginView = new Login();
        instanciaLogin.validar("correoInvalido@dominio.com", "contraseña", instanciaLoginView);
        assertFalse(instanciaLoginView.isVisible());

        // Prueba de usuario vacío
        instanciaLoginView = new Login();
        instanciaLogin.validar("", "contraseña", instanciaLoginView);
        assertFalse(instanciaLoginView.isVisible());

        // Prueba de contraseña vacía
        instanciaLoginView = new Login();
        instanciaLogin.validar("correoValido@dominio.com", "", instanciaLoginView);
        assertFalse(instanciaLoginView.isVisible());

        // Prueba de usuario inexistente
        instanciaLoginView = new Login();
        instanciaLogin.validar("usuarioInexistente@dominio.com", "contraseña", instanciaLoginView);
        assertFalse(instanciaLoginView.isVisible());

        // Prueba de contraseña incorrecta
        instanciaLoginView = new Login();
        instanciaLogin.validar("correoValido@dominio.com", "contraseñaIncorrecta", instanciaLoginView);
        assertFalse(instanciaLoginView.isVisible());

        // Prueba de credenciales válidas
        // Asegúrate de proporcionar credenciales válidas para esta prueba
        instanciaLoginView = new Login();
        instanciaLogin.validar("vguzmanloredo@gmail.com", "linkzeldaA1!", instanciaLoginView);
        assertTrue(instanciaLoginView.isVisible());
        instanciaLoginView.dispose();
    }

    @Test
    public void testObtenerDatosUsuario() throws SQLException {
        // Crear un objeto ResultSet de prueba con datos conocidos
        ResultSet rs = mock(ResultSet.class);
        when(rs.getString("nombre")).thenReturn("Juan");
        when(rs.getString("apellidoP")).thenReturn("Pérez");
        when(rs.getString("apellidoM")).thenReturn("García");
        when(rs.getString("acceso")).thenReturn("Administrador");
        when(rs.getInt("idUsuario")).thenReturn(1);

        // Crear un objeto de la clase login para llamar a la función
        login instanciaLogin = new login();

        // Llamar a la función con el objeto ResultSet de prueba
        instanciaLogin.obtenerDatosUsuario(rs);

        // Comprobar si las variables tienen los valores correctos
        assertEquals("Juan Pérez García", instanciaLogin.nombre);
        assertEquals("Administrador", instanciaLogin.acceso);
        assertEquals(2, instanciaLogin.idEmpleado);
    }

}
*/