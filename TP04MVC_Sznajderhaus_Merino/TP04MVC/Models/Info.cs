using System;
using System.Collections.Generic;

namespace TP04MVC.Models
{
    class Info
    {
       private static List<Pais> _Lista = new List<Pais>();

       private static void InicializarLista()
       {
            _Lista.Add(new Pais("Argentina", "https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg", 45000000, new DateTime(1816, 7, 9), "Cataratas Del Iguazú, Ciudad Autónoma de Buenos Aires, Bariloche, Glaciar Perito Moreno, El cerro de los siete colores"));
            _Lista.Add(new Pais("Israel", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Israel.svg/1100px-Flag_of_Israel.svg.png", 9000000, new DateTime(1948, 3, 14), "Jerusalem, Tel Aviv, Mar Muerto, Kibutzim, Cesarea"));
            _Lista.Add(new Pais("Estados Unidos", "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png", 330000000, new DateTime(1776, 7, 4), "Miami, Nueva York, Lo Ángeles, Las Vegas, Washington D.C"));
            _Lista.Add(new Pais("Rusia", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/200px-Flag_of_Russia.svg.png", 144000000, new DateTime(1991, 12, 25), "Moscow, San Petersburgo, Lago Baikal, Sochi, Vladivostok"));
            _Lista.Add(new Pais("Ucrania", "https://upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Ukraine.svg", 44000000, new DateTime(1991, 8, 24), "Kiev, Chernobyl, Leópolis, Odesa, Yaremche"));
       }
       public static List<Pais> ListarPaises()
       {
           if(_Lista.Count == 0)
           {
              InicializarLista();
           }
           return _Lista;
       }
       public static Pais BuscarPais(string Name)
       {
           int X = 0;
           Pais unPais = null;
           while(X != _Lista.Count && unPais == null)
           {
               if(_Lista[X].Nombre == Name)
               {
                   unPais = _Lista[X];
               }
               X++;
           }
           return unPais;
       }
    }
}