<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para ver los detalles del libro sugerido">
        <title>Detalles del libro sugerido</title>
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

        <div class="container mt-4 mb-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/sugerencia/list">Administrar  libros sugeridos</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detalles</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">${libro.titulo}</h1>
            </div> 
            <div class="row mt-4">
                <div class="col-md-4 mt-0 mt-md-0">                    
                    <div class="text-center">
                        <div class="mt-2">
                            <img src="${libro.portada}" alt="Portada imagen" data-src="holder.js/300x350?text=Portada no disponible&theme=gray&size=15" class="img-thumbnail d-inline-block align-top rounded" onerror="this.style.display = 'none'" loading="lazy">   <!-- onerror="this.src='../svg/imagen.svg'" onerror="this.src='../svg/imagen.svg'" -->                                      
                            <a class="btn btn-lg btn-block btn-out-primary mt-4" target="_blank" href="../libros/${libro.archivoPDF}" role="button"><img src="../svg/pdf.svg" height="30" alt="icon" loading="lazy"> Ver libro</a>                                                        
                        </div>
                    </div>
                </div>

                <div class="col-md-8 mt-4 mt-md-0 text-justify">                    
                    <div>
                        <legend class="font-weight-normal p-0 m-0">Detalles</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Autor:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">${libro.autor}.</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Género:
                                    </div>
                                    <div class="col-6">
                                        <span class="font-weight-normal">${libro.genero}.</span>
                                    </div>
                                </div>
                            </li>                           
                            <!--<li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Año de publicación:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">                                                                                        
                                            ${libro.anoPublicacion}<s:property value="mensajeDisponibilidad"/>.                                                                                        
                                        </span>
                                    </div>
                                </div>
                            </li>-->
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Número de páginas:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">${libro.numeroPagina}.</span>
                                    </div>
                                </div>
                            </li>                                              
                            <!--<li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Edición:
                                    </div>
                                    <div class="col-6">
                                        <span class="card-text font-weight-normal">
                                            ${libro.edicion}<s:property value="mensajeDisponibilidad"/>.
                                        </span>
                                        </span>
                                    </div>
                                </div>
                            </li>-->                        
                        </ul>                        
                    </div> 

                    <div class="mt-4 mb-4">
                        <legend class="font-weight-normal p-0 m-0">Sinópsis</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="card-text font-weight-normal">
                                    ${libro.sinopsis}<s:property value="mensajeDisponibilidad"/>.
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="text-center mt-2">                              
                        <a class="button btn btn-lg btn-out-primary my-2 mx-2" href="/lectus/sugerencia/list" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
                        <a class="button btn btn-lg btn-solid-secondary" href="/lectus/sugerencia/edit.action?id=${libro.idLibro}" role="button">Editar datos</a>                                                                    
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js"></script>
        <script src="https://unpkg.com/feather-icons"></script>        
        <script type="text/javascript">
            feather.replace();

            document.addEventListener("DOMContentLoaded", function (event) {
                document.querySelectorAll('img').forEach(function (img) {
                    img.onerror = function () {
                        this.style.display = 'none';
                    };
                })
            });
        </script>
    </body>
</html>