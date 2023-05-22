using System.Data.SqlClient;
using System;
using Dapper;
using System.Collections.Generic;

namespace TP06Qatar_Sznajderhaus_Merino.Models
{
    public static class BD
    {
        private static string _connectionString =  @"Server=DESKTOP-CQ37V4U\SQLEXPRESS;DataBase=Qatar2022;Trusted_Connection=True";
        public static void AgregarJugador(Jugador Player)
        {
            string sql = "INSERT INTO Jugadores VALUES (@pIdEquipo, @pNombre, @pFechaNacimiento, @pFoto, @pEquipoActual)";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new {pIdEquipo=Player.IdEquipo, pNombre=Player.Nombre, pFechaNacimiento=Player.FechaNacimiento, pFoto=Player.Foto, pEquipoActual=Player.EquipoActual});
            }   
        }
        public static void EliminarJugador(int id)
        {
            string sql = "DELETE FROM Jugadores WHERE IdJugador = @pId";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                db.Execute(sql, new { pId = id });
            }
        }
        public static Equipo VerInfoEquipo(int IdEquipo)
        {
            Equipo ObjetoEquipo = null;
            string sql = "SELECT * FROM Equipos WHERE IdEquipo =@pid";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                ObjetoEquipo = db.QueryFirstOrDefault<Equipo>(sql, new {pid = IdEquipo});
            }
            return ObjetoEquipo;
        }
        public static Jugador VerInfoJugador(int IdJugador)
        {
            Jugador ObjetoJugador  = null;
            string sql = "SELECT * FROM Jugadores WHERE IdJugador =@pid";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                ObjetoJugador = db.QueryFirstOrDefault<Jugador>(sql, new {pid = IdJugador});
            }
            return ObjetoJugador;
        }
        public static List<Equipo> ListarEquipos()
        {
            List<Equipo> lista = new List<Equipo>();
            string sql = "SELECT * FROM Equipos";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Equipo>(sql).AsList();
            }
            return lista;
        }
        public static List<Jugador> ListarJugadores(int IdEquipo)
        {
            List<Jugador> lista = new List<Jugador>();
            string sql = "SELECT * FROM Jugadores where IdEquipo = @pid";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Jugador>(sql, new {pid = IdEquipo}).AsList();
            }
            return lista;
        }
    }
}