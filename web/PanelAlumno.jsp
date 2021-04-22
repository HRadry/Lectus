<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Panel del alumno">        
        <title>Panel del alumno</title>
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

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon" loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">                        
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-out-white dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="/lectus/log/perfil"> <img src="../svg/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/panel/lineamiento"> <img src="../svg/lineamientos.svg" width="25" height="25"> Lineamientos</a>                                                                                                    
                                <a class="dropdown-item" href="/lectus/sugerencia/send"> <img src="../svg/idea.svg" width="25" height="25"> Sugerir libro</a> 
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../svg/log-out.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>      


        <div class="container mt-4 text-center">  
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">                   
                    <li class="breadcrumb-item active" aria-current="page">Panel</li>
                </ol>
            </nav>

            <div class="mb-3"> 
                <h1 class="display-6">Panel del alumno</h1>
                <!--Bienvenido, <s:property value="matricula"/>-->
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="card-body border-line-primary rounded mb-4">
                        <img class="mb-4" src="../svg/libros.svg" alt="" width="140" height="140">
                        <h2>Libros</h2>
                        <p class="mb-4">Escoja el libro que desee leer en este parcial.</p>                        
                        <a class="button btn btn-lg btn-out-secondary" href="/lectus/alumnoLibro/libros" role="button"><span>Ver libros</span> <i data-feather="arrow-right"></i></a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card-body border-line-primary rounded mb-4">
                        <img class="mb-4" src="../svg/reporte.svg" alt="" width="140" height="140">
                        <h2>Reporte</h2>
                        <p class="mb-4">Envíe su reporte de lectura para ser calificado.</p>
                        <a class="button btn btn-lg btn-out-secondary" href="/lectus/alumno/entregaReporte" role="button"><span>Enviar reporte</span> <i data-feather="arrow-right"></i></a>                        
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card-body border-line-primary rounded mb-4">
                        <img class="mb-4" src="../svg/calendario.svg" alt="" width="140" height="140">
                        <h2>Fechas</h2>
                        <p class="mb-4">Vea las fechas de entrega de los reportes de lectura.</p>
                        <a class="button btn btn-lg btn-out-secondary" href="/lectus/parcial/fechas" role="button"><span>Ver fechas</span> <i data-feather="arrow-right"></i></a>                                                
                    </div>
                </div>
            </div>

            <div class="row mt-0 mt-md-1">
                <div class="col-md-4">
                    <div class="card-body border-line-primary rounded mb-4">
                        <img class="mb-4" src="../svg/calificacion.svg" alt="" width="140" height="140">
                        <h2>Calificación</h2>
                        <p class="mb-4">Consulte las calificaciones obtenidas en los reportes de lectura.</p>
                        <a class="button btn btn-lg btn-out-secondary" href="/lectus/calificacion/alumno" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>
                    </div>                        
                </div>                  
            </div>               
        </div>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== --> 
        <script src="https://unpkg.com/feather-icons"></script>
        <!-- ================================================== -->
        <script type="text/javascript">
            $(document).ready(function () {
                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);

                feather.replace();
            });
        </script>        
    </body>
</html>