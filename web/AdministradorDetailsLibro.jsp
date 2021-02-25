<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para ver los detalles del libro">
        <title>Detalles del libro</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/carousel.css" rel="stylesheet">
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

        <div class="container mt-4 mb-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/libro/list">Administrar libros</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detalles del libro</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Detalles del libro</h1>
            </div>

            <div class="row mt-4">
                <div class="col-md-5 mt-3 mt-md-0">
                    <legend class="font-weight-normal text-justify">Libro</legend>
                    <div class="text-center">
                        <div class="mt-2">
                            <img src="${libro.portada}" width="200" height="250" class="img-thumbnail d-inline-block align-top rounded" alt="Portada del libro" loading="lazy">                                         
                        </div>
                        <a class="btn btn-lg btn-color-out font-weight-bold mt-4" target="_blank" href="${libro.archivoPDF}" role="button"><img src="../svg/ver.svg" height="30" alt="icon" loading="lazy"> Ver PDF</a>                                    
                    </div>
                </div>

                <div class="col-md-7 mt-4 mt-md-0 text-justify">
                    <legend class="font-weight-normal">Datos generales</legend>
                    <div class="row pl-3 mt-2">
                        <div>
                            <p class=" font-weight-bold">Género: <span class="font-weight-normal">${libro.genero}</span><span class="font-weight-normal">.</span></p>
                            <p class="mt-2 font-weight-bold">Título: <span class="font-weight-normal">${libro.titulo}.</span></p>
                            <p class="mt-2 font-weight-bold">Autor: <span class="card-text font-weight-normal">${libro.autor}.</span></p>                                        
                            <p class="mt-2 font-weight-bold">Año de publicación: <span class="card-text font-weight-normal">${libro.anoPublicacion}.</span></p>
                            <p class="mt-2 font-weight-bold">Número de páginas: <span class="card-text font-weight-normal">${libro.numeroPagina}.</span></p>
                            <p class="mt-2 font-weight-bold">Edición: <span class="card-text font-weight-normal">${libro.edicion} edición.</span></p>
                        </div>                                    
                    </div>
                </div>                    
            </div>     

            <div class="row">
                <div class="col-md-12 mt-1 mt-md-3 text-justify">
                    <legend class="font-weight-normal">Sinópsis</legend>
                    <div class="form-group mt-2">
                        <p>${libro.sinopsis}</p>
                    </div>
                </div>
            </div>

            <div class="text-center mt-2">                              
                <a class="button btn btn-lg btn-color-out" href="/lectus/libro/list" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== -->  
        <script src="https://unpkg.com/feather-icons"></script>        
        <script type="text/javascript">
            feather.replace();
        </script>
    </body>

</html>