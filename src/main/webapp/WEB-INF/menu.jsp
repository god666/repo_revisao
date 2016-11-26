</br>
</br>
</br>

<script>
	function deslogar(){
		location.href="autenticador.do?acao=deslogar"
	}
	
	function voltarHome(){
		location.href=""
	}
	
</script>
<input type="button" value="Home" onclick="javascript:voltarHome()">
<input type="button" value="Desconectar" onclick="javascript:deslogar()">