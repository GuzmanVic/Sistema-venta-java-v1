package Controlador;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class emailSender {

    public static void main(String[] args) {
        String usuario = "guzman.loredo.18259@itsmante.edu.mx";
        String clave = "linkzelda";
        String destinatario = "vguzmanloredo@gmail.com";
        String asunto = "Prueba de correo";
        String mensaje = "Este es un mensaje de prueba enviado desde Java.";

        // Creamos el objeto Email
        Email email = new SimpleEmail();
        email.setHostName("smtp.gmail.com");
        email.setSmtpPort(465);
        email.setAuthenticator(new DefaultAuthenticator(usuario, clave));
        email.setSSL(true);
        try {
            // Configuramos el correo electrónico
            email.setFrom(usuario);
            email.setSubject(asunto);
            email.setMsg(mensaje);
            email.addTo(destinatario);

            // Enviamos el correo electrónico
            email.send();

            System.out.println("Correo enviado exitosamente");
        } catch (EmailException e) {
            System.err.println("Error al enviar correo electrónico: " + e.getMessage());
        }
    }

}
