<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para que el alumno consulte su calificación.">        
        <title>Calificación</title>
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
                    <li class="breadcrumb-item"><a href="/lectus/panel/alumno">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Calificación</li>
                </ol>
            </nav>

            <div class="mb-3"> 
                <h1 class="display-6">Calificación</h1>
            </div>      

            <div class="row mt-4 mb-4 text-left justify-content-md-center">                
                <div class="col-8 mt-4 mt-md-0">                    
                    <div class="mb-4">
                        <legend class="font-weight-normal p-0 m-0">Retroalimentación</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Legibilidad:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal text-break">2.5</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Otrografía:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="font-weight-normal">2.5</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Redacción:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">2.5</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Estructura:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">2.5</span>
                                    </div>
                                </div>
                            </li>  
                            <li class="list-group-item font-weight-bold background-opacity">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Calificación:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">10</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Fecha de calificación:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">Miércoles, 24 de Febrero del 2021, 12:30</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Revisor:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">Juan Gabriel Ruíz Ruíz</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        PDF:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <a href="#" class="card-text font-weight-normal">702 Rosales García Dora</a>
                                    </div>
                                </div>
                            </li>
                        </ul>                        
                    </div> 
                    <div class="form-group">
                        <label for="comentario" class="font-weight-bolder">Comentarios</label>
                        <textarea class="form-control text-justify" id="word" name=" " rows="5" readonly></textarea>                                                        
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