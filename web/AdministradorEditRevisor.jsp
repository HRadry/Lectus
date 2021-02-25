<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para editar revisor">        
        <title>Editar revisor</title>

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

        <div class="container mt-4 text-center">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                    <li class="breadcrumb-item"><a href="/lectus/revisor/list">Administrar revisores</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Editar revisor</li>
                </ol>
            </nav>
            <div class="pricing-header mb-5 text-center animate-opacity container">
                <h1 class="display-6">Editar revisor</h1>
            </div> 
        </div>


        <main role="main" class="inner cover container mt-4">                      
            <section class="form-container d-flex w-100 h-100 pt-md-2 p-3 mx-auto flex-column">
                <form class="needs-validation" novalidate action="/lectus/revisor/update" method="POST">
                    <input type="hidden" name="usuario.tipoUsuario" value="Revisor">
                    <input type="hidden" name="usuario.idUsuario" value="${usuario.getIdUsuario()}">
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset>
                                <legend class="font-weight-normal">1.- Datos generales del revisor</legend>
                                <div class="form-group">
                                    <label for="nombre" class="font-weight-bolder">Nombre</label>
                                    <input type="text" class="form-control form-control-lg" id="nombre" name="usuario.nombre" value="${usuario.getNombre()}" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="apellidoPaterno" class="font-weight-bolder">Apellido paterno</label>
                                    <input type="text" class="form-control form-control-lg" id="apellidoPaterno" name="usuario.apellidoPaterno" value="${usuario.getApellidoPaterno()}" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="apellidoMaterno" class="font-weight-bolder">Apellido materno</label>
                                    <input type="text" class="form-control form-control-lg" id="apellidoMaterno" name="usuario.apellidoMaterno" value="${usuario.getApellidoMaterno()}" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="carrera" class="font-weight-bolder">Carrera</label>
                                    <select class="form-control form-control-lg" id="carrera" name="usuario.carrera" required>
                                        <option selected disabled value="${usuario.getCarrera()}">${usuario.getCarrera()}</option>                                              
                                        <option value="Ingeniería Forestal">Ingeniería Forestal</option>
                                        <option value="Licenciatura en Ciencias Ambientales">Licenciatura en Ciencias Ambientales</option>
                                        <option value="Licenciatura en Informática">Licenciatura en Informática</option>
                                        <option value="Licenciatura en Biología">Licenciatura en Biología</option>
                                        <option value="Ingeniería en Tecnología de la Madera">Ingeniería en Tecnología de la Madera</option>
                                        <option value="Licenciatura en Administración Turística">Licenciatura en Administración Turística</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div> 
                                </div>

                                <div class="form-group">
                                    <label for="email" class="font-weight-bolder">Correo institucional</label>
                                    <input type="email" class="form-control form-control-lg" id="correo" name="usuario.correo" value="${usuario.getCorreo()}" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="font-weight-bolder">Contraseña</label>
                                    <input type="text" class="form-control form-control-lg" id="password" name="usuario.password" value="${usuario.getPassword()}" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>
                            </fieldset>
                        </div>

                        <div class="col-md-6">
                            <fieldset>
                                <legend class="font-weight-normal">2.- Datos de alta al sistema</legend>
                                <div class="form-group">
                                    <label for="clave" class="font-weight-bolder">Clave de trabajador</label>
                                    <input type="number" class="form-control form-control-lg" id="clave" name="usuario.clave" placeholder="12345" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="area" class="font-weight-bolder">Área</label>
                                    <input type="text" class="form-control form-control-lg" id="area" name="usuario.area" placeholder="Instituto de Estudios Ambientales" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cubo" class="font-weight-bolder">Numero de cubo</label>
                                    <input type="number" class="form-control form-control-lg" id="cubo" name="usuario.cubo" placeholder="10" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefono" class="font-weight-bolder">Número telefónico</label>
                                    <input type="number" class="form-control form-control-lg" id="telefono" name="usuario.telefono" placeholder="9512345678" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="extension" class="font-weight-bolder">Extensión</label>
                                    <input type="number" class="form-control form-control-lg" id="telefono" name="usuario.extension" placeholder="320" required>
                                    <div class="invalid-feedback">
                                        Este campo es necesario 👆, por favor, acomplételo.
                                    </div>
                                </div>

                            </fieldset>

                            <div class="text-center mt-3">
                                <a href="list" class="btn btn-lg btn-color-out font-weight-normal my-2 mx-2">Cancelar</a>
                                <button type="submit" class="btn btn-lg btn-color font-weight-normal">Guardar</button>
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