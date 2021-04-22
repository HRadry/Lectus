<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Módulo para la administración de libros sugeridos">
        <title>Administrar libros sugeridos</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="icon" href="../img/logo.svg" sizes="32x32" type="image/png">
        <!-- Custom styles for this template -->
        <link href="../css/principal.css" rel="stylesheet">
        <!-- Custom styles for DataTable -->
        <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet">
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
                    <li class="breadcrumb-item"><a href="/lectus/panel/administrador">Panel</a></li>                   
                    <li class="breadcrumb-item active" aria-current="page">Administrar libros sugeridos</li>
                </ol>
            </nav>

            <div>
                <h1 class="display-6">Administrar libros sugeridos</h1>
            </div>
        </div>

        <div class="table-responsive container mt-4 mb-4">
            <table id="example" class="table table-striped">
                <thead>
                    <tr class="table-active">
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Género</th>
                        <th class="text-center">Detalles</th>
                        <th class="text-center">Eliminar</th>
                    </tr>
                </thead>

                <tbody>
                    <s:iterator value="libros">
                        <tr>
                            <td class="align-middle" ><s:property value="titulo"/></td>
                            <td class="align-middle"><s:property value="autor"/></td>
                            <td class="align-middle"><s:property value="genero"/></td>
                            <td class="text-center">
                                <s:url action="details" var="urlDetails">
                                    <s:param name="id">
                                        <s:property value="idLibro"/>
                                    </s:param>
                                </s:url>
                                <a class="btn btn-outline-info" role="button" href="${urlDetails}"> <img src="../svg/detalles.svg" width="35" height="35"> </a>
                            </td>                        

                            <td class="text-center">                                
                                <a class="btn btn-outline-secondary" href="javascript:asignarId('${idLibro}', '${titulo}')" role="button" aria-pressed="true"> <img src="../svg/eliminar.svg" width="35" height="35"> </a>
                            </td>
                        </tr>
                    </s:iterator>                   
                </tbody>

                <tfoot>
                    <tr class="table-active">
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Género</th>
                        <th class="text-center">Detalles</th>
                        <th class="text-center">Eliminar</th>
                    </tr>
                </tfoot>
            </table>
        </div>        

        <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content" style="border-color: #dc3545;">
                    <div class="modal-header" style="background-color: #dc3545;">
                        <h5 class="modal-title text-light" id="exampleModalCenterTitle"> Eliminar libro sugerido </h5>
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <img src="../svg/cerrar.svg" width="20" height="20">
                        </button>
                    </div>
                    <div class="row modal-body text-center">
                        <div class="col-4 align-middle">
                            <img src="../svg/advertencia.svg" width="150" height="90">       
                        </div>

                        <div class="col-8 mt-3">
                            <p>¿Desea eliminar el libro sugerido <br>"<span class="font-weight-bold" id="titulo-in"></span>"?<br></p>
                            <span style="color:gray;">Esta operación no se podrá deshacer</span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-out-gray" data-dismiss="modal"> <b>Cancelar</b> </button>
                        <button type="button" class="btn btn-solid-secondary" id="btnDelete"> <b>Aceptar</b> </button>
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

        <!-- Bootstrap core Data Table JQuery -->    
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>    
        <!-- ================================================== -->

        <script type="text/javascript">
            $(document).ready(function () {
                $('#example').DataTable({
                    "oLanguage": {
                        "sSearch": '<a class="btn btn-lg searchBtn color-text-primary" id="searchBtn"> <b> Buscar algún libro <img src="../svg/buscar.svg" height="25"></b> </a>',
                        "sLengthMenu": '<a class="btn btn-lg color-text-primary"><b> Mostar _MENU_ registros</b> </a>'
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
                        {orderable: false, targets: 4}
                    ],
                    order: [[0, 'asc']]
                });

                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 2000);

                $("#btnDelete").click(function () { // 3 Das clic en el botón Aceptar del modal
                    eliminarCono(idSugerencia); //4 Se ejecuta la función eliminarCono y le pasas el idCono
                });
            });

            function asignarId(id, titulo) { // 1 se recibe tu idCono
                idSugerencia = id;
                document.getElementById("titulo-in").innerHTML = titulo;
                $("#modalDelete").modal("show"); // 2 se muestra el modal
            }

            function eliminarCono(id) { //5 se ejecuta el controlador pasandole el idCono
                window.location.href = "delete?id=" + id;
            }
        </script>
    </body>
</html>