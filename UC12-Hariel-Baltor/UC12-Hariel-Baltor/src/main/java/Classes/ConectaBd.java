package Classes;

import java.sql.DriverManager;

import java.sql.Connection;
public class ConectaBd {

	public String usuario = "root";
	public String senha = "123456";
	
	//a conex�o do banco de dados � uma receita de bolo sendo alterado apenas os valores contidos nas vari�veis
	//usuario, senha e url
	public Connection Conectar() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/empregos"; //utilizar o nome do Banco de Dados
		java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
		return  conn;
	}
}
