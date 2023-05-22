using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TP06Qatar_Sznajderhaus_Merino.Models;


namespace TP06Qatar_Sznajderhaus_Merino.Controllers
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
            ViewBag.Index = BD.ListarEquipos();
            return View();
        }
        public IActionResult VerDetalleEquipo(int IdEquipo)
        {
            ViewBag.Ej1 = BD.VerInfoEquipo(IdEquipo);
            ViewBag.Ej2 = BD.ListarJugadores(IdEquipo); 
            return View();
        }
        public IActionResult VerDetalleJugador(int IdJugador)
        {
            ViewBag.VerInfo = BD.VerInfoJugador(IdJugador);
            return View();
        }
        public IActionResult AgregarJugador(int IdEquipo)
        {
            ViewBag.IdEquipo = IdEquipo;
            return View();
        }
        [HttpPost] public IActionResult GuardarJugador(Jugador Player)
        {
            BD.AgregarJugador(Player);
            return RedirectToAction("VerDetalleEquipo", new { IdEquipo = Player.IdEquipo} );
        }
        public IActionResult EliminarJugador(int IdJugador, int IdEquipo)
        {
            BD.EliminarJugador(IdJugador);
            return RedirectToAction("VerDetalleEquipo", new { Idequipo = IdEquipo});
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
