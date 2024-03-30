<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestão de Tarefas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        #container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"] {
            width: calc(100% - 80px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 10px;
        }
        button[type="submit"] {
            padding: 8px 20px;
            background-color: #007bff;
            border: none;
            border-radius: 3px;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            margin-left: 10px;
        }
        a:hover {
            text-decoration: underline;
        }
        button[type="submit"][disabled] {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <div id="container">
        <h1>Gestão de Tarefas</h1>
        <form method="post" action="/add">
            <label for="task">Nova Tarefa:</label>
            <input type="text" name="task" id="task" required />
            <button type="submit">Adicionar</button>
        </form>
        <ul>
            % for index, task in enumerate(tasks):
                <li>{{ task }} <a href="/remove/{{ index }}">[Remover]</a> <a href="/complete/{{ index }}">[Concluir]</a></li>
            % end
        </ul>
        <form method="get" action="/clear">
            <button type="submit">Limpar Lista</button>
        </form>
    </div>
</body>
</html>
