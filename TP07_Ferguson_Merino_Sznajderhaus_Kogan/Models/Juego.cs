using System;
using System.Collections.Generic;
namespace TP07_Ferguson_Merino_Sznajderhaus.Models
{
    public class Juego
    {
        private static string _username;
        private static int _puntajeActual;
        private static int _cantidadPreguntasCorrectas;

        private static List<Pregunta> _preguntas;
        public static List<Pregunta> Preguntas
        {
            get
            {
                return _preguntas;
            }
        }
        private static List<Respuesta> _respuestas;
        public static List<Respuesta> Respuestas
        {
            get
            {
                return _respuestas;
            }
        }

        public static string Username
        {
            get
            {
                return _username;
            }
        }
        public static int PuntajeActual
        {
            get
            {
                return _puntajeActual;
            }
        }

        public static int CantidadPreguntasCorrectas
        {
            get
            {
                return _cantidadPreguntasCorrectas;
            }
        }
        
        public static void InicializarJuego()
        {
            _username = "";
            _puntajeActual = 0;
            _cantidadPreguntasCorrectas = 0;
            _preguntas = new List<Pregunta>();
            _respuestas = new List<Respuesta>();
        }
        public static List<Categoria> ObtenerCategorias()
        {
            return BD.ObtenerCategorias();
        }
        public static List<Dificultad> ObtenerDificultades()
        {
            return BD.ObtenerDificultades();
        }
        public static void CargarPartida(string username, int categoria, int dificultad)
        {
            _username = username;
            _preguntas = BD.ObtenerPreguntas(dificultad,categoria);
            _respuestas = BD.ObtenerRespuestas(_preguntas);
        }
        public static Pregunta ObtenerProximaPregunta()
        {
            int idPregunta;
            Random rnd = new Random();
            idPregunta = rnd.Next(0, _preguntas.Count);
            if (_preguntas.Count() == 0)
            {
                return null;
            }
            else
            {
                return _preguntas[idPregunta];
            }
        }
        public static List<Respuesta> ObtenerProximaRespuesta(int idPregunta)
        {
            List<Respuesta> lista = new List<Respuesta>();
            foreach(Respuesta r in _respuestas)
            {
                if(idPregunta == r.IdPregunta)  
                {
                    lista.Add(r);
                }
            }
            return lista;
        }
        public static bool VerificarRespuesta(int idPregunta, int IdRespuesta)
        {
            int num = 0;
            bool respuesta;
            while (num < _respuestas.Count && _respuestas[num].IdRespuesta != IdRespuesta)
            {
                num++;
            }
            if(num < _respuestas.Count && _respuestas[num].Correcta)
            {
                _puntajeActual++;
                _cantidadPreguntasCorrectas++;
                respuesta = true;
            }
            else
            {
                respuesta = false;
            }
            Pregunta pre = null;
            foreach(Pregunta p in _preguntas)
            {
                if (p.IdPregunta == idPregunta)
                {
                    pre = p;
                }
            }
            _preguntas.Remove(pre);
           return respuesta;
        }
    } 
}