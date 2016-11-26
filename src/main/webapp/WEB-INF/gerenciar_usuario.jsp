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
	function operacaoExclusao(id) {
		location.href = "usuariocontroller.do?acao=excluir&id="+id
	}

	function operacaoEdicao(id) {
		location.href = "usuariocontroller.do?acao=editar&id="+id
	}
</script>
</head>
<body>

	<table border=1>
		<tr>
			<th>Nome</th>
			<th>Login</th>
			<th>Operação</th>
		</tr>
		<%
			List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
			for (Usuario usuario : lista) {
		%>
		<tr>
			<td>
				<%
					out.print(usuario.getNome());
				%>
			</td>
			<td>
				<%
					out.print(usuario.getLogin());
				%>
			</td>
			<td><input type="button" value="Excluir"
				onclick="javascript:operacaoExclusao(<%out.print(usuario.getId());%>)"> | <input
				type="button" value="Editar" onclick="javascript:operacaoEdicao(<%out.print(usuario.getId());%>)">
			</td>


			<!-- <c:forEach var="u"  items=lista>
				<td>${u.nome}</td>
				<td>${u.login}</td>
			</c:forEach> -->
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>