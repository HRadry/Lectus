<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la administración de fechas">
        <title>Administrar fechas</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">
        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">     
    </head>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark background-primary border-bottom shadow-sm p-3 px-md-4 mb-3">
            <div class="container">
                <a class="navbar-brand" href="/lectus/index/home"><img src="../img/logo-white.svg" width="180" height="40" class="d-inline-block align-top" alt="Logo de la aplicación" loading="lazy"></a>
            </div>
        </nav>

        <div class="container mt-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Administrar fechas</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Administrar fechas</h1>
            </div>
        </div>
        
        <div class="table-responsive container mt-4 mb-4">
            <table id="example" class="table table-striped">
                <thead>
                    <tr class="table-active">
                        <th scope="col" class="align-middle text-center py-0" colspan="2">Evaluaiones parciales</th>                                             
                        <th scope="col" class="align-middle text-center py-0">Entrega de reportes</th>
                        <th scope="col" class="align-middle text-center py-0">Entrega de calificaciones</th>
                        <th scope="col" class="align-middle text-center py-0">Entrega de correcciones</th>
                        <th scope="col" class="align-middle text-center py-0">Editar</th>
                    </tr>
                </thead>

                <tbody>
                    <s:iterator value="parciales">
                        <tr>                        
                            <td class="align-middle text-left font-weight-bold" ><s:property value="nombre"/></td>
                            <td class="align-middle text-center"><s:property value="fechaInicio"/> - <s:property value="fechaFin"/></td>                                                 
                            <td class="align-middle text-center"><s:property value="fechaLimiteEntregaAlumno"/></td> 
                            <td class="align-middle text-center"><s:property value="fechaLimiteEntregaRevisor"/></td> 
                            <td class="align-middle text-center"><s:property value="fechaEntregaCorreccion"/></td> 
                            <td class="align-middle text-center">
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
        </div>        

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== -->        

        <script type="text/javascript">
            $(document).ready(function () {                
                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);

                $("#btnDelete").click(function () { // 3 Das clic en el botón Aceptar del modal
                    eliminarCono(idLibro); //4 Se ejecuta la función eliminarCono y le pasas el idCono
                });
            });

            function asignarId(id, titulo) { // 1 se recibe tu idCono
                idLibro = id;
                document.getElementById("titulo-in").innerHTML = titulo;
                $("#modalDelete").modal("show"); // 2 se muestra el modal
            }

            function eliminarCono(id) { //5 se ejecuta el controlador pasandole el idCono
                window.location.href = "delete?id=" + id;
            }
        </script>
    </body>
</html>