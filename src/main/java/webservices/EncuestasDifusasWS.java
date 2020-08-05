package webservices;

import javax.ejb.Stateless;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Preguntas;
import mx.com.smartsoftamerica.encuestasdifusas.objetos.Respuesta;
import mx.com.smartsoftamerica.negocio.negocioEncuestasDifusas;

@Stateless
@Path("moduloService")
public class EncuestasDifusasWS {
    @POST
    @Path("ListaPreguntas")
    @Produces({MediaType.APPLICATION_JSON})
    @Consumes({MediaType.APPLICATION_JSON})
    public Respuesta obtenerPreguntas()
    {
        return negocioEncuestasDifusas.obtenerPreguntas();
    }
}
