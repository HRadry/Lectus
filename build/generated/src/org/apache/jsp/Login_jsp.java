package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_actionerror_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_actionerror_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_actionerror_nobody.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"Módulo de inicio de sesión\">   \n");
      out.write("        <title>Iniciar sesión</title>\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\">        \n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link rel=\"icon\" href=\"../img/logo.svg\" sizes=\"32x32\" type=\"image/png\">\n");
      out.write("        <!-- Custom styles for this template -->        \n");
      out.write("        <link href=\"../css/principal.css\" rel=\"stylesheet\">                \n");
      out.write("        <link href=\"../css/signin.css\" rel=\"stylesheet\"> \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>            \n");
      out.write("        <div class=\"container mt-4\">     \n");
      out.write("            <nav aria-label=\"breadcrumb\">\n");
      out.write("                <ol class=\"breadcrumb\">\n");
      out.write("                    <li class=\"breadcrumb-item\"><a href=\"/lectus/index/home\">Inicio</a></li>\n");
      out.write("                    <li class=\"breadcrumb-item active\" aria-current=\"page\">Iniciar sesión</li>\n");
      out.write("                </ol>\n");
      out.write("            </nav>\n");
      out.write("            \n");
      out.write("            <form class=\"form-signin mt-0 pt-0\" action=\"/lectus/log/login\" method=\"POST\">\n");
      out.write("                <div class=\"text-center mb-4\">                    \n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\"><img src=\"../img/logo-white.svg\" width=\"300\" height=\"100\" class=\"d-inline-block align-top\" alt=\"Logo de la aplicación\" loading=\"lazy\"></a>                            \n");
      out.write("                    <h1 class=\"h3 mb-3 font-weight-normal\">Iniciar sesión</h1>\n");
      out.write("                    <p>Ingrese sus datos en los campos correspondientes y de clic en el botón Ingresar.</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"font-weight-bold\" for=\"inputUser\">Correo</label>\n");
      out.write("                    <input type=\"number\" id=\"inputUser\" class=\"form-control form-control-lg\"  name=\"matricula\" required autofocus>                \n");
      out.write("                </div>                      \n");
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"font-weight-bold\" for=\"inputPassword\">Contraseña</label>\n");
      out.write("                    <input type=\"password\" id=\"inputPassword\" class=\"form-control form-control-lg\" name=\"password\" required>                \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"checkbox mt-2 mb-2\">\n");
      out.write("                    <label>\n");
      out.write("                        <input type=\"checkbox\" value=\"remember-me\"> Recordar datos\n");
      out.write("                    </label>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"text-center text-danger\">\n");
      out.write("                    ");
      if (_jspx_meth_s_actionerror_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <button class=\"btn btn-lg btn-solid-secondary btn-block mb-2\" type=\"submit\">Ingresar</button>                                               \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core JavaScript -->      \n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js\" integrity=\"sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF\" crossorigin=\"anonymous\"></script>        \n");
      out.write("        <!-- ================================================== -->   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
}
