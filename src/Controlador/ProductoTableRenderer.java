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

    // Obtener la fecha actual para comparar con las fechas de vencimiento de los productos
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

    // Método que colorea las filas de la tabla según lo necesario
    public void colorearProductosAVencer(JTable tabla) {
        // Mapas para almacenar las filas que cumplen cada criterio
        Map<Integer, LocalDate> filasAVencer = new HashMap<>();
        Map<Integer, Integer> filasStock = new HashMap<>();
        // string para mostrar los productos próximos a caducar
        String productosAVencer = "";
        // Recorrer todas las filas de la tabla
        for (int i = 0; i < tabla.getRowCount(); i++) {
            // Obtener la cantidad restante y la fecha de vencimiento de cada producto
            int restante = Integer.parseInt(tabla.getValueAt(i, 7).toString());//La cantidad yo la tengo en la columna 7
            LocalDate fechaVencimiento = LocalDate.parse(tabla.getValueAt(i, 4).toString());//La fecha de vencimiento la tengo en la columna 4
            // Calcular los días restantes hasta la fecha de vencimiento
            long diasRestantes = ChronoUnit.DAYS.between(hoy, fechaVencimiento);
            // Si quedan menos de 30 días para la fecha de vencimiento, se agrega la fila al mapa y al string de productos a vencer
            if (diasRestantes <= 30) {
                filasAVencer.put(i, fechaVencimiento);
                productosAVencer += tabla.getValueAt(i, 1) + " (" + diasRestantes + " días restantes)\n";//El nombre del producto está en la col 1
            }
            // Si la cantidad restante es menor o igual a 10, se agrega la fila al mapa de productos con bajo stock
            if (restante <= 10) {
                filasStock.put(i, restante);
            }
        }
        // Se establece un nuevo renderizador para la tabla, que pinta las filas de colores según los criterios establecidos
        tabla.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
            @Override
            public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
                Component c = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
                // Si la fila se encuentra en el mapa de productos a vencer y la columna es la de la fecha de vencimiento, se pinta de amarillo
                if (filasAVencer.containsKey(row) && column == 4) {
                    c.setBackground(Color.YELLOW);
                    // Si la fila se encuentra en el mapa de productos con bajo stock y la columna es la de la cantidad restante, se pinta de rojo
                } else if (filasStock.containsKey(row) && column == 7) {
                    c.setBackground(Color.RED);
                } else {//Si no se cumplen con los criterios, se deja el color de la celda en su color default
                    c.setBackground(table.getBackground());
                }
                return c;
            }

        });//Si la variable que almacenaba los productos contiene información entonces se muestra el mensaje de los productos por vencer
        if (!productosAVencer.equals("")) {
            JOptionPane.showMessageDialog(null, "Los siguientes productos están próximos a caducar:\n" + productosAVencer);
        }
    }

}
