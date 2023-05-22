using Microsoft.AspNetCore.Mvc;
using Ejemplo_API.Models;

namespace Ejemplo_API.Controllers;


[ApiController]
[Route("[controller]")]
public class AlbumesController : ControllerBase
{
    [HttpGet]
   public IActionResult Get()
   {
    List<Album> lista = BD.ListarAlbumes();
    return Ok(lista);
   }


   [HttpGet("{IdAlbum}")]
   public IActionResult Get(int IdAlbum)
   {

    if(IdAlbum < 1)
    {
        return BadRequest();
    }

    Album a = BD.VerInfoAlbum(IdAlbum);

    if(a == null)
    {
        return NotFound();
    }

    return Ok(a);
   }


    [HttpPost]
    public IActionResult Post(Album a){
        if(string.IsNullOrEmpty(a.Nombre) || string.IsNullOrEmpty(a.Foto) ||  a.fechaLanzamiento == null || a.FKArtista == null )
        {
            return BadRequest();
        }
        
        BD.AgregarAlbum(a);
        return Ok(a);
    }


    [HttpPut ("{IdAlbum}")]
    public IActionResult Put(int IdAlbum, Album a)
    {
        if(IdAlbum < 1 || a.Nombre== "" || a.fechaLanzamiento== null || a.Foto==""|| a.FKArtista== null)
        {
        return BadRequest();
        }
        if(BD.VerInfoAlbum(IdAlbum) == null)
        {
            return NotFound();
        }

        BD.ModificarAlbum(a, IdAlbum);
       
        return Ok(a);
    }


    [HttpPatch ("{IdAlbum}")]
    public IActionResult Patch(int IdAlbum, Album a)
    {
        if(IdAlbum < 1 || a.Nombre== "" || a.fechaLanzamiento== null || a.Foto=="" || a.FKArtista== null)
        {
        return BadRequest();
        }
        if(a == null)
        {
            return NotFound();
        }
        Album b = BD.VerInfoAlbum(IdAlbum);
        if(a.Nombre != b.Nombre)
        {
            b.Nombre=a.Nombre;
        }
        if(a.fechaLanzamiento != b.fechaLanzamiento)
        {
            b.fechaLanzamiento = a.fechaLanzamiento;
        }
        if(a.Foto != b.Foto)
        {
            b.Foto = a.Foto;
        } 
        if(a.FKArtista != b.FKArtista)
        {
            b.FKArtista = a.FKArtista;
        }
        BD.ModificarAlbum(a, IdAlbum);
        return Ok(a);
    }


   [HttpDelete("{IdAlbum}")]
   public IActionResult Delete(int IdAlbum)
   {
    if(IdAlbum < 1)
    {
        return BadRequest();
    }
    Album a = BD.VerInfoAlbum(IdAlbum);

    if(a == null) 
    {
        return NotFound();
    }

    BD.EliminarAlbum(IdAlbum);
    return Ok();
   }
}
