<%@ page import="Classes.Vaga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   
    %>
    <%
    	Vaga novaVaga = new Vaga();
    	novaVaga.descricao_cc = request.getParameter("descricao");
    	novaVaga.req_obrig_CC = request.getParameter("requisitosObrigatorios");
    	novaVaga.req_desejaveis = request.getParameter("requisitosDesejaveis");
    	novaVaga.remuneracao_CC = Float.parseFloat(request.getParameter("salario"));
    	novaVaga.beneficios_CC = request.getParameter("beneficios");
    	novaVaga.local_trabalho_CC = request.getParameter("localTrabalho");
    %>
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

    <div>
        <h5>Sistema de Controle de Vagas de Emprego</h5>
        <p>Descrição: <%= novaVaga.descricao_cc %> </p>
        <p>Requisitos Obrigatórios: <%= novaVaga.req_obrig_CC %> </p>
        <p>Requisitos Desejáveis: <%= novaVaga.req_desejaveis %> </p>
        <p>Remuneração: R$<%= novaVaga.remuneracao_CC %> </p>
        <p>Benefício:<%= novaVaga.beneficios_CC %> </p>
        <p>Local de Trabalho:<%= novaVaga.local_trabalho_CC %> </p>

        <p><b>Vaga Incluída com Sucesso!</b></p>
        <button type="button" class="btn btn-primary" href="index.jsp"><a href="index.jsp" style="color:white">Voltar</a></button>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>