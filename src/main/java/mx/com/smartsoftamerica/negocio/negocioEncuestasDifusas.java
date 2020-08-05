package mx.com.smartsoftamerica.negocio;

import mx.com.smartsoftamerica.encuestasdifusas.objetos.Preguntas;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Respuesta;

public class negocioEncuestasDifusas {

    private static Respuesta conexionBD;
    public static Respuesta obtenerPreguntas(Preguntas consulta)
    {
        Respuesta respuesta = conexionBD.consultarPreguntas();
        return respuesta;
    }
}
