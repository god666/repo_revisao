<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.fabricarevisao.entidade.Usuario"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

	function salvarCadastro(){
		var senha1 = document.getElementById("senha1").value;
		var senha2= document.getElementById("senha2").value;
		
		if(senha1 != senha2){
			alert("Senhas diferentes");
		} else{
			location.href="usuariocontroller.do"	
		}
	}

</script>

</head>
<body>

	<form action="usuariocontroller.do" method="post">
		
		Nome: <input type="text" name="nome"/>
		Login: <input type="text" name="login"/> 
		Senha: <input id="senha1" type="password" name="senha"/> 
		<!-- Confirmar Senha: <input id ="senha2" type="password" name="senha2"/>  -->
			
		<input type="submit" name="acao" value="Salvar"/>
	</form>
</body>
</html>