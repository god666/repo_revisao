<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

	function novoCadastro(){
		location.href="usuariocontroller.do?acao=cadastrar"
	}
	
	function gerenciarUsuario(){
		location.href="usuariocontroller.do?acao=listar"
	}

</script>

</head>

<body>

	<input type="button" value="Novo Usu�rio" onclick="javascript:novoCadastro()">
	</br></br></br>
	<input type="button" value="Gerenciar Usu�rios" onclick="javascript:gerenciarUsuario()">

	<%@include file="menu.jsp" %>

</body>
</html>