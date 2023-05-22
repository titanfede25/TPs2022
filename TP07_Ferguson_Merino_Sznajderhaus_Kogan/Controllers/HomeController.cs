using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP07_Ferguson_Merino_Sznajderhaus.Models;

namespace TP07_Ferguson_Merino_Sznajderhaus.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        ViewBag.Categoria= Juego.ObtenerCategorias();
        ViewBag.Dificultad= Juego.ObtenerDificultades();
        return View();
    }

    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, categoria, dificultad);
        if (Juego.Preguntas.Count > 0)
        {
            return RedirectToAction("Jugar");
        }
        else
        {
            return RedirectToAction("ConfigurarJuego");
        }
        
    }

    public IActionResult Jugar()
    {
        ViewBag.Pregunta = Juego.ObtenerProximaPregunta();
        ViewBag.Usuario = Juego.Username;
        ViewBag.Puntaje = Juego.PuntajeActual;
        if (ViewBag.Pregunta==null)
        {
            return View("Fin");
        }
        else
        {
            ViewBag.Respuesta = Juego.ObtenerProximaRespuesta(ViewBag.Pregunta.IdPregunta);
            
            return View("Juego");
        }
        
    }
    [HttpPost] public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        ViewBag.Correcta = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        return View("Respuesta");
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
