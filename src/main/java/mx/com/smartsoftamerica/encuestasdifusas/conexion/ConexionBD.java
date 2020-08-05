package mx.com.smartsoftamerica.encuestasdifusas.conexion;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Preguntas;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Respuesta;

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
            // String url = p.getProperty("url");
            //Abriendo la conexión
            String user = p.getProperty("user");
            String pass = p.getProperty("pass");
            conexion = DriverManager.getConnection("jdbc://localhost:3306/Evadif","root","root");
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
    
    // Consulta las preguntas
    public static Respuesta consultarPreguntas()
    {
        Respuesta respuesta = new Respuesta();
        try
        {
            Connection conexionConsulta = conectarBD();
            Statement s = conexionConsulta.createStatement();
            ResultSet rs = s.executeQuery("select * from preguntas");
            
            List<Preguntas> listaPreguntas = new ArrayList<>();
            rs.beforeFirst();
            while(rs.next())
            {
                Preguntas infoPregunta = new Preguntas();
                infoPregunta.setIdGrupo(rs.getInt(1));
                infoPregunta.setIdPregunta(rs.getInt(2));
                listaPreguntas.add(infoPregunta);
            }
            respuesta.setListaPreguntas(listaPreguntas);
            respuesta.setMensaje("Información de las preguntas enviada");
            s.close();
            rs.close();
            conexionConsulta.close();
        }
        catch(Exception e)
        {
            respuesta.setMensaje("Error al obtener las preguntas " + e);
        }
        return respuesta;
    }
}
