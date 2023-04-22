package Reportes;

import Modelo.Conexion;
import com.toedter.calendar.JDateChooser;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;
import java.util.Date;

public class Grafico {

    public static void Graficar(JDateChooser fecha) throws ParseException {
        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        String fechaReporte = new SimpleDateFormat("dd/MM/yyyy").format(fecha.getDate());
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        Date date = format.parse(fechaReporte);
        Timestamp timestamp = new Timestamp(date.getTime());
        try {
            con = cn.getConnection();
            CallableStatement cstmt = con.prepareCall("{ CALL buscarfechaVenta(?) }");
            cstmt.setTimestamp(1, timestamp);
            ResultSet rs = cstmt.executeQuery();
            DefaultPieDataset dateset = new DefaultPieDataset();
            while (rs.next()) {
                dateset.setValue(rs.getString("total"),rs.getDouble("total"));
            }
            JFreeChart jf = ChartFactory.createPieChart("Reporte de Venta", dateset);
            ChartFrame f = new ChartFrame("Total de Ventas por dia", jf);
            f.setSize(1000, 500);
            f.setLocationRelativeTo(null);
            f.setVisible(true);
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }
}
