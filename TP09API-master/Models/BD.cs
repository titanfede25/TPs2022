using System.Data.SqlClient;
using System;
using Dapper;
using System.Collections.Generic;

namespace Ejemplo_API.Models
{
    public static class BD
    {
        private static string _connectionString =  @"Server=DESKTOP-CQ37V4U\SQLEXPRESS;DataBase=TPMúsica;Trusted_Connection=True";
        public static void AgregarArtista(Artista Art)
        {
            string sql = "INSERT INTO Artista VALUES (@pnombreCompleto, @pnombreArtistico, @pfechaNacimiento, @ppais, @pfoto)";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pnombreCompleto=Art.nombreCompleto, pnombreArtistico=Art.nombreArtistico, pfechaNacimiento=Art.fechaNacimiento, ppais = Art.pais, pfoto=Art.foto});
            }   
        }
        public static void EliminarArtista(int id)
        {
            string sql = "DELETE FROM Artista where IDArtista=@pId;";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pId = id });
            }
        }
        public static List<Artista> ListarArtistas()
        {
            List<Artista> lista = new List<Artista>();
            string sql = "SELECT * FROM Artista";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Artista>(sql).AsList();
            }
            return lista;
        }
        public static Artista VerInfoArtista(int IDArtista)
        {
            Artista ObjetoArtista = null;
            string sql = "SELECT * FROM Artista WHERE IDArtista =@pid";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                ObjetoArtista = db.QueryFirstOrDefault<Artista>(sql, new {pid = IDArtista});
            }
            return ObjetoArtista;
        }
        public static void AgregarAlbum(Album Alb)
        {
            string sql = "INSERT INTO Album VALUES (@pnombre, @pfechaLanzamiento, @pFKArtista, @pfoto)";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new {pnombre=Alb.Nombre, pfechaLanzamiento=Alb.fechaLanzamiento, pFKArtista=Alb.FKArtista, pfoto=Alb.Foto});
            }   
        }
        public static List<Album> ListarAlbumes()
        {
            List<Album> lista = new List<Album>();
            string sql = "SELECT * FROM Album";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Album>(sql).AsList();
            }
            return lista;
        }
        public static void EliminarAlbum(int IDAlbum)
        {
            string sql = "DELETE FROM Album WHERE IDAlbum = @pId";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pId = IDAlbum });
            }
        }
        public static Album VerInfoAlbum(int IDAlbum)
        {
            
            Album ObjetoAlbum = null;
            string sql = "SELECT * FROM Album WHERE IDAlbum =@pid";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                ObjetoAlbum = db.QueryFirstOrDefault<Album>(sql, new {pid = IDAlbum});
            }
            
            return ObjetoAlbum;
        }
        public static void ModificarArtista(Artista a, int IDArtista)
        {
            string sql = "update Artista set nombreCompleto = @pNombreCompleto, nombreArtistico = @pNombreArtistico, fechaNacimiento = @pFechaNacimiento, pais = @pPais, foto = @pFoto WHERE IDArtista = @pId";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pId = a.IDArtista, pNombreCompleto = a.nombreCompleto, pNombreArtistico = a.nombreArtistico, pFechaNacimiento = a.fechaNacimiento, pPais = a.pais, pFoto = a.foto});
            }
        }   
        public static void ModificarAlbum(Album a, int IdAlbum)
        {
            string sql = "update Album set nombre = @pNombre, fechaLanzamiento = @pFechaLanzamiento, foto = @pFoto, FKArtista = @pFKArtista WHERE IDAlbum = @pId";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pId = a.IdAlbum, pNombre = a.Nombre, pFechaLanzamiento = a.fechaLanzamiento, pFoto = a.Foto, pFKArtista = a.FKArtista});
            }
        }   
    }
}