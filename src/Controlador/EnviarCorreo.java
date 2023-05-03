package Controlador;

import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;

public class EnviarCorreo {

    private String fromEmail;
    private String password;

    public EnviarCorreo(String fromEmail, String password) {
        this.fromEmail = fromEmail;
        this.password = password;
    }

    public void enviar(String toEmail, String subject, String body) throws MessagingException {
        // SMTP server information
        String host = "smtp.gmail.com";
        int port = 465;

        // Set properties
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.socketFactory.port", port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");

        // Create a Session object with authentication information
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
        Session session = Session.getDefaultInstance(props, auth);

        // Create and send the message
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(fromEmail));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
        message.setSubject(subject);
        message.setText(body);
        Transport.send(message);
    }

    private int aleatorio() {
        Random random = new Random();
        // Generar un número aleatorio de 5 dígitos
        int numero = 10000 + random.nextInt(90000);
        // Imprimir el número generado
        return numero;
    }
}
