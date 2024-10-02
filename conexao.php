<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "pets";
		$conexao = new mysqli($servername, $username, $password, $dbname);
		if ($conexao->connect_error) {
			die("Connection failed: " . $conexao->connect_error);
		}
		$sql = "UPDATE cliente SET nome = '" . $_POST['txtNome'] . "',
								cpf = '" . $_POST['txtCpf'] . "',
								telefone = '" . $_POST['txtTelefone'] . "',
								email = '" . $_POST['txtEmail'] . "',
								endereco = '" . $_POST['txtEndereco'] . "',
								numero = '" . $_POST['txtNumero'] . "',
								complemento = '" . $_POST['txtComplemento'] . "',
								bairro='" . $_POST['txtBairro'] . "',
								cep='" . $_POST['txtCep'] . "',
								cidade='" . $_POST['txtCidade'] . "',
								estado='" . $_POST['txtEstado'] . "'
									WHERE id =" . $_POST['txtID'] . ";";
		if ($conexao->query($sql) === TRUE) {
			echo ' 
						<a href="listar_cliente.php"> <h1>Cliente Atualizado com sucesso! </h1> </a> 
						';
			$id = mysqli_insert_id($conexao);
		} else {
			echo ' 
							<a href="listar_cliente.php"> <h1>ERRO! </h1> </a>
							 ';
		}
		$conexao->close();
		?>