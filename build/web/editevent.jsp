<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar evento</title>
  <style>
    html {
        font-family: sans-serif;
    }

    #editevent-form {
        display: flex;
        flex-direction: column;
        max-width: 600px;
        margin: 0 auto;
        min-height: 200px;
        border: solid black 1px;
        border-radius: 4px;
        padding: 16px;
        margin-top: 48px;
        box-sizing: border-box;
    }
   
    .form-item {
        margin-bottom: 20px;
        display: flex;
        flex-direction: column;
    }
    
    #submit {
        color: white;
        background-color: black;
        border: 3px solid black;
        box-sizing: border-box;
    }    
    
    #submit:hover {
        color: black;
        background-color: white;
    }
    
    .form-item,
    #submit {
        font-size: 18px;
    }
    
    .buttons {
        flex-direction: row;
        margin: 0 auto;        
    }

    .text-center {
        text-align: center;
    }
  </style>
</head>
<body>
    <h1 class="text-center">Editar evento</h1>
    <form id="editevent-form" method="post">
        <div class="form-item">
            <label for="name">Nome</label>
            <input type="text" required step="1" name="name" value="${name}">
        </div>
        <div class="form-item">
            <label for="initials">Sigla</label>
            <input type="text" required step="1" name="initials" value="${initials}">
        </div>
        <div class="form-item">
            <label for="concArea">Área de concentração</label>
            <input type="text" required step="1" name="concArea" value="${concArea}">
        </div>
        <div class="form-item">
            <label for="orgInstitution">Instituição organizadora</label>
            <input type="text" required step="1" name="orgInstitution" value="${orgInstitution}">
        </div>
        <div class="form-item">
            <div class="buttons">
                <input id="submit" type="submit" value="Voltar"></input>
                <input id="submit" type="submit" value="Confirmar"></input>
            </div>
        </div>
    </form>
</body>
</html>