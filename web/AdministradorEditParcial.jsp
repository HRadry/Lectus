<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para actualizar las fechas">        
        <title>Editar fechas</title>
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

                <!--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <img src="../img/opciones.svg" width="40" height="40" class="d-inline-block align-top" alt="icon" loading="lazy">
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item text-light">
                            <a class="text-black font-weight-bold btn btn-out-white mr-2 mb-1" href="/lectus/panel/administrador"><img src="../img/menu.svg" class="mr-1" width="20" height="20"> Ir al panel</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-out-white dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>-->
            </div>
        </nav>
        
        <div class="container mt-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/parcial/list">Administrar fechas</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Editar fechas</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Editar fechas</h1>
            </div>
        </div>

        <main role="main" class="inner cover container mt-4">                        
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form class="needs-validation" novalidate action="/lectus/parcial/update" method="POST">
                    <input type="hidden" name="parcial.idParcial" value="${parcial.getIdParcial()}">
                    <div class="row">
                        <div class="col-md-6 mt-1">
                            <div class="form-group">
                                <label for="titulo" class="font-weight-bolder">Nombre del parcial</label>
                                <input type="text" class="form-control form-control-lg" id="nombre" name="parcial.nombre" value="${parcial.getNombre()}" readonly required>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha de incio para la evaluación de los parciales</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" id="fechaInicio" name="parcial.fechaInicio" value="${parcial.getFechaInicio()}" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha final para la evaluación de los parciales</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" id="fechaFin" name="parcial.fechaFin" value="${parcial.getFechaFin()}" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha para la entrega de reportes de lectura por los alumnos</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" id="fechaLimiteEntregaAlumno" name="parcial.fechaLimiteEntregaAlumno" value="${parcial.getFechaLimiteEntregaAlumno()}" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha para la entrega de calificaciones de reportes de lectura por parte del revisor</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" id="fechaLimiteEntregaRevisor" name="parcial.fechaLimiteEntregaRevisor" value="${parcial.getFechaLimiteEntregaRevisor()}" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message-text" class="col-form-label font-weight-bold">Fecha para la entrega de correcciones de reportes de lectura por los alumnos</label>                                                        
                                <div class="form-group row">                                
                                    <div class="col-12">
                                        <input class="form-control form-control-lg" type="date" id="fechaEntregaCorreccion" name="parcial.fechaEntregaCorreccion" value="${parcial.getFechaEntregaCorreccion()}" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center mt-3">
                                <a href="/lectus/parcial/list" class="btn btn-lg btn-out-gray font-weight-normal my-2 mx-2">Cancelar</a>
                                <button type="submit" class="btn btn-lg btn-solid-secondary  font-weight-normal">Guardar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </section>
        </main>

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

            $('.custom-file-input').on('change', function () {
                var fileName = document.getElementById("nameFile1").files[0].name;
                $(this).next('.form-control-file').addClass("selected").html(fileName);
            });

            $('.custom-file-input').on('change', function () {
                var fileName = document.getElementById("nameFile2").files[0].name;
                $(this).next('.form-control-file').addClass("selected").html(fileName);
            });
        </script>
    </body>
</html>