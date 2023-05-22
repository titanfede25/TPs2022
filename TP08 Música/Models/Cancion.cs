using System;
namespace TP08_Música.Models
{
    public class Cancion
    {   
        private int _IDCancion;
        private string _nombre;
        private int  _visualizaciones;
        private string _link;
        private string _genero;
        private int _FKAlbum;

        public int IDCancion
        {
            get
            {
                return _IDCancion;
            }
            set
            {
                _IDCancion = value;
            }

        }
        public string nombre
        {
            get
            {
                return _nombre;
            }
            set
            {
            _nombre = value;
            }
        }
        public int visualizaciones
        {
            get
            {
                return _visualizaciones;
            }
            set
            {
                _visualizaciones = value;
            }
        }
        public string Link
        {
            get
            {
                return _link;
            }
            set
            {
                _link = value;
            }
        }
        public string Genero
        {
            get
            {
                return _genero;
            }
            set
            {
                _genero = value;
            }
        }
        public int FKAlbum
        {
            get
            {
                return _FKAlbum;
            }
            set
            {
                _FKAlbum = value;
            }

        }
        
    }
}
