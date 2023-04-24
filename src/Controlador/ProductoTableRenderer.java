package Controlador;
import java.awt.Color;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

public class ProductoTableRenderer extends DefaultTableCellRenderer {

    private final LocalDate hoy = LocalDate.now();

    @Override
    public void setValue(Object value) {
        setText((value == null) ? "" : value.toString());
    }

    @Override
    public void setBackground(Color color) {
        super.setBackground(color);
    }

    @Override
    public void setForeground(Color color) {
        super.setForeground(color);
    }

    @Override
    public void updateUI() {
        super.updateUI();
        setForeground(Color.BLACK);
        setBackground(Color.WHITE);
    }

    public void colorearProductosAVencer(JTable tabla) {
        for (int i = 0; i < tabla.getRowCount(); i++) {
            LocalDate fechaVencimiento = LocalDate.parse(tabla.getValueAt(i, 4).toString());
            long diasRestantes = ChronoUnit.DAYS.between(hoy, fechaVencimiento);
            if (diasRestantes <= 30) {
                tabla.setValueAt(tabla.getValueAt(i, 4) + " (" + diasRestantes + " días)", i, 5);
                System.out.println(diasRestantes);
                tabla.setDefaultRenderer(Object.class, this);
                setBackground(Color.YELLOW);
            }
        }
    }
}
