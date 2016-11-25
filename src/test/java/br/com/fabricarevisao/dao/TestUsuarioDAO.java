package br.com.fabricarevisao.dao;

import br.com.fabricarevisao.entidade.Usuario;

public class TestUsuarioDAO {

	public static void testCadastrar(){
		Usuario u = new Usuario();
		UsuarioDAO dao = new UsuarioDAO();
		
		u.setNome("Revisao Teste 3");
		u.setLogin("revisao");
		u.setSenha("123");
		dao.cadastrar(u);
		System.out.println("Rodou");
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		testCadastrar();
	}

}
