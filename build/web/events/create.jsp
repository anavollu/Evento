<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Novo evento</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Novo evento</h1>
        <div class="container">
            <form id="new-event-form" method="post">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input class="form-control" type="text" required step="1" name="name" value="${name}">
                </div>
                <div class="form-group">
                    <label for="initials">Sigla</label>
                    <input class="form-control" type="text" required step="1" name="initials" value="${initials}">
                </div>
                <div class="form-group">
                    <label for="concArea">Área de concentração</label>
                    <input class="form-control" type="text" required step="1" name="concArea" value="${concArea}">
                </div>
                <div class="form-group">
                    <label for="orgInstitution">Instituição organizadora</label>
                    <input class="form-control" type="text" required step="1" name="orgInstitution" value="${orgInstitution}">
                </div>
                <button type="submit" class="btn btn-primary">Confirmar</button>
            </form>
        </div>
    </body>
</html>