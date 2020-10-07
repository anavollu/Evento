<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edi��es</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Edi��es do ${event.name}#${event.id}</h1>
        <div class="text-right">
            <a class="btn btn-primary m-3"
               role="button" href="edicoes?a=create&eventId=${event.id}">
                Nova Edi��o
            </a>
        </div>
        <div class="text-right">
            <a class="btn m-3"
               role="button" href="eventos">
                Ver todos eventos
            </a>
        </div>
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>N�mero</th>
                    <th>Ano</th>
                    <th>In�cio</th>
                    <th>Fim</th>
                    <th>Sede</th>
                    <th>Pa�s</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach var="edition" items="${editions}">
                <tr>
                    <td>Edi��o#${edition.number}</td>
                    <td>${edition.year}</td>
                    <td>${edition.startDate}</td>
                    <td>${edition.endDate}</td>
                    <td>${edition.mainCity}</td>
                    <td>${edition.country}</td>
                    <td><a href="edicoes?a=edit&editionId=${edition.id}&eventId=${event.id}">Editar</a></td>
                    <td><a href="edicoes?a=remove&editionId=${edition.id}&eventId=${event.id}">Remover</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>