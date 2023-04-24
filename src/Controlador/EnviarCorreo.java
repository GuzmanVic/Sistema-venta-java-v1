package Controlador;

import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EnviarCorreo {

    public String enviar(String destinatario, String caso) {
        // Información de autenticación del correo electrónico
        String username = "guzman.loredo.18259@itsmante.edu.mx";
        String password = "linkzelda";

        // Información del servidor SMTP
        String host = "smtp.gmail.com";
        int port = 587;

        // Propiedades adicionales
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);

        // Crea la sesión de correo electrónico
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        String retorno = "";
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("guzman.loredo.18259@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(destinatario));
            switch (caso) {
                case "confirmacion":
                    // Crea el mensaje de correo electrónico
                    message.setSubject("Confirmación de correo electronico.");
                    retorno = String.valueOf(aleatorio());
                    message.setText("Para confirmar tu correo electronico, por favor digita este codigo en la aplicación " + retorno);
                    Transport.send(message);// Envía el mensaje de correo electrónico
                    break;
            }
            return retorno;
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

    private int aleatorio() {
        Random random = new Random();
        // Generar un número aleatorio de 5 dígitos
        int numero = 10000 + random.nextInt(90000);
        // Imprimir el número generado
        return numero;
    }
}
