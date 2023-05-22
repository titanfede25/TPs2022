using System;

namespace TP05.Models
{
    public class Escape
    {
        static string[] _incognitasSalas = new string[]{"LA MUERTE", "ARMAMENTO", "ROJO-AMARILLO-AZUL-ROJO-VERDE-AZUL-VERDE-AZUL-AMARILLO-AZUL", "C4-F1-M16"};
        static int _estadojuego = 1;
        public static int EstadoJuego
        {
            get
            {
                return _estadojuego;
            }
        }
        private static void InicializarJuego()
        {
            _estadojuego=1;
        }

        public static bool ResolverSala(int sala, string incognita) 
        {
            if (sala==_estadojuego && incognita == _incognitasSalas[_estadojuego-1])
            {
                _estadojuego++;
                return true;
            }
            else
            {
                return false;
  
            }       
        }   
    }
}