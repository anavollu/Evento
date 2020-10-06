<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nova edição</title>
  <style>
    html {
        font-family: sans-serif;
    }

    #newedition-form {
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
    <h1 class="text-center">Nova edição</h1>
    <form id="newedition-form" method="post">
        <div class="form-item">
            <label for="number">Número</label>
            <input type="number" required step="1" name="number" value="${number}">
        </div>
        <div class="form-item">
            <label for="year">Ano</label>
            <input type="text" required step="1" name="year" value="${year}">
        </div>
        <div class="form-item">
            <label for="startDate">Data de início</label>
            <input type="date" required step="1" name="startDate" value="${startDate}">
        </div>
        <div class="form-item">
            <label for="endDate">Data fim</label>
            <input type="date" required step="1" name="endDate" value="${endDate}">
        </div>
        <div class="form-item">
            <label for="mainCity">Cidade sede</label>
            <input type="text" required step="1" name="mainCity" value="${mainCity}">
        </div>
        <div class="form-item">
            <label for="country">País</label>
            <input type="text" required step="1" name="country" value="${country}">
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