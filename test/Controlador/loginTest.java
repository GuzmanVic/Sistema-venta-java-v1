package Controlador;

import Vista.Login;
import java.sql.ResultSet;
import org.junit.jupiter.api.Test;

@RunWith(JUnit4.class)
public class loginTest {
    private login loginObj;

    @Before
    public void setUp() {
        loginObj = new login();
    }

    @Test
    public void validar_UsuarioValido_DevuelveTrue() throws SQLException {
        // Valores de prueba
        String correo = "usuario@example.com";
        String pass = "password";
        Login mockLogin = Mockito.mock(Login.class);
        ResultSet mockResultSet = Mockito.mock(ResultSet.class);

        // Simular el comportamiento del objeto mockLogin
        Mockito.when(mockLogin.log(correo, pass)).thenReturn(mockResultSet);
        Mockito.when(mockResultSet.next()).thenReturn(true);

        // Llamar al método a probar
        loginObj.validar(correo, pass, mockLogin);

        // Realizar afirmaciones para verificar el comportamiento esperado
        // ...

        // Verificar que se hayan llamado los métodos esperados en el objeto mockLogin
        Mockito.verify(mockLogin).log(correo, pass);
        Mockito.verify(mockResultSet).next();
        // ...
    }
}

