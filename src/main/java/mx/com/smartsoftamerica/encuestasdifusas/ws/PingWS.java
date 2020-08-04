package mx.com.smartsoftamerica.encuestasdifusas.ws;

import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Respuesta;

@Stateless
@Path("comunicacion")
public class PingWS 
{
    @GET
    @Path("ping")
    @Produces({MediaType.APPLICATION_JSON})
    public Respuesta revisaPing() {
        Respuesta respuesta = new Respuesta();
        respuesta.setMensaje("Comunicación correcta...");
        return respuesta;
    }
}
