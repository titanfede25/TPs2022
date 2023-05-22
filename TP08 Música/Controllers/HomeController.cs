using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TP08_Música.Models;

namespace TP08_Música.Controllers
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
        public IActionResult ListarArtistas()
        {
            ViewBag.Lista = BD.ListarArtistas();
            return View();
        }
        public IActionResult VerInfoArtista(int IDArtista)
        {
            ViewBag.InfoArt = BD.VerInfoArtista(IDArtista);
            ViewBag.Albumes = BD.ListarAlbumes(IDArtista);
            return View();
        }
        public IActionResult EliminarArtista(int IDArtista)
        {
            BD.EliminarArtista(IDArtista);
            return RedirectToAction("ListarArtistas");
        }
        public IActionResult AgregarArtista()
        {
            return View();
        }
        [HttpPost] public IActionResult GuardarArtista(Artista Art)
        {
            BD.AgregarArtista(Art);
            return RedirectToAction("ListarArtistas");
        }
        public IActionResult VerInfoAlbum(int album)
        {
            ViewBag.Canciones = BD.ListarCanciones(album);
            ViewBag.InfoAlb = BD.VerInfoAlbum(album);
            return View();
        }
        public IActionResult EliminarAlbum(int album, int artista)
        {
            BD.EliminarAlbum(album);
            return RedirectToAction("VerInfoArtista", new { Artista = artista});
        }
        public IActionResult AgregarAlbum(int artista)
        {
            ViewBag.IdArtista = artista;
            return View();
        }
        [HttpPost] public IActionResult GuardarAlbum(Album Alb)
        {
            BD.AgregarAlbum(Alb);
            return RedirectToAction("VerInfoArtista", new { Artista = Alb.FKArtista});
        }
        public IActionResult EliminarCancion(int cancion, int album)
        {
            BD.EliminarAlbum(cancion);
            return RedirectToAction("VerInfoAlbum", new { Album = album});
        }
        public IActionResult AgregarCancion(int album)
        {
            ViewBag.IdAlbum = album;
            return View();
        }
        [HttpPost] public IActionResult GuardarCancion(Cancion Can)
        {
            BD.AgregarCancion(Can);
            return RedirectToAction("VerInfoAlbum", new { Album = Can.FKAlbum});
        }
       
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
