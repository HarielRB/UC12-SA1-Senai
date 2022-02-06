<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=], initial-scale=1.0">
    <title>Alterar Vaga</title>
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
    <div style="width: 50%; margin-right: auto; margin-left: auto; margin-top: 100px;">
        <form class="row g-3">
            <div class="col-md-4">
              <label for="inputEmail4" class="form-label">Descrição</label>
              <input type="text" class="form-control" id="inputEmail4">
            </div>
            <div class="col-md-4">
              <label for="inputPassword4" class="form-label">Requisitos Obrigatórios</label>
              <input type="text" class="form-control" id="inputPassword4">
            </div>
            <div class="col-12">
              <label for="inputAddress" class="form-label">Requisitos Desejaveis</label>
              <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
            </div>
            <div class="col-12">
              <label for="inputAddress2" class="form-label">Local de Trabalho</label>
              <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
            </div>
            <div class="col-md-6">
              <label for="inputCity" class="form-label">Beneficios</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="col-md-4">
              <label for="inputState" class="form-label">Situação</label>
              <select id="inputState" class="form-select">
                <option selected>Aberta</option>
                <option>Fechada</option>
              </select>
            </div>
            <div class="col-md-2">
              <label for="inputZip" class="form-label">Salário</label>
              <input type="text" class="form-control" id="inputZip">
            </div>
            <div class="col-12">
            </div>
            <div class="col-12">
              <button type="submit" class="btn btn-primary">Alterar</button>
            </div>
          </form>
    
    </div>
    
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>