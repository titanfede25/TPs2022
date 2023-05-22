using System;

namespace TP04MVC.Models
{
    public class Pais
    {
        private string _nombre;
        private string _imgBandera;
        private int _poblacion;
        private DateTime _fechaIndependencia;
        private string _atractivosTuristicos;
        public Pais(string nombre, string imgBandera, int poblacion, DateTime fechaIndependencia, string atractivosTuristicos)
        {
            _nombre = nombre;
            _imgBandera = imgBandera;
            _poblacion = poblacion;
            _fechaIndependencia = fechaIndependencia;
            _atractivosTuristicos = atractivosTuristicos;
        }
        public Pais()
        {

        }
        public string Nombre
        {
            get
            {
                return _nombre;
            }
            set
            {
                _nombre= value;
            }
        }
        public string ImgBandera
        {
            get
            {
                return _imgBandera;
            }
            set
            {
                _imgBandera= value;
            }
        }
        public int Poblacion
        {
            get
            {
                return _poblacion;
            }
            set
            {
                _poblacion= value;
            }
        }
        public DateTime FechaIndependencia
        {
            get
            {
                return _fechaIndependencia;
            }
            set
            {
                _fechaIndependencia= value;
            }
        }
        public string AtractivosTuristicos
        {
            get
            {
                return _atractivosTuristicos;
            }
            set
            {
                _atractivosTuristicos= value;
            }
        }
    }
}