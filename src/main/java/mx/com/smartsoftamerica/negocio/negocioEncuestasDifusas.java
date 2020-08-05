package mx.com.smartsoftamerica.negocio;

import mx.com.smartsoftamerica.encuestasdifusas.objetos.Respuesta;

public class negocioEncuestasDifusas {

    private static Respuesta conexionBD;
    public static Respuesta obtenerPreguntas()
    {
        Respuesta respuesta = conexionBD.consultarPreguntas();
        return respuesta;
    }
}
