package org.sistem.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class database
{
    
    private static Connection connection = null;
    
    public static Connection getConnection()
    {
        if(connection == null)
        {
            try
            {
                String url = "jdbc:mysql://localhost/inventori";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                connection = (com.mysql.jdbc.Connection) DriverManager.getConnection(url, "root", "");
                System.out.println("Connection successful.............\n");
            }
            catch(SQLException e)
            {
                JOptionPane.showMessageDialog(null, "Connection failed");
                System.out.println("Connection failed\n" + e);
            }
        }
        return connection;
    }
    
}
