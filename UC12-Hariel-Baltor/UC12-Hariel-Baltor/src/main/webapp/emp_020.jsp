<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import="java.sql.*"%>
    <%@  page import="Classes.ConectaBd" %>
    <%
    try{
    ConectaBd conectandoBanco = new ConectaBd();
    Connection conn = conectandoBanco.Conectar();
    Statement st = conn.createStatement();
    String Sql = "select * from vagas where aberta = 1";
    ResultSet rs = st.executeQuery(Sql);
    }
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Vagas</title>
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

    <div id="campoParaLista">
        <table>
            <caption class="e02">Lista de Vagas Abertas </caption>
            <thead>
                <tr>
                    <th>ID Vaga</th>
                    <th>Descrição Vaga</th>
                    <th>Req. Obrigatorios</th>
                    <th>Req. Desejaveis</th>
                    <th>Remuneracao</th>
                    <th>Status</th>
                    <th>Beneficios</th>
                    <th>Local de Trabalho</th>
                    <th>Alteracao</th>
                    <th>Exclusao</th>
                </tr>
            </thead>
           <tbody>
			<%
			int alt = 0;
			while(rs.next()){
				if (alt == 0){%>
				<tr bgcolor = snow class="e01">
				<% alt = 1;}
				else
				{%>
				<tr bgcolor = ivory class="e01">
				<% alt = 0;} %>
				<td><%= rs.getInt("idvaga") %></td>
				<td><%= rs.getString("descricao") %></td>
				<td><%=rs.getString("req_obrigatorios") %></td>
           		<td><%=rs.getString("req_desejaveis") %></td>
           		<td><%=rs.getFloat("remuneracao") %></td>
           		<td><%=rs.getInt("aberta") %></td>
           		<td><%=rs.getString("beneficios") %></td>
           		<td><%=rs.getString("local_trabalho") %></td>
           		<!--Alteração-->
           		<td><a href="emp_021.jsp?idvg=<%=rs.getInt("idvaga")%>")">Editar</a></td>
           		<!-- Exclusão -->
           		<td><a href="#" oncick="return confirm('Confirmar Exclusão)">Excluir Vaga</a></td>
           		</tr>
           		<%
					} //fechando o While aqui
				rs.close();
				st.close();
				conn.close();
				}
				catch(Exception e){
					out.println("Ocorreu uma exceção - " + e.getMessage());
				}
           		%>
           		<tr>
           		<th colspan=10>
           		<form action="index.jsp" method="get">
           		<input type="submit" value="Voltar">
           		</form>
           		</th>
           		</tr>
           </tbody>
        </table>

    </div>


     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>