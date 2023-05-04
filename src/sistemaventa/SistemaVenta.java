package sistemaventa;

import Vista.Login;
import com.formdev.flatlaf.FlatLightLaf;
import javax.swing.UIManager;

public class SistemaVenta {

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
            UIManager.put("Component.arc", 30);
            UIManager.put("Button.arc", 30);
            UIManager.put("TextComponent.arc", 30);
            UIManager.put("OptionPane.arc", 30);
            UIManager.put("Table.arc", 30);
        } catch (Exception ex) {
            System.err.println("Failed to initialize LaF");
        }
        Login lg = new Login();
        lg.setVisible(true);
    }

}
