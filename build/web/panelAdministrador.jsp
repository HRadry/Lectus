<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Panel para el administrador">        
        <title>Panel del administrador</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/carousel.css" rel="stylesheet">
        <link href="../css/principal.css" rel="stylesheet">

        <!-- Typography -->  
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <style>                         
            body {
                font-family: 'Roboto', sans-serif;
            }           
        </style>
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
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-wb dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/log/profile"> <img src="../img/rule.svg" width="25" height="25"> Lineamientos</a>                                                                                                    
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>      

        <main role="main">
            <div class="container marketing mt-4">  
                <div class="pricing-header mb-5 text-center animate-opacity container">
                    <h1 class="display-6">Panel del administrador</h1>
                    Bienvenido, <s:property value="matricula"/>  
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="card-body border rounded mb-4">
                            <img class="mb-4" src="../img/libros.svg" alt="" width="140" height="140">
                            <h2>Administrar libros</h2>
                            <p class="mb-4">Agregue, actualice, elimine los libros disponibles.</p>
                            <!--<p><a class="btn btn-lg btn-color-out" href="/lectus/libro/list" role="button">Administrar &raquo;</a></p>-->
                            <a class="button btn btn-lg btn-color-out" href="/lectus/libro/list" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card-body border rounded mb-4">
                            <img class="mb-4" src="../img/estudiante.svg" alt="" width="140" height="140">
                            <h2>Administrar alumnos</h2>
                            <p class="mb-4">Agregue, actualice y elimine los registros de los alumnos.</p>
                            <!--<p><a class="btn btn-lg btn-color-out" href="/lectus/alumno/list" role="button">Administrar &raquo;</a></p>-->
                            <a class="button btn btn-lg btn-color-out" href="/lectus/alumno/list" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>                        
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card-body border rounded mb-4">
                            <img class="mb-4" src="../img/revisor.svg" alt="" width="140" height="140">
                            <h2>Administrar revisores</h2>
                            <p class="mb-4">Agregue, actualice y elimine los registros de los revisores.</p>
                            <!--<p><a class="btn btn-lg btn-color-out" href="/lectus/revisor/list" role="button">Administrar  &raquo;</a></p>-->
                            <a class="button btn btn-lg btn-color-out" href="/lectus/revisor/list" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>                                                
                        </div>
                    </div>
                </div>


                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="card-body border rounded mb-4">
                            <img class="mb-4" src="../img/calendario.svg" alt="" width="140" height="140">
                            <h2>Administrar fechas</h2>
                            <p class="mb-4">Establezca las fechas en las que se entregarán los reportes de lectura.</p>
                            <!--<p><a class="btn btn-lg btn-color-out" href="/lectus/parcial/listAdmin" role="button">Administrar  &raquo;</a></p>-->
                            <a class="button btn btn-lg btn-color-out" href="/lectus/parcial/list" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>
                        </div>                        
                    </div>  

                    <div class="col-md-4">
                        <div class="card-body border rounded mb-4">
                            <img class="mb-4" src="../img/administrarIdea.svg" alt="" width="140" height="140">
                            <h2>Administrar sugerencias</h2>
                            <p class="mb-4">Vea las sugerencias de libros realizadas por los alumnos para tomar ideas.</p>
                            <!--<p><a class="btn btn-lg btn-color-out" href="/lectus/sugerencia/list" role="button">Administrar  &raquo;</a></p>-->
                            <a class="button btn btn-lg btn-color-out" href="/lectus/sugerencia/list" role="button"><span>Administrar</span> <i data-feather="arrow-right"></i></a>                        
                        </div>                        
                    </div>                                            
                </div>               
            </div>

        </main>
        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js"></script>
        <script src="https://unpkg.com/feather-icons"></script>
        <!-- ================================================== -->
        <script type="text/javascript">
            feather.replace();
        </script>
    </body>

</html>