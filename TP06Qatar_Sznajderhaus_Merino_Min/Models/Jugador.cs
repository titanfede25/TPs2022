using System;
namespace TP06Qatar_Sznajderhaus_Merino.Models
{
    public class Jugador
    {   
        private int _IdJugador;
        private int _IdEquipo;
        private string _Nombre;
        private DateTime _FechaNacimiento;
        private string _Foto;
        private string _EquipoActual;

        public int IdJugador
        {
            get
            {
                return _IdJugador;
            }
            set
            {
                _IdJugador = value;
            }

        }
        public int IdEquipo
        {
            get
            {
                return _IdEquipo;
            }
            set
            {
                _IdEquipo = value;
            }

        }

        public string Nombre
        {
            get
            {
                return _Nombre;
            }
            set
            {
            _Nombre = value;
            }
        }

        public DateTime FechaNacimiento
        {
            get
            {
                return _FechaNacimiento;
            }
            set
            {
                _FechaNacimiento = value;
            }
        }
        public string Foto
        {
            get
            {
                return _Foto;
            }
            set
            {
                _Foto = value;
            }
        }
        public string EquipoActual
        {
            get
            {
                return _EquipoActual;
            }
            set
            {
                _EquipoActual = value;
            }
        }
    }
}