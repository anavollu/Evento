<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nova edição</title>        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Nova edição do evento ${event.name}#${event.id}</h1>
        <div class="container">
            <form id="newedition-form" method="post">
                <input class="d-none" name="eventId" value="${event.id}">
                <div class="form-group">
                    <label for="number">Número</label>
                    <input class="form-control" type="number" required step="1" name="number" value="${number}">
                </div>
                <div class="form-group">
                    <label for="year">Ano</label>
                    <input class="form-control" type="text" required step="1" name="year" value="${year}">
                </div>
                <div class="form-group">
                    <label for="startDate">Data de início</label>
                    <input class="form-control" type="date" required step="1" name="startDate" value="${startDate}">
                </div>
                <div class="form-group">
                    <label for="endDate">Data fim</label>
                    <input class="form-control" type="date" required step="1" name="endDate" value="${endDate}">
                </div>
                <div class="form-group">
                    <label for="mainCity">Cidade sede</label>
                    <input class="form-control" type="text" required step="1" name="mainCity" value="${mainCity}">
                </div>
                <div class="form-group">
                    <label for="country">País</label>
                    <input class="form-control" type="text" required step="1" name="country" value="${country}">
                </div>
                <button type="submit" class="btn btn-primary">Confirmar</button>
            </form>
        </div>
    </body>
</html>