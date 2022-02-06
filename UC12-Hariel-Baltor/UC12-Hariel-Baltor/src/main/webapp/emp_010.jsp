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
         <div style="width: 50%; margin-right: auto; margin-left: auto; margin-top: 100px;">
        <form class="row g-3">
            <div class="col-md-8">
              <label for="inputdescricao" class="form-label">Descricao</label>
              <input type="text" class="form-control" id="inputdescricao" name="descricao">
            </div>
            <div class="col-md-4">
              <label  for="requisitosObrig" class="form-label">Requisitos Obrigatorios</label>
              <input type="text" class="form-control"  id="requisitosObrig" name="requisitosObrigatorios">
            </div>
            <div class="col-12">
              <label for="requisitosDesej" class="form-label">Requisitos Desejaveis</label>
              <input type="text" class="form-control" id="requisitosDesej" name="requisitosDesejaveis">
            </div>
            <div class="col-12">
              <label for="localVaga" class="form-label">Local de Trabalho</label>
              <input type="text" class="form-control" id="localVaga" name="localTrabalho">
            </div>
            <div class="col-md-8">
              <label for="benefVaga" class="form-label">Beneficios</label>
              <input type="text" class="form-control"  id="benefVaga" name="beneficios">
            </div>

            <div class="col-md-10">
              <label for="salario" class="form-label">Remuneracao</label>
              <input type="text" class="form-control" id="salario" name="salario">
            </div>
            <div class="col-12">
            </div>
            <div class="col-12">
              <button type="submit" class="btn btn-primary">Cadastrar</button>
            </div>
          </form>
    
    </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>