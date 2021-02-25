<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la administración de fechas">
        <title>Administración de fechas</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark background-nav border-bottom shadow-sm p-3 px-md-4 mb-3">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../img/logo-white.svg" width="180" height="40" class="d-inline-block align-top" alt="Logo de la aplicación" loading="lazy"></a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon" loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item text-light">
                            <a class="text-black font-weight-bold btn btn-wb mr-2 mb-1" href="/lectus/panel/administrador"><img src="../img/menu.svg" class="mr-1" width="20" height="20"> Ir al panel</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-wb dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>



        <div class="text-center mt-4 container">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Administrar fechas</li>
                </ol>
            </nav>
            <h1 class="display-6">Administración de fechas</h1>
        </div>

        <div class="table-responsive container mt-4 mb-4">
            <table id="example" class="table table-striped">
                <thead>
                    <tr class="table-active">
                        <th scope="col" class="align-middle text-center">Parcial</th>
                        <th scope="col" class="align-middle text-center">Inicio del parcial</th>
                        <th scope="col" class="align-middle text-center">Fin del parcial</th>
                        <th scope="col" class="align-middle text-center">Entrega de reporte</th>
                        <th scope="col" class="align-middle text-center">Entrega de calificaciones</th>
                        <th scope="col" class="align-middle text-center">Entrega de correcciones</th>
                        <th scope="col" class="align-middle text-center">Editar</th>
                    </tr>
                </thead>

                <tbody>
                    <s:iterator value="parciales">
                        <tr>                        
                            <td class="align-middle text-center" ><s:property value="nombre"/></td>
                            <td class="align-middle text-center"><s:property value="fechaInicio"/></td>
                            <td class="align-middle text-center"><s:property value="fechaFin"/></td>                       
                            <td class="align-middle text-center"><s:property value="fechaLimiteEntregaAlumno"/></td> 
                            <td class="align-middle text-center"><s:property value="fechaLimiteEntregaRevisor"/></td> 
                            <td class="align-middle text-center"><s:property value="fechaEntregaCorreccion"/></td> 
                            <td class="text-center">
                                <s:url action="edit" var="urlEdit">
                                    <s:param name="id">
                                        <s:property value="idParcial"/>
                                    </s:param>
                                </s:url>
                                <a class="btn btn-outline-warning" role="button" href="${urlEdit}"> <img src="../svg/editar.svg" width="35" height="35"> </a>
                            </td>                        
                        </tr>
                    </s:iterator>                   
                </tbody>            
            </table>
            <div class="text-center mt-2">                              
                <a class="button btn btn-lg btn-color-out" href="/lectus/panel/administrador" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
            </div>
        </div>         

        <div class="modal fade" id="modalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar <span id="parcial-in"></span></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha de inicio:</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" value="" id="fechaInicio" name="fechaInicio">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha de fin:</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" value="" id="fechaFin" name="fechaFin">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer" style="justify-content: center;">
                        <button type="button" class="btn btn-outline-secondary btn-lg" data-dismiss="modal"> <b>Cancelar <img src="../img/cancel-2.svg" height="25"></b> </button>
                        <button type="button" class="btn btn-color-out btn-lg" id="btnDelete"> <b>Aceptar <img src="../img/floppy-disk.svg" height="25"></b> </button>
                    </div>
                </div>
            </div>
        </div>

        <footer id="footer" class="mastfoot mt-auto">
            <div class="inner">
                <p></p>
            </div>
        </footer>

         <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== -->  
        <script src="https://unpkg.com/feather-icons"></script> 
        <script type="text/javascript">
            
            $(document).ready(function () {
                feather.replace();

                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);
               
               
            });
            
        </script>
    </body>

</html>