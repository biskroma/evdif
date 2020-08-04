package mx.com.smartsoftamerica.encuestasdifusas.objetos;

import java.io.Serializable;

public class Respuesta implements Serializable
{
    private String mensaje;

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
}
