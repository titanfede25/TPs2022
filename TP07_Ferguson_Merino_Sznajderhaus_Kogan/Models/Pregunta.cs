using System;
using System.Collections.Generic;
namespace TP07_Ferguson_Merino_Sznajderhaus.Models
{
    public class Pregunta
    {
        private int _idCategoria;
        private int _idPregunta;
        private int _idDificultad;
        private string _enunciado;
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
        public int IdCategoria
        {
            get
            {
                return _idCategoria;
            }
            set{
                _idCategoria = value;
            }
        }
        public int IdDificultad
        {
            get
            {
                return _idDificultad;
            }
            set{
                _idDificultad = value;
            }
        }
        public string Enunciado
        {
            get
            {
                return _enunciado;
            }
            set{
                _enunciado = value;
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