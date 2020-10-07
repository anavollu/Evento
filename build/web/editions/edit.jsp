<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar edição</title>        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Edição #${edition.number} do evento ${event.name}#${event.id}</h1>
        <div class="container">
            <form id="newedition-form" method="post">
                <input class="d-none" name="eventId" value="${event.id}">
                <input class="d-none" name="id" value="${edition.id}">
                <div class="form-group">
                    <label for="number">Número</label>
                    <input class="form-control" type="number" required step="1" name="number" value="${edition.number}">
                </div>
                <div class="form-group">
                    <label for="year">Ano</label>
                    <input class="form-control" type="text" required step="1" name="year" value="${edition.year}">
                </div>
                <div class="form-group">
                    <label for="startDate">Data de início</label>
                    <input class="form-control" type="date" required step="1" name="startDate" value="${edition.startDate}">
                </div>
                <div class="form-group">
                    <label for="endDate">Data fim</label>
                    <input class="form-control" type="date" required step="1" name="endDate" value="${edition.endDate}">
                </div>
                <div class="form-group">
                    <label for="mainCity">Cidade sede</label>
                    <input class="form-control" type="text" required step="1" name="mainCity" value="${edition.mainCity}">
                </div>
                <div class="form-group">
                    <label for="country">País</label>
                    <input class="form-control" type="text" required step="1" name="country" value="${edition.country}">
                </div>
                <button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </body>
</html>