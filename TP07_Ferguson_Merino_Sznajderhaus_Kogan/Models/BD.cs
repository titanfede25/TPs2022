using System.Data.SqlClient;
using System;
using Dapper;
using System.Collections.Generic;

namespace TP07_Ferguson_Merino_Sznajderhaus.Models
{
    public static class BD
    {
        private static string _connectionString =  @"Server=A-PHZ2-AMI-012;DataBase=PreguntadOrt;Trusted_Connection=True";
        public static List<Categoria> ObtenerCategorias()
        {
            List<Categoria> lista = new List<Categoria>();
            string sql = "SELECT * FROM Categorias";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Categoria>(sql).ToList();
            }
            return lista;
        }
        public static List<Dificultad> ObtenerDificultades()
        {
            List<Dificultad> lista = new List<Dificultad>();
            string sql = "SELECT * FROM Dificultades";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                lista = db.Query<Dificultad>(sql).ToList();
            }
            return lista;
        }
        public static List<Pregunta> ObtenerPreguntas(int dificultad, int categoria)
        {
            List<Pregunta> preguntas = new List<Pregunta>();
            string sql;
            if(dificultad!=-1 && categoria!=-1)
            {
                sql = "SELECT * FROM Preguntas where IdDificultad = @pid1 AND IdCategoria = @pid2";
                using(SqlConnection db = new SqlConnection(_connectionString))
                {
                    preguntas = db.Query<Pregunta>(sql, new {pid1 = dificultad, pid2 = categoria}).ToList();
                }
            }
            else
            {
                if (categoria != -1)
                {
                    sql = "SELECT * FROM Preguntas where IdCategoria = @pid";
                    using(SqlConnection db = new SqlConnection(_connectionString))
                    {
                        preguntas = db.Query<Pregunta>(sql, new {pid = dificultad}).ToList();
                    }
                }
                else
                {
                    if(dificultad!=-1)
                    {
                        sql = "SELECT * FROM Preguntas where IdDificultad = @pid";
                        using(SqlConnection db = new SqlConnection(_connectionString))
                        {
                            preguntas = db.Query<Pregunta>(sql, new {pid = dificultad}).ToList();
                        }
                    }
                    else
                    {
                        sql = "SELECT * FROM Preguntas";
                        using(SqlConnection db = new SqlConnection(_connectionString))
                        {
                            preguntas = db.Query<Pregunta>(sql).ToList();
                        }
                    } 
                }
            }
            return preguntas;
        }
        public static List<Respuesta> ObtenerRespuestas(List<Pregunta> preguntas)
        {
            List<Respuesta> respuesta = new List<Respuesta>();
            List<Respuesta> listOfLists = new List<Respuesta>();
            string sql = "SELECT * FROM Respuestas where IdPregunta = @pid";
            foreach(Pregunta p in  preguntas)
            {
                using(SqlConnection db = new SqlConnection(_connectionString))
                {
                    respuesta = db.Query<Respuesta>(sql, new {pid = p.IdPregunta}).ToList();
                }
                listOfLists.AddRange(respuesta);
            }
            return listOfLists;
        }
    }
}


