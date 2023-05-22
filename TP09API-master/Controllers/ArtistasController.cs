using Microsoft.AspNetCore.Mvc;
using Ejemplo_API.Models;

namespace Ejemplo_API.Controllers;


[ApiController]
[Route("[controller]")]
public class ArtistasController : ControllerBase
{
    [HttpGet]
   public IActionResult Get()
   {
    List<Artista> lista = BD.ListarArtistas();
    return Ok(lista);
   }


   [HttpGet("{IDArtista}")]
   public IActionResult Get(int IDArtista)
   {

    if(IDArtista < 1)
    {
        return BadRequest();
    }

    Artista a = BD.VerInfoArtista(IDArtista);

    if(a == null)
    {
        return NotFound();
    }

    return Ok(a);
   }


    [HttpPost]
    public IActionResult Post(Artista a){
        if(string.IsNullOrEmpty(a.nombreCompleto) || string.IsNullOrEmpty(a.nombreArtistico) || a.fechaNacimiento == null || string.IsNullOrEmpty(a.pais) || string.IsNullOrEmpty(a.foto))
        {
            return BadRequest();
        }
        
        BD.AgregarArtista(a);
        return Ok(a);
    }


    [HttpPut ("{IDArtista}")]
    public IActionResult Put(int IDArtista, Artista a)
    {
        if(IDArtista < 1 || string.IsNullOrEmpty(a.nombreCompleto) || string.IsNullOrEmpty(a.nombreArtistico) || a.fechaNacimiento == null || string.IsNullOrEmpty(a.pais) || string.IsNullOrEmpty(a.foto))
        {
        return BadRequest();
        }
        if(BD.VerInfoArtista(IDArtista) == null)
        {
            return NotFound();
        }

        BD.ModificarArtista(a, IDArtista);
       
        return Ok(a);
    }


    [HttpPatch ("{IDArtista}")]
    public IActionResult Patch(int IDArtista, Artista a)
    {
        if(IDArtista < 1 || a.nombreCompleto== "" || a.nombreArtistico=="" || a.fechaNacimiento== null || a.pais=="" || a.foto=="")
        {
        return BadRequest();
        }
        if(a == null)
        {
            return NotFound();
        }
        Artista b = BD.VerInfoArtista(IDArtista);
        if(a.nombreCompleto != b.nombreCompleto)
        {
            b.nombreCompleto=a.nombreCompleto;
        }
        if(a.nombreArtistico != b.nombreArtistico)
        {
           b.nombreArtistico=a.nombreArtistico;
        }
        if(a.fechaNacimiento != b.fechaNacimiento)
        {
            b.fechaNacimiento = a.fechaNacimiento;
        }
        if(a.pais != b.pais)
        {
            b.pais = a.pais;
        }
        if(a.foto != b.foto)
        {
            b.foto = a.foto;
        } 
        BD.ModificarArtista(a, IDArtista);
        return Ok(a);
    }


   [HttpDelete("{IDArtista}")]
   public IActionResult Delete(int IDArtista)
   {
    if(IDArtista < 1)
    {
        return BadRequest();
    }
    Artista a = BD.VerInfoArtista(IDArtista);

    if(a == null) 
    {
        return NotFound();
    }

    BD.EliminarArtista(IDArtista);
    return Ok();
   }
}
