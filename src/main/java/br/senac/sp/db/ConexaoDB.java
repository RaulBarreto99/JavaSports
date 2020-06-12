package br.senac.sp.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Ederson_Souza
 */
public class ConexaoDB {

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     public static Connection getConexao() throws SQLException {
        String dbURL = "jdbc:mysql://aad85kky30rh46.ctkpeaskramz.us-west-1.rds.amazonaws.com:3306/javasport?autoReconnect=true&useSSL=false";
        String user = "admin";
        String password = "xnexus2020";
        System.out.println(dbURL);
        return DriverManager.getConnection(dbURL, user, password);
    }


}
