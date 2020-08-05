package mx.com.smartsoftamerica.encuestasdifusas.objetos;

import java.io.Serializable;
import java.util.List;

public class Respuesta implements Serializable
{
    private List<Preguntas> listaPreguntas;
    private String mensaje;

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public List<Preguntas> getListaPreguntas() {
        return listaPreguntas;
    }

    public void setListaPreguntas(List<Preguntas> listaPreguntas) {
        this.listaPreguntas = listaPreguntas;
    }

    public Respuesta consultarPreguntas() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
