<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar evento</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Editar evento #${event.id}</h1>
        <div class="container">
            <form id="new-event-form" method="post">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input class="form-control" type="text" required step="1" name="name" value="${event.name}">
                </div>
                <div class="form-group">
                    <label for="initials">Sigla</label>
                    <input class="form-control" type="text" required step="1" name="initials" value="${event.initials}">
                </div>
                <div class="form-group">
                    <label for="concArea">�rea de concentra��o</label>
                    <input class="form-control" type="text" required step="1" name="concArea" value="${event.concArea}">
                </div>
                <div class="form-group">
                    <label for="orgInstitution">Institui��o organizadora</label>
                    <input class="form-control" type="text" required step="1" name="orgInstitution" value="${event.orgInstitution}">
                </div>
                <button type="submit" class="btn btn-primary">Confirmar</button>
            </form>
        </div>
    </body>
</html>