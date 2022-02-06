package Classes;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Vaga {
	public int idVaga; //gerado pelo banco de dados
	public String descricao_cc;
	public String req_obrig_cc;
	public String req_desejaveis;
	public float remuneracao_cc;
	public boolean statusVaga;
	public String beneficios_cc;
	public String local_trabalho_cc;
	public int aberta_cc;
	
	
	// os gets pegam o valor e os setters enviam
	
	// metodo para incluir vaga no banco de dados
	public void Incluir() {
		try {
			//instancianciando as variáveis para conectar ao banco
			ConectaBd conectando = new ConectaBd();
			Connection conexao = conectando.Conectar();
			
			//atribuindo os valores dos atributos ao código SQL
			String Sql = "insert into" + "vagas(descricao, req_obrigatorios, req_desejaveis, remuneracao, beneficios, local_trabalho)" + "values(?,?,?,?,?,?)";
			PreparedStatement comando = (PreparedStatement) conexao.prepareStatement(Sql);
			
			//alterando os valores contidos nos pontos de interrogação da variavel sql
			comando.setString(1, this.descricao_cc);
			comando.setString(2,this.req_obrig_cc);
			comando.setString(3, this.req_desejaveis);
			comando.setFloat(4, this.remuneracao_cc);
			comando.setString(5,this.beneficios_cc);
			comando.setString(6,this.local_trabalho_cc);
			comando.execute();//executar mudanças
			comando.close();//fechar conexão
			conexao.close();//encerrar conexao com o banco
		}
		catch(Exception erro){
			System.out.println(erro.getMessage());
		}
	}
	
	//metodo para editar vaga no banco de dados
	public void Alterar() {
		try {
			//realizando a conexão no banco de dados 
			ConectaBd conectando = new ConectaBd();
			Connection conexao = conectando.Conectar();
			String Sql = "update vagas set descricao = ?"
						+ "req_obrigatorios = ?"
						+ "req_desejaveis = ?"
						+ "remuneracao = ?"
						+ "aberta = ?"
						+ "beneficios = ?"
						+ "local_trabalho = ?"
						+ "where idvaga = ?";
			PreparedStatement comando = (PreparedStatement) conexao.prepareStatement(Sql);
			comando.setString(1, this.descricao_cc);
			comando.setString(2, this.req_obrig_cc);
			comando.setString(3, this.req_desejaveis);
			comando.setFloat(4, this.remuneracao_cc);
			comando.setInt(5, this.aberta_cc);
			comando.setString(6, this.beneficios_cc);
			comando.setString(7, this.local_trabalho_cc);
			comando.setInt(8, this.idVaga);
			comando.execute();
			comando.close();
			conexao.close();
		}
		catch(Exception erro) {
			System.out.println(erro.getMessage());
		}
	}
	
	// metodo para excluir vaga no banco de dados
	public void Excluir() {
		try {
			//conectando ao BD
			ConectaBd conectando = new ConectaBd();
			Connection conexao = conectando.Conectar();
			String Sql = "delete form vagas where idvaga" + idVaga;
			PreparedStatement comando = (PreparedStatement) conexao.prepareStatement(Sql);
			comando.execute();
			comando.close();
			conexao.close();
		}
		catch(Exception erro){
			System.out.println(erro.getMessage());
		}
	}
	
}
