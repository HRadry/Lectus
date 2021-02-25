package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdministradorDetailsAlumno_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("        <meta name=\"description\" content=\"Módulo para ver los detalles del alumno\">\n");
      out.write("        <title>Detalles del alumno</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\" integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link rel=\"icon\" href=\"../img/logo.svg\" sizes=\"32x32\" type=\"image/png\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"../css/carousel.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../css/principal.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-md navbar-dark background-nav border-bottom shadow-sm p-3 px-md-4 mb-3\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../img/logo-white.svg\" width=\"180\" height=\"40\" class=\"d-inline-block align-top\" alt=\"Logo de la aplicación\" loading=\"lazy\"></a>\n");
      out.write("\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExample04\" aria-controls=\"navbarsExample04\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <img src=\"../img/opciones.svg\" width=\"40\" height=\"40\" class=\"d-inline-block align-top\" alt=\"icon\" loading=\"lazy\">\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarsExample04\">\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item text-light\">\n");
      out.write("                            <a class=\"text-black font-weight-bold btn btn-wb mr-2 mb-1\" href=\"/lectus/panel/administrador\"><img src=\"../img/menu.svg\" class=\"mr-1\" width=\"20\" height=\"20\"> Ir al panel</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"text-black font-weight-bold btn btn-wb dropdown-toggle mb-1\" href=\"#\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"../img/dropdown.svg\" width=\"20\" height=\"20\"> Opciones</a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"dropdown04\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\"> <img src=\"../img/perfil.svg\" width=\"25\" height=\"25\"> Mi perfil</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"/lectus/log/logout\"> <img src=\"../img/salir.svg\" width=\"25\" height=\"25\"> Cerrar sesión</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <main role=\"main\" class=\"inner cover container mt-4\">\n");
      out.write("            <nav aria-label=\"breadcrumb\">\n");
      out.write("                <ol class=\"breadcrumb\">\n");
      out.write("                    <li class=\"breadcrumb-item\"><a href=\"/lectus/panel/administrador\">Panel</a></li>\n");
      out.write("                    <li class=\"breadcrumb-item\"><a href=\"/lectus/alumno/list\">Administrar alumnos</a></li>\n");
      out.write("                    <li class=\"breadcrumb-item active\" aria-current=\"page\">Detalles del alumno</li>\n");
      out.write("                </ol>\n");
      out.write("            </nav>\n");
      out.write("            <div class=\"pricing-header mb-5 text-center animate-opacity container\">\n");
      out.write("                <h1 class=\"display-6\">Detalles del alumno</h1>\n");
      out.write("            </div>\n");
      out.write("            <section class=\"form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column\">\n");
      out.write("                <form>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-6 border-left\">\n");
      out.write("                            <fieldset>\n");
      out.write("                                <legend class=\"font-weight-normal\">Datos generales del alumno</legend>\n");
      out.write("                                <div class=\"row no-gutters flex-md-row mb-4 position-relative box-book\">\n");
      out.write("                                    <div class=\"mt-2 d-flex flex-column position-static\">\n");
      out.write("                                        <p class=\"mb-3 d-inline-block font-weight-bold\">Nombre: <span class=\"font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.nombre}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span><span class=\"font-weight-normal\">.</span></p>\n");
      out.write("                                        <p class=\"mt-2 font-weight-bold title-book\">Apellido paterno: <span class=\"font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.apellidoPaterno}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>\n");
      out.write("                                        <p class=\"mt-2 font-weight-bold\">Apellido materno: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.apellidoMaterno}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>                                        \n");
      out.write("                                    </div>                                    \n");
      out.write("                                </div>\n");
      out.write("                            </fieldset>                         \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6 border-left mb-4\">\n");
      out.write("                            <legend class=\"font-weight-normal\">Datos académicos y del sistema</legend>\n");
      out.write("                            <div class=\"row no-gutters flex-md-row mb-4 position-relative box-book\">\n");
      out.write("                                <div class=\"mt-2 d-flex flex-column position-static\">\n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Correo: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.correo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p> \n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Numero telefónico: <span class=\"card-text font-weight-normal\">9512569837.</span></p> \n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Carrera: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.carrera}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>\n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Semestre: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.semestre}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>\n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Grupo: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.grupo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>                                    \n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Matrícula: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.matricula}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>\n");
      out.write("                                    <p class=\"mt-2 font-weight-bold\">Contraseña: <span class=\"card-text font-weight-normal\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuario.password}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".</span></p>\n");
      out.write("                                </div>                                    \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"text-center mt-2\">                              \n");
      out.write("                        <a class=\"button btn btn-lg btn-color-out\" href=\"/lectus/alumno/list\" role=\"button\"><i data-feather=\"arrow-left\"></i> Regresar</a>                                                \n");
      out.write("                    </div>\n");
      out.write("                </form>                                                                \n");
      out.write("            </section>\n");
      out.write("        </main>\n");
      out.write("        <!-- Bootstrap core JavaScript -->      \n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js\" integrity=\"sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF\" crossorigin=\"anonymous\"></script>        \n");
      out.write("        <!-- ================================================== -->  \n");
      out.write("        <script src=\"https://unpkg.com/feather-icons\"></script>        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            feather.replace();\n");
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
}
