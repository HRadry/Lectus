package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AlumnoEntregaReporte_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_actionerror_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_file_size_name_class_accept_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_actionerror_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_file_size_name_class_accept_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_actionerror_nobody.release();
    _jspx_tagPool_s_file_size_name_class_accept_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"Módulo para enviar un libro sugerido\">        \n");
      out.write("        <title>Entregar Reporte</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\" integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link rel=\"icon\" href=\"./img/logo.svg\" sizes=\"32x32\" type=\"image/png\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"./css/carousel.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"./css/principal.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-md navbar-dark background-nav border-bottom shadow-sm p-3 px-md-4 mb-3\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"./img/logo-white.svg\" width=\"180\" height=\"40\" class=\"d-inline-block align-top\" alt=\"Logo de la aplicación\" loading=\"lazy\"></a>\n");
      out.write("\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExample04\" aria-controls=\"navbarsExample04\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <img src=\"./img/opciones.svg\" width=\"40\" height=\"40\" class=\"d-inline-block align-top\" alt=\"icon\" loading=\"lazy\">\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarsExample04\">\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\">                        \n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"text-black font-weight-bold btn btn-wb dropdown-toggle mb-1\" href=\"#\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"./img/dropdown.svg\" width=\"20\" height=\"20\"> Opciones</a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"dropdown04\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\"> <img src=\"./img/perfil.svg\" width=\"25\" height=\"25\"> Mi perfil</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"/lectus/panel/lineamiento\"> <img src=\"./img/rule.svg\" width=\"25\" height=\"25\"> Lineamientos</a>                                                                                                        \n");
      out.write("                                <a class=\"dropdown-item\" href=\"/lectus/log/logout\"> <img src=\"./img/salir.svg\" width=\"25\" height=\"25\"> Cerrar sesión</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <main role=\"main\" class=\"inner cover container mt-4\">            \n");
      out.write("            <div class=\"pricing-header mb-5 text-center animate-opacity container\">\n");
      out.write("                <h1 class=\"display-6\">Entregar Reporte</h1>\n");
      out.write("                ");
      if (_jspx_meth_s_actionerror_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <section class=\"form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column\">\n");
      out.write("                <form class=\"needs-validation\" novalidate action=\"/lectus/sugerencia/store\" method=\"POST\" enctype=\"multipart/form-data\">                    \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <table class=\"table table-bordered\">\n");
      out.write("                                <thead>\n");
      out.write("                                <legend class=\"font-weight-normal\">1.- Información de entrega</legend>\n");
      out.write("                                <br>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"row\">Fecha de entrega</th>\n");
      out.write("                                        <td>Martes, 23 de Febrero del 2021, 23:00</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"row\">Tiempo restante</th>\n");
      out.write("                                        <td>11 horas</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"row\">Estatus de entrega</th>\n");
      out.write("                                        <td>No entregado</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"row\">Estatus de calificación</th>\n");
      out.write("                                        <td>Sin calificar</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-md-5\">\n");
      out.write("                            <br>\n");
      out.write("                            <fieldset>\n");
      out.write("                                <legend class=\"font-weight-normal\">2.- Cargar archivo  <img src=\"./img/load.svg\" height=\"30\" alt=\"icon\" loading=\"lazy\"></legend>                                \n");
      out.write("                                <div class=\"form-group mt-2\">                                   \n");
      out.write("                                    <label for=\"nameFile2\" class=\"font-weight-bolder\">Libro PDF</label>\n");
      out.write("                                    <div class=\"custom-file  border\" id=\"customFile\" style=\"border-radius:.3em\">\n");
      out.write("                                        <input type=\"file\" accept=\"application/pdf\" name=\"userImage\" class=\"custom-file-input\" id=\"nameFile2\" id=\"customFileLang\" lang=\"es\" required>\n");
      out.write("                                        <label class=\"custom-file-label form-control-file\" for=\"customFileLang\" style=\"height:5px\">Seleccionar archivo</label>\n");
      out.write("                                        <div class=\"invalid-feedback\">\n");
      out.write("                                            Este campo es necesario ☝🏼, por favor, acomplételo.\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>                                    \n");
      out.write("                                </div>\n");
      out.write("                                <!--<div class=\"form-group mt-2\">  \n");
      out.write("                                ");
      if (_jspx_meth_s_file_0(_jspx_page_context))
        return;
      out.write("                                    \n");
      out.write("                            </div>-->\n");
      out.write("                            </fieldset>                                                                                                              \n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"sinopsis\" class=\"font-weight-bolder\">Comentarios</label>\n");
      out.write("                                <textarea class=\"form-control text-justify\" id=\"word\" name=\"sugerencia.sinopsis\" rows=\"5\" required maxlength=\"425\" oninput=\"countWord()\"></textarea>\n");
      out.write("                                <div class=\"invalid-feedback\">\n");
      out.write("                                    Este campo es necesario 👆, por favor, acomplételo.\n");
      out.write("                                </div>\n");
      out.write("                                <p><small id=\"show\">0</small> <small> caracteres restantes de 425.</small></p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"text-center mt-3\">\n");
      out.write("                                <a href=\"/lectus/panel/alumno\" class=\"btn btn-lg btn-color font-weight-normal my-2 mx-2\">Cancelar <img src=\"./img/cancel-2.svg\" height=\"25\" alt=\"icon\" loading=\"lazy\"></a>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-lg btn-color font-weight-normal\">Enviar <img src=\"./img/send.svg\" height=\"25\" alt=\"icon\" loading=\"lazy\"></button>\n");
      out.write("                            </div> \n");
      out.write("                            </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </section>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JavaScript -->      \n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.js\" integrity=\"sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\" integrity=\"sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js\"></script>\n");
      out.write("        <!-- ================================================== -->                               \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            (function camposVacios() {\n");
      out.write("                'use strict';\n");
      out.write("                window.addEventListener('load', function () {\n");
      out.write("                    // Fetch all the forms we want to apply custom Bootstrap validation styles to\n");
      out.write("                    var forms = document.getElementsByClassName('needs-validation');\n");
      out.write("                    // Loop over them and prevent submission\n");
      out.write("                    var validation = Array.prototype.filter.call(forms, function (form) {\n");
      out.write("                        form.addEventListener('submit', function (event) {\n");
      out.write("                            if (form.checkValidity() === false) {\n");
      out.write("                                event.preventDefault();\n");
      out.write("                                event.stopPropagation();\n");
      out.write("                            }\n");
      out.write("                            form.classList.add('was-validated');\n");
      out.write("                        }, false);\n");
      out.write("                    });\n");
      out.write("                }, false);\n");
      out.write("            })();\n");
      out.write("\n");
      out.write("            function solonumeros(e) {\n");
      out.write("                key = e.keyCode || e.which;\n");
      out.write("\n");
      out.write("                teclado = String.fromCharCode(key).toLowerCase();\n");
      out.write("\n");
      out.write("                numeros = \"1234567890\";\n");
      out.write("\n");
      out.write("                especiales = \"35-43-45\";\n");
      out.write("\n");
      out.write("                teclado_especial = false;\n");
      out.write("\n");
      out.write("                for (var i in especiales) {\n");
      out.write("                    if (key == especiales[i]) {\n");
      out.write("                        teclado_especial = true;\n");
      out.write("                        break;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                if (numeros.indexOf(teclado) == -1 && !teclado_especial) {\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function countWord() {\n");
      out.write("\n");
      out.write("                // Get the input text value \n");
      out.write("                var words = document\n");
      out.write("                        .getElementById(\"word\").value;\n");
      out.write("\n");
      out.write("                // Initialize the word counter \n");
      out.write("                var count = 0;\n");
      out.write("\n");
      out.write("                // Split the words on each \n");
      out.write("                // space character  \n");
      out.write("                var split = words.split('');\n");
      out.write("\n");
      out.write("                // Loop through the words and  \n");
      out.write("                // increase the counter when  \n");
      out.write("                // each split word is not empty \n");
      out.write("                for (var i = 0; i < split.length; i++) {\n");
      out.write("                    if (split[i] != \"\") {\n");
      out.write("                        count += 1;\n");
      out.write("                        x = 425 - count;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                // Display it as output \n");
      out.write("                document.getElementById(\"show\")\n");
      out.write("                        .innerHTML = x;\n");
      out.write("            }\n");
      out.write("            //document.getElementByName(\"sugerencia.libroPDF\")[0].value = fileName;\n");
      out.write("\n");
      out.write("            $('.custom-file-input').on('change', function () {\n");
      out.write("                var fileName = document.getElementById(\"nameFile2\").files[0].name;\n");
      out.write("                $(this).next('.form-control-file').addClass(\"selected\").html(fileName);\n");
      out.write("                //document.getElementByName(\"sugerencia.archivoPDF\")[0].value = fileName;                                               \n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_s_actionerror_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:actionerror
    org.apache.struts2.views.jsp.ui.ActionErrorTag _jspx_th_s_actionerror_0 = (org.apache.struts2.views.jsp.ui.ActionErrorTag) _jspx_tagPool_s_actionerror_nobody.get(org.apache.struts2.views.jsp.ui.ActionErrorTag.class);
    _jspx_th_s_actionerror_0.setPageContext(_jspx_page_context);
    _jspx_th_s_actionerror_0.setParent(null);
    int _jspx_eval_s_actionerror_0 = _jspx_th_s_actionerror_0.doStartTag();
    if (_jspx_th_s_actionerror_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_actionerror_nobody.reuse(_jspx_th_s_actionerror_0);
      return true;
    }
    _jspx_tagPool_s_actionerror_nobody.reuse(_jspx_th_s_actionerror_0);
    return false;
  }

  private boolean _jspx_meth_s_file_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:file
    org.apache.struts2.views.jsp.ui.FileTag _jspx_th_s_file_0 = (org.apache.struts2.views.jsp.ui.FileTag) _jspx_tagPool_s_file_size_name_class_accept_nobody.get(org.apache.struts2.views.jsp.ui.FileTag.class);
    _jspx_th_s_file_0.setPageContext(_jspx_page_context);
    _jspx_th_s_file_0.setParent(null);
    _jspx_th_s_file_0.setName("sugerencia.archivoPDF");
    _jspx_th_s_file_0.setAccept("application/pdf");
    _jspx_th_s_file_0.setCssClass("border");
    _jspx_th_s_file_0.setSize("40");
    int _jspx_eval_s_file_0 = _jspx_th_s_file_0.doStartTag();
    if (_jspx_th_s_file_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_file_size_name_class_accept_nobody.reuse(_jspx_th_s_file_0);
      return true;
    }
    _jspx_tagPool_s_file_size_name_class_accept_nobody.reuse(_jspx_th_s_file_0);
    return false;
  }
}
