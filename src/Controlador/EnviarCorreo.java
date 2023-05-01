package Controlador;

import java.io.File;
import java.util.Properties;
import java.util.Random;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EnviarCorreo {

    public String enviar(String destinatario, String caso,File file) {
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
                    break;
                case "Bienvenida":
                    // Crea el mensaje de correo electrónico
                    message.setSubject("Bienvenido a CommerceManager.");
                    retorno = String.valueOf(aleatorio());
                    message.setText("AHORA ERES UN CLIENTE DE COMMERCEMANAGER.");
                    break;
                case "ticket":
                    // Crea el mensaje de correo electrónico
                    message.setSubject("Ticket de compra");
                    message.setText("Te enviamos el ticket de tu ultima compra realizada con nosotros.");
                    // Crea el objeto MimeMultipart para combinar el mensaje de texto y el archivo adjunto
                    MimeMultipart multipart = new MimeMultipart();

                    // Crea un objeto MimeBodyPart para el mensaje de texto
                    MimeBodyPart textPart = new MimeBodyPart();
                    textPart.setText("Gracias por tu compra c:");
                    multipart.addBodyPart(textPart);

                    // Crear un objeto MimeBodyPart para el archivo adjunto
                    MimeBodyPart filePart = new MimeBodyPart();
                    FileDataSource dataSource = new FileDataSource(file);
                    filePart.setDataHandler(new DataHandler(dataSource));
                    filePart.setFileName(file.getName());
                    multipart.addBodyPart(filePart);
                    // Establecer el contenido del mensaje como el objeto MimeMultipart
                    message.setContent(multipart);
                    // Enviar el mensaje de correo electrónico
                    break;
            }
            Transport.send(message);// Envía el mensaje de correo electrónico
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
