using System;
namespace Ejemplo_API.Models
{
    public class Album
    {   
        private int _IDAlbum;
        private string? _nombre;
        private DateTime _fechaLanzamiento;
        
        private int _FKArtista;

        private string? _foto;
        
        
        
        public int IdAlbum
        {
            get
            {
                return _IDAlbum;
            }
            set
            {
                _IDAlbum = value;
            }

        }
        public string Nombre
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
        public string Foto
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
        public DateTime fechaLanzamiento
        {
            get
            {
                return _fechaLanzamiento;
            }
            set
            {
                _fechaLanzamiento = value;
            }
        }
        public int FKArtista
        {
            get
            {
                return _FKArtista;
            }
            set
            {
                _FKArtista = value;
            }

        }
    }
}