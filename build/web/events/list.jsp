<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Eventos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Eventos</h1>
        <div class="text-right">
            <a class="btn btn-primary m-3"
               role="button" href="eventos?a=create">Novo Evento</a>
        </div>
        <table class="table table-striped text-center">
            <thead class="thead-dark">
                <tr>
                    <th>Nome</th>
                    <th>Iniciais</th>
                    <th>Instituição</th>
                    <th>Área</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var="event" items="${events}">
                <tr>
                    <td>${event.name}#${event.id}</td>
                    <td>${event.initials}</td>
                    <td>${event.orgInstitution}</td>
                    <td>${event.concArea}</td>
                    <td><a href="edicoes?eventId=${event.id}">Ver Edições</a></td>
                    <td><a href="eventos?a=edit&eventId=${event.id}">Editar</a></td>
                    <td><a href="eventos?a=remove&eventId=${event.id}">Remover</a></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>