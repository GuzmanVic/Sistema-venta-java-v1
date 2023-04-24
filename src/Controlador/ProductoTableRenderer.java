package Controlador;

import java.awt.Color;
import java.awt.Component;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.Map;
import javax.swing.JOptionPane;
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
    Map<Integer, LocalDate> filasAVencer = new HashMap<>();
    String productosAVencer = "";
    for (int i = 0; i < tabla.getRowCount(); i++) {
        LocalDate fechaVencimiento = LocalDate.parse(tabla.getValueAt(i, 4).toString());
        long diasRestantes = ChronoUnit.DAYS.between(hoy, fechaVencimiento);
        if (diasRestantes <= 30) {
            filasAVencer.put(i, fechaVencimiento);
            productosAVencer += tabla.getValueAt(i, 1) + " (" + diasRestantes + " días restantes)\n";
        }
    }
    tabla.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
        @Override
        public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
            Component c = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
            if (filasAVencer.containsKey(row) && column == 4) {
                c.setBackground(Color.YELLOW);
            } else {
                c.setBackground(table.getBackground());
            }
            return c;
        }
    });
    if (!productosAVencer.equals("")) {
        JOptionPane.showMessageDialog(null, "Los siguientes productos están próximos a caducar:\n" + productosAVencer);
    }
}


}
