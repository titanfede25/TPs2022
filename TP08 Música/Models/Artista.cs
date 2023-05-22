using System;
namespace TP08_Música.Models
{
    public class Artista
    {   
        private int _IDArtista;
        private string _nombreCompleto;
        private string _nombreArtistico;
        private DateTime _fechaNacimiento;
        private string _pais;

        private string _foto;
        
        public int IDArtista
        {
            get
            {
                return _IDArtista;
            }
            set
            {
                _IDArtista = value;
            }

        }
        public string nombreCompleto
        {
            get
            {
                return _nombreCompleto;
            }
            set
            {
            _nombreCompleto = value;
            }
        }
        public string nombreArtistico
        {
            get
            {
                return _nombreArtistico;
            }
            set
            {
                _nombreArtistico = value;
            }
        }
        public DateTime fechaNacimiento
        {
            get
            {
                return _fechaNacimiento;
            }
            set
            {
                _fechaNacimiento = value;
            }
        }
        public string pais
        {
            get
            {
                return _pais;
            }
            set
            {
                _pais = value;
            }
        }
        public string foto
        {
            get
            {
                return _foto;
            }
            set
            {
                _foto = value;
            }
        }
        
    }
}
