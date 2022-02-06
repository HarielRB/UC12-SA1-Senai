<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Vaga</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Sistema de Controle de Vagas de Emprego</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="emp_010.jsp">Cadastrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Alteração</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Exclusão</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Listar
                </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Vagas Ativas</a></li>
                            <li><a class="dropdown-item" href="#">Vagas Preenchidas</a></li>
                            <li><a class="dropdown-item" href="#">Todas as Vagas</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br><br>

    <main>
        <form action="emp_011.jsp" method="post">

            <label for="descVaga">Descrição:</label>
            <input id="cargo" type="text" name="descricao"><br><br>

            <label for="requisitosObrig">Requisitos Obrigatórios:</label>
            <input id="requisitosObrig" type="text" name="requisitosObrigatorios"><br><br>

            <label for="requisitosDesej">Requisitos Desejáveis:</label>
            <input id="requisitosDesej" type="text" name="requisitosDesejaveis"><br><br>

            <label for="salario">Remuneração:</label>
            <input id="salario" type="text" name="salario" ><br><br>

            <label for="benefVaga" class="descricaoVaga">Benefícios: </label>
            <input type="text" class="big" name="beneficios"><br><br>

            <label for="localVaga" class="descricaoVaga">Local de Trabalho: </label>
            <input type="text" class="big" name="localTrabalho"><br><br>

            <input type="submit" name="Cadastrar" id="sendBT" value="Cadastrar">
        </form>

    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>