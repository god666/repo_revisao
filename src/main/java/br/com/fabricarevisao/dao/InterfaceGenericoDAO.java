package br.com.fabricarevisao.dao;

import java.sql.Connection;
import java.util.List;

public interface InterfaceGenericoDAO <T>{
	
	public void cadastrar(T entrada);
	public void atualizar(T entrada);
	public void salvar(T entrada);
	public T buscarPorId(int id);
	public List<T> buscarTudo();

}
