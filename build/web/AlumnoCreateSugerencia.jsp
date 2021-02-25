<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para enviar un libro sugerido">        
        <title>Sugerir libro</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

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
                        <li class="nav-item dropdown">
                            <a class="text-black font-weight-bold btn btn-wb dropdown-toggle mb-1" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../img/dropdown.svg" width="20" height="20"> Opciones</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="#"> <img src="../img/perfil.svg" width="25" height="25"> Mi perfil</a>
                                <a class="dropdown-item" href="/lectus/panel/lineamiento"> <img src="../img/rule.svg" width="25" height="25"> Lineamientos</a>                                                                                                        
                                <a class="dropdown-item" href="/lectus/log/logout"> <img src="../img/salir.svg" width="25" height="25"> Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main role="main" class="inner cover container mt-4">            
            <div class="pricing-header mb-5 text-center animate-opacity container">
                <h1 class="display-6">Enviar sugerencia <img src="../img/idea.svg" height="45" alt="icon" loading="lazy"></h1>
                    <s:actionerror />
            </div>
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form class="needs-validation" novalidate action="/lectus/sugerencia/store" method="POST" enctype="multipart/form-data">                    
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset>
                                <legend class="font-weight-normal">1.- Datos generales del libro <img src="../img/libro.svg" height="30" alt="icon" loading="lazy"></legend>
                                <div class="form-group">
                                    <label for="titulo" class="font-weight-bolder">Título</label>
                                    <input type="text" class="form-control form-control-lg" id="titulo" name="sugerencia.titulo" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="autor" class="font-weight-bolder">Autor</label>
                                    <input type="text" class="form-control form-control-lg" id="autor" name="sugerencia.autor" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="genero" class="font-weight-bolder">Género</label>
                                    <input type="text" class="form-control form-control-lg" id="genero" name="sugerencia.genero" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="numeroPagina" class="font-weight-bolder">Número de páginas</label>
                                        <input type="number" class="form-control form-control-lg" id="numeroPagina" name="sugerencia.numeroPagina" min="0" step="1" max="1500" onkeypress="return solonumeros(event)" onpaste="return false" required>
                                        <div class="invalid-feedback">
                                            Este campo es necesario 👆, por favor, acomplételo.
                                        </div>
                                    </div>                                   
                                </div>
                            </fieldset>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="sinopsis" class="font-weight-bolder">Sinópsis</label>
                                <textarea class="form-control text-justify" id="word" name="sugerencia.sinopsis" rows="8" required maxlength="425" oninput="countWord()"></textarea>
                                <div class="invalid-feedback">
                                    Este campo es necesario 👆, por favor, acomplételo.
                                </div>
                                <p><small id="show">0</small> <small> caracteres restantes de 425.</small></p>
                            </div>

                            <fieldset>
                                <legend class="font-weight-normal">2.- Cargar archivo  <img src="../img/load.svg" height="30" alt="icon" loading="lazy"></legend>                                
                                <div class="form-group mt-2">                                   
                                    <label for="nameFile2" class="font-weight-bolder">Libro PDF</label>
                                    <div class="custom-file" id="customFile">
                                        <input type="file" accept="application/pdf" name="userImage" class="custom-file-input" id="nameFile2" id="customFileLang" lang="es" required>
                                        <label class="custom-file-label form-control-file" for="customFileLang">Seleccionar archivo</label>
                                        <div class="invalid-feedback">
                                            Este campo es necesario ☝🏼, por favor, acomplételo.
                                        </div>
                                    </div>                                    
                                </div>
                                <!--<div class="form-group mt-2">  
                                <s:file name="sugerencia.archivoPDF" accept="application/pdf" class="border" size="40"/>                                     
                            </div>-->
                            </fieldset>                            
                            
                            <div class="text-center mt-3">
                                <a href="/lectus/panel/alumno" class="btn btn-lg btn-color font-weight-normal my-2 mx-2">Cancelar <img src="../img/cancel-2.svg" height="25" alt="icon" loading="lazy"></a>
                                <button type="submit" class="btn btn-lg btn-color font-weight-normal">Enviar <img src="../img/send.svg" height="25" alt="icon" loading="lazy"></button>
                            </div>                                                                                  
                        </div>
                    </div>
                </form>
            </section>
        </main>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.7/holder.js"></script>
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