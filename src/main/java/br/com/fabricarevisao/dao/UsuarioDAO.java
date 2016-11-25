package br.com.fabricarevisao.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import br.com.fabricarevisao.entidade.Usuario;

public class UsuarioDAO implements InterfaceUsuarioDAO{

	private Connection connection = ConnectionFactory.getConnection();
	
	@Override
	public void cadastrar(Usuario usuario) {
		String sql = "insert into Usuario (nome, login, senha) values (?,?,?)";
		//Usuario usuario = entrada;
		
		try (PreparedStatement preparador = connection.prepareStatement(sql)){
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getLogin());
			preparador.setString(3, usuario.getSenha());
			
			preparador.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void atualizar(Usuario entrada) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void salvar(Usuario entrada) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Usuario buscarPorId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> buscarTudo() {
		// TODO Auto-generated method stub
		return null;
	}


}
