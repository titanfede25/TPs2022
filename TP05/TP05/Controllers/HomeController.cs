using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TP05.Models;

namespace TP05.Controllers
{
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
        public IActionResult Tutorial()
        {
            return View();
        }
        
        public IActionResult Comenzar(int _estadojuego)
        {
            if(Escape.EstadoJuego == 5)
            {
                return View("Victoria");
            }
            return View("Habitacion"+ Escape.EstadoJuego);  
        }
         public IActionResult Victoria()
        {
            return View();  
        }
        [HttpPost]public IActionResult Habitacion(int sala, string clave)
        {
            if(Escape.ResolverSala(sala, clave.ToUpper()))
            {

                if(Escape.EstadoJuego == 5)
                {
                    return View ("Victoria");
                }
               
                return View("Habitacion" + Escape.EstadoJuego);  
            }
            else
            {
                ViewBag.Error="Respuesta incorrecta";
                return View("Habitacion" + Escape.EstadoJuego);
            }    
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
