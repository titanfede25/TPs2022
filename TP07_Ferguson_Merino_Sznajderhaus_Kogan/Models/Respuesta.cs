using System;
using System.Collections.Generic;
namespace TP07_Ferguson_Merino_Sznajderhaus.Models
{
    public class Respuesta
    {
        private int _idRespuesta;
        private int _idPregunta;
        private int _opcion;
        private string _contenido;
        private bool _correcta;
         
        private string _foto;

        public int IdPregunta
        {
            get
            {
                return _idPregunta;
            }
            set{
                _idPregunta = value;
            }
        }
        public int IdRespuesta
        {
            get
            {
                return _idRespuesta;
            }
            set{
                _idRespuesta = value;
            }
        }public int Opcion
        {
            get
            {
                return _opcion;
            }
            set{
                _opcion = value;
            }
        }
        public string Contenido
        {
            get
            {
                return _contenido;
            }
            set{
                _contenido = value;
            }
        }
        public bool Correcta
        {
            get
            {
                return _correcta;
            }
            set{
                _correcta = value;
            }
        }
        public string Foto
        {
            get
            {
                return _foto;
            }
            set{
                _foto = value;
            }
        }
    } 
       
}