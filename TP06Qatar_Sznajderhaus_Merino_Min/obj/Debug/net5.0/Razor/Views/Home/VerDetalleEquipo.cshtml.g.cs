#pragma checksum "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "ae2da5968f1e6bec55003c9f55804deede71882b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_VerDetalleEquipo), @"mvc.1.0.view", @"/Views/Home/VerDetalleEquipo.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\_ViewImports.cshtml"
using TP06Qatar_Sznajderhaus_Merino;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\_ViewImports.cshtml"
using TP06Qatar_Sznajderhaus_Merino.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ae2da5968f1e6bec55003c9f55804deede71882b", @"/Views/Home/VerDetalleEquipo.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"077505e00c1bdad1e42d22b12666dc28f932c10e", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_VerDetalleEquipo : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<!doctype html>\r\n<html lang=\"en\">\r\n  ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "ae2da5968f1e6bec55003c9f55804deede71882b3386", async() => {
                WriteLiteral(@"
    <!-- Required meta tags -->
    <meta charset=""utf-8"">
    <meta name=""viewport"" content=""width=device-width, initial-scale=1, shrink-to-fit=no"">
 
    <!-- Bootstrap CSS -->
    <link rel=""stylesheet"" href=""https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"" integrity=""sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"" crossorigin=""anonymous"">
  ");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n  ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("body", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "ae2da5968f1e6bec55003c9f55804deede71882b4769", async() => {
                WriteLiteral("\r\n");
#nullable restore
#line 12 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
  
    ViewData["Title"] = "Home Page";

#line default
#line hidden
#nullable disable
                WriteLiteral("<h1>Selección nacional de ");
#nullable restore
#line 15 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
                     Write(ViewBag.Ej1.Nombre);

#line default
#line hidden
#nullable disable
                WriteLiteral("</h1>\r\n<table class=\"table bg-glass\">\r\n<thead>\r\n    <td>Nombre</td>\r\n    <td>Escudo</td>\r\n    <td>Camiseta</td>\r\n    <td>Continente</td>\r\n    <td>Copas ganadas</td>\r\n    \r\n</thead>\r\n\r\n  <tr>\r\n    <td>");
#nullable restore
#line 27 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
   Write(ViewBag.Ej1.Nombre);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n    <td><img");
                BeginWriteAttribute("src", " src = \"", 794, "\"", 821, 1);
#nullable restore
#line 28 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 802, ViewBag.Ej1.Escudo, 802, 19, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" width=200px></td>\r\n    <td><img");
                BeginWriteAttribute("src", " src = \"", 854, "\"", 883, 1);
#nullable restore
#line 29 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 862, ViewBag.Ej1.Camiseta, 862, 21, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral("width=200px></td>\r\n    <td>");
#nullable restore
#line 30 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
   Write(ViewBag.Ej1.Continente);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n    <td>");
#nullable restore
#line 31 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
   Write(ViewBag.Ej1.CopasGanadas);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"</td>
  </tr>
<br>

<table class=""table bg-glass"">
  <br><br><br>
  <h3>jugadores</h3>
  <thead class=""thead-dark"">
    
      <td>Jugador</td>
      <td>Foto</td>
      <td>Nombre</td>
      <td>Información</td>
      <td>Eliminar Jugador</td>
  </thead>
  <tbody>
");
#nullable restore
#line 47 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
    
    int i = 1;
    foreach(Jugador jugador in ViewBag.Ej2)
    {

#line default
#line hidden
#nullable disable
                WriteLiteral("        <tr class=\"tr-light\">\r\n            <th scope=\"row\">");
#nullable restore
#line 52 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
                       Write(i);

#line default
#line hidden
#nullable disable
                WriteLiteral("</th>\r\n            <td class=\"mini\"><img");
                BeginWriteAttribute("src", " src=\"", 1431, "\"", 1450, 1);
#nullable restore
#line 53 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 1437, jugador.Foto, 1437, 13, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" width=200px></td>\r\n            <td>");
#nullable restore
#line 54 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
           Write(jugador.Nombre);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n            <td><a");
                BeginWriteAttribute("href", " href=\'", 1527, "\'", 1610, 1);
#nullable restore
#line 55 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 1534, Url.Action("VerDetalleJugador","Home",new {IdJugador = @jugador.IdJugador}), 1534, 76, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" class=\"btn btn-primary info\">Ver más</a></td>\r\n            <td>\r\n            <a type=\"button\" class=\"btn btn-danger\"");
                BeginWriteAttribute("href", " href=\'", 1728, "\'", 1835, 1);
#nullable restore
#line 57 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 1735, Url.Action("EliminarJugador", new { IdJugador = @jugador.IdJugador, idEquipo = @jugador.IdEquipo }), 1735, 100, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">Eliminar</a>\r\n        </td>\r\n        </tr>\r\n");
#nullable restore
#line 60 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
        i++;
    }
  

#line default
#line hidden
#nullable disable
                WriteLiteral("  </tbody>\r\n</table>\r\n<td><a");
                BeginWriteAttribute("href", " href=\'", 1935, "\'", 2017, 1);
#nullable restore
#line 65 "D:\Users\cuent\OneDrive\Escritorio\TP06Qatar_Sznajderhaus_Merino_Min\Views\Home\VerDetalleEquipo.cshtml"
WriteAttributeValue("", 1942, Url.Action("AgregarJugador","Home",new {IdEquipo = @ViewBag.Ej1.IdEquipo}), 1942, 75, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" class=\"btn btn-secondary\">Agregar jugador</a></td>\r\n\r\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.BodyTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_BodyTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591