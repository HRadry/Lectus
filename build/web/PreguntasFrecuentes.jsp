<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para las preguntas frecuentes">
        <title>Preguntas frecuentes</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">
        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">
        <style>
            .btn.focus, .btn:focus {
                outline: 0;
                box-shadow: 0 0 0 0.2rem #ffffff00;
            }
        </style>
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
                    <li class="breadcrumb-item"><a href="/lectus/index/home">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Preguntas frecuentes</li>
                </ol>
            </nav>

            <div class="mb-3">
                <h1>Preguntas frecuentes</h1>              
            </div>

            <div class="accordion mx-3 mx-md-5" id="accordionExample">
                <div class="card border-line-primary">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-block text-left font-weight-bold collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                <img src="../img/dropdown.svg" width="20" height="20"> Primera pregunta 
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body text-justify">
                            Some placeholder content for the second accordion panel. This panel is hidden by default.
                        </div>
                    </div>
                </div>
                
                <div class="card border-line-primary">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-block text-left font-weight-bold collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <img src="../img/dropdown.svg" width="20" height="20"> Segunda pregunta
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body text-justify">
                            Some placeholder content for the second accordion panel. This panel is hidden by default.
                        </div>
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
    </body>
</html>