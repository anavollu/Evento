<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Eventos</title>
  <style>
    html {
        font-family: sans-serif;
    }

    #events {
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
   
    .event-item {
        margin-bottom: 20px;
        display: flex;
        flex-direction: row;
        font-size: 18px;
    }
        
    #button,
    #submit {
        color: white;
        background-color: black;
        border: 3px solid black;
        box-sizing: border-box;
        font-size: 14px;
        margin-left: 5px;
    }    
    
    #button:hover,
    #submit:hover {
        color: black;
        background-color: white;
    }
    
    #submit {
        font-size: 18px;
        margin-bottom: 20px;
        margin: 0 auto;
   }
    
    .text-center {
        text-align: center;
    }
    
    #name {
        flex-grow: 2;
    }
  </style>
</head>
<body>
    <h1 class="text-center">Eventos</h1>
    <div id="events">
        <div class="event-item">
            <input id="submit" type="submit" value="Criar evento"></input>
        </div>
        <div class="event-item">
            <label id="name" value="${name}">Nome do evento</label>
            <input id="button" type="submit" value="Ver edições"></input>
            <input id="button" type="submit" value="Editar"></input>
            <input id="button" type="submit" value="Remover"></input>
        </div>
        <div class="event-item">
            <label id="name" value="${name}">Nome do evento</label>
            <input id="button" type="submit" value="Ver edições"></input>
            <input id="button" type="submit" value="Editar"></input>
            <input id="button" type="submit" value="Remover"></input>
        </div>
        <div class="event-item">
            <label id="name" value="${name}">Nome do evento</label>
            <input id="button" type="submit" value="Ver edições"></input>
            <input id="button" type="submit" value="Editar"></input>
            <input id="button" type="submit" value="Remover"></input>
        </div>
    </div>
</body>
</html>