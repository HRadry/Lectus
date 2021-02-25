<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la administración de alumnos">
        <title>Administración de alumnos</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">

        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">

        <!-- Custom styles for DataTable -->
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">

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

        <br>
        <div class="text-center mt-4 container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>
                <li class="breadcrumb-item"><a href="/lectus/revisor/list">Administrar revisores</a></li>
                <li class="breadcrumb-item active" aria-current="page">Asignar alumnos</li>
            </ol>
            <div class="pricing-header mb-4 text-center animate-opacity container">
                <h1 class="display-6">Asignación de alumnos al revisor ${nombreRevisor}</h1>
            </div>
        </div>
        <input type="hidden" value="${idRevisor}"/><!--Id del Revisor-->
        <input type="hidden" value="${nombreRevisor}"/><!--Id del Revisor-->

        <div class="table-responsive container mt-4 mb-4">
            <table id="example" class="table table-striped">
                <thead class="text-center">
                    <tr class="table-active">
                        <th class="align-middle">Matrícula</th>
                        <th class="align-middle">Nombre</th>
                        <th class="align-middle">Carrera</th>
                        <th class="align-middle">Grupo</th>
                        <th class="align-middle">Detalles</th>                                            
                        <th class="text-center">Seleccionar</th>
                    </tr>
                </thead>

                <tbody>
                    <s:iterator value="usuarios">
                        <tr class="align-middle">                            
                            <td class="align-middle"><s:property value="matricula"/></td>
                            <td class="align-middle"><s:property value="%{nombre +' ' + apellidoPaterno + ' ' + apellidoMaterno}"/></td>
                            <td class="align-middle"><s:property value="carrera"/></td>
                            <td class="align-middle"><s:property value="grupo"/></td>

                            <s:url action="detailsAlumno" var="urlDetails">
                                <s:param name="id"><s:property value="idUsuario"/></s:param>
                            </s:url>
                            <td class="text-center">
                                <a class="btn btn-outline-info" href="${urlDetails}" role="button"> <img src="../svg/detalles.svg" width="35" height="35"> </a>
                            </td>
                            <td class="text-center">                                
                                <a class="btn btn-outline-success" href="javascript:asignarId('${idUsuario}', '${nombre}', '${idRevisor}', '${nombreRevisor}')" role="button" aria-pressed="true">Seleccionar</a>
                            </td>
                        </tr>
                    </s:iterator>                  
                </tbody>
                <tfoot class="text-center">
                    <tr class="table-active">
                        <th class="align-middle">Matrícula</th>
                        <th class="align-middle">Nombre</th>
                        <th class="align-middle">Carrera</th>
                        <th class="align-middle">Grupo</th>
                        <th class="align-middle">Detalles</th>                                            
                        <th class="text-center">Seleccionar</th>               
                    </tr>
            </table>
            <br>
            <div class="text-center mt-2">                              
                <a class="button btn btn-lg btn-color-out" href="/lectus/revisor/list" role="button"><i data-feather="arrow-left"></i> Regresar</a>                                                
            </div>
        </div>        


       <div class="modal fade" id="modalAsignar" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-success">
                        <h5 class="modal-title text-light" id="exampleModalCenterTitle"> Asignar alumno </h5>
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <img src="../svg/cancel.svg" width="20" height="20">
                        </button>
                    </div>
                    <div class="row modal-body text-center">
                        <div class="col-3">
                            <img src="../svg/cheque.svg" height="90">       
                        </div>

                        <div class="col-9 mt-3">
                            <p>¿Desea asignar el alumno<br>"<span class="text-success" id="alumno"></span>" al revisor"<span class="text-success" id="revisor"></span>"?<br></p>
                        </div>
                    </div>
                    <div class="modal-footer" style="justify-content: center;">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><b>Cancelar</b></button>
                        <button type="button" class="btn btn-success" id="btnAceptar"><b>Aceptar</b></button>
                    </div>
                </div>
            </div>
        </div>

        <footer id="footer" class="mastfoot mt-auto">
            <div class="inner">
                <p></p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->      
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>        
        <!-- ================================================== -->  
        <script src="https://unpkg.com/feather-icons"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                feather.replace();
                
                $('#example').DataTable({
                    "oLanguage": {
                        "sSearch": '<a class="btn btn-lg searchBtn" style="color:hsl(357, 72%, 40%)" id="searchBtn"> <b> Buscar algún registro <img src="../img/buscar.svg" height="25"></b> </a>',
                        "sLengthMenu": '<a class="btn btn-lg" style="color:hsl(357, 72%, 40%)"><b> Mostar _MENU_ registros</b> </a>'
                    },
                    language: {
                        "sProcessing": "Procesando...",
                        "sZeroRecords": "No se encontraron resultados 😣",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sInfoPostFix": "",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        },
                        "buttons": {
                            "copy": "Copiar",
                            "colvis": "Visibilidad"
                        }
                    },
                    "columnDefs": [
                        {orderable: false, targets: 1},
                        {orderable: false, targets: 2},
                        {orderable: false, targets: 3},
                        {orderable: false, targets: 4},
                        {orderable: false, targets: 5},
                        {orderable: false, targets: 6}
                    ],
                    order: [[0, 'asc']]
                });

                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);

                $("#btnDelete").click(function () { // 3 Das clic en el botón Aceptar del modal
                    eliminarCono(idUsuario); //4 Se ejecuta la función eliminarCono y le pasas el idCono
                });
            });

            function asignarId(id, nombre,idRevisor,nombreRevisor) { // 1 se recibe tu idCono
                idUsuario = id;
                document.getElementById("alumno").innerHTML = nombre;
                document.getElementById("revisor").innerHTML = nombreRevisor;
                $("#modalAsignar").modal("show"); // 2 se muestra el modal
            }

            function eliminarCono(id) { //5 se ejecuta el controlador pasandole el idCono
                window.location.href = "delete?id=" + id;
            }
        </script>
    </body>

</html>