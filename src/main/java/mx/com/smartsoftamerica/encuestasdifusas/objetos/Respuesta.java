package mx.com.smartsoftamerica.encuestasdifusas.objetos;

import java.io.Serializable;
import java.util.List;

public class Respuesta implements Serializable
{
    private List<Restaurantes> listaPreguntas;
    private String mensaje;

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
}
