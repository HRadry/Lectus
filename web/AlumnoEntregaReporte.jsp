<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la entrega de reporte de lectura">        
        <title>Reporte</title>
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
                    <li class="breadcrumb-item"><a href="/lectus/panel/alumno">Panel</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Reporte</li>
                </ol>
            </nav>

            <div class="mb-3"> 
                <h1 class="display-6">Reporte</h1>
            </div> 

            <div class="row mt-4 text-left justify-content-md-center">                
                <div class="col-8 mt-4 mt-md-0">                    
                    <div class="mb-4">
                        <legend class="font-weight-normal p-0 m-0">Información de entrega</legend> 
                        <div class="col-4 p-0 m-0">                                                   
                            <hr class="border-line-primary p-0 mt-1">
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Fecha de entrega:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal text-break">Martes, 23 de Febrero del 2021, 23:00</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Tiempo restante:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="font-weight-normal">11 horas</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold background-tab">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Estatus de entrega:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">No entregado</span>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item font-weight-bold">
                                <div class="row">
                                    <div class="col-6 d-flex align-items-center">
                                        Estatus de calificación:
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <span class="card-text font-weight-normal">Sin calificar</span>
                                    </div>
                                </div>
                            </li>                                                      
                        </ul>                        
                    </div> 


                    <form class="needs-validation" novalidate action="/lectus/sugerencia/store" method="POST" enctype="multipart/form-data">                    
                        <div class="col-12 px-0">                       
                            <legend class="font-weight-normal p-0 m-0">Enviar reporte</legend> 
                            <div class="col-4 p-0 m-0">                                                   
                                <hr class="border-line-primary p-0 mt-1">
                            </div>

                            <div class="col-md-6 px-0">
                                <div class="form-group mt-2">                                                                                                     
                                    <div class="custom-file" id="customFile">
                                        <input type="file" accept="application/pdf" name="userImage" class="custom-file-input" id="nameFile2" id="customFileLang" lang="es" required>
                                        <label class="custom-file-label form-control-file" for="customFileLang">Seleccionar archivo</label>
                                        <div class="invalid-feedback">
                                            Seleccione su archivo ☝🏼.
                                        </div>
                                    </div>                                    
                                </div> 
                            </div>  

                            <div class="col-md-12">
                                <div class="text-center mt-3">
                                    <a href="/lectus/panel/alumno" class="btn btn-lg btn-out-gray font-weight-normal my-2 mx-2">Cancelar</a>
                                    <button type="submit" class="btn btn-lg btn-solid-secondary font-weight-normal">Enviar</button>
                                </div> 
                            </div>
                        </div>                                               
                    </form>
                </div>  
            </div> 
        </div>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== --> 
        <script type="text/javascript">
            (function camposVacios() {
                'use strict';
                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();

            function solonumeros(e) {
                key = e.keyCode || e.which;

                teclado = String.fromCharCode(key).toLowerCase();

                numeros = "1234567890";

                especiales = "35-43-45";

                teclado_especial = false;

                for (var i in especiales) {
                    if (key == especiales[i]) {
                        teclado_especial = true;
                        break;
                    }
                }

                if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                    return false;
                }
            }

            function countWord() {

                // Get the input text value 
                var words = document
                        .getElementById("word").value;

                // Initialize the word counter 
                var count = 0;

                // Split the words on each 
                // space character  
                var split = words.split('');

                // Loop through the words and  
                // increase the counter when  
                // each split word is not empty 
                for (var i = 0; i < split.length; i++) {
                    if (split[i] != "") {
                        count += 1;
                        x = 425 - count;
                    }
                }

                // Display it as output 
                document.getElementById("show")
                        .innerHTML = x;
            }
            //document.getElementByName("sugerencia.libroPDF")[0].value = fileName;

            $('.custom-file-input').on('change', function () {
                var fileName = document.getElementById("nameFile2").files[0].name;
                $(this).next('.form-control-file').addClass("selected").html(fileName);
                //document.getElementByName("sugerencia.archivoPDF")[0].value = fileName;                                               
            });
        </script>      
    </body>
</html>