package webservices;

import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Stateless
@Path("prueba")
public class HolaMundo
{
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("saludar")
    public String saludar()
    {
        return "Tester...";
    }
}
