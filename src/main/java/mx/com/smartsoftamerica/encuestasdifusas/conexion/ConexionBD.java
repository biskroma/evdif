package mx.com.smartsoftamerica.encuestasdifusas.conexion;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConexionBD 
{
    public static Connection conectarBD()
    {
        Connection conexion = null;
        try
        {
            Properties p = new Properties();
            p.load(new FileReader("ModuloEncuesta.properties"));
            
            //Buscar el driver
            Class.forName("com.mysql.jdbc.Driver");
            //Definicendo url de conexión con la base de datos
            String url = p.getProperty("url");
            //Abriendo la conexión
            String user = p.getProperty("user");
            String pass = p.getProperty("pass");
            conexion = DriverManager.getConnection(url,user,pass);
        }
        catch(SQLException e) 
        {
            System.out.println("Error SQL = " + e);
        }
        catch(ClassNotFoundException e) 
        {
            System.out.println("Error de driver " + e);
        }
        catch(FileNotFoundException e) 
        {
            System.out.println("Error al Leer archivo de configuración.\n" + e);
        }
        catch(IOException e) 
        {
            System.out.println("Error al Leer archivo de configuración.\n" + e);
        }
        return conexion;
    }
}
