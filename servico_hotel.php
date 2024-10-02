<?php
include 'header.php';
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="officestyle.css">
	<title>Serviço Hotel</title>
</head>

<body>

	<div id="container"><!-- inicio container-->
		<div id="topo"><!-- inicio topo-->
			
			<div id="area-logo">
				<h1 class="logo">
					<a>Hotel</a>
				</h1>
			</div>

			<div id="area-menu">
				<div id="conteudo-menu">
					
					<div id="menu-locais">
						<span class="locais">
							Campinas - São Paulo - Brasil
						</span>
						<a href="cadastro_servico.php">
							<h1 class="reserva" href="">Reservar</a>
						<div style="clear: both;"></div>
					</div>

					<div id="area-principal">
						<div class="conteudo">
							<h2>
                			Quando for viajar e não puder levar seu pet, nós o hospedamos e garantimos muita diversão e alegria enquanto você estiver fora.
							</h2>

							<p>
                    		O hotelzinho que seu cachorro merece é um lar: com um herói que cuida com amor e mantém a rotina dele como em casa.
							</p>

							<p>
                    		Vai viajar ou não quer deixar seu cachorro sozinho em casa?
							</p>

							<p>
                    		O hotel para cachorro que seu cãozinho merece: um lar como o seu.
							</p>

						</div>
					</div>

					<div id="menu">
						<ul id="navegacao">
							<li><a href="/tiodupetservice_web/#acomodacoes.php">Home</a></li>
							<li><a href="#Apartamento/Casa">Apartamento/Casa</a></li>
							<li><a href="#Diversão">Diversão</a></li>
							<li><a href="#Adestramento">Adestramento</a></li>
							<li><a href="#Contato">Contato</a></li>
						</ul>

						<img class="depoimento" src="assets/images/acomodacao (1).png">

					</div>

				</div>
			</div>

		</div><!--/ fim topo-->

		<div id="area-lateral">
			<div class="conteudo">
				
				<ul id="beneficios">
					<li>
						
							<img src="/assets/images/acomodacao (1).png" width="150" alt="Apartamento">
							<div class="texto" id="Apartamento/Casa"></div>
							<h3>Apartamento/Casa</h3>
							<p>Um lugar que acolhe com carinho e disponibiliza instalações adequadas para os animais de estimação.</p>
						
					</li>

					<li>
						
							<img src="assets/images/acomodacao (2).png" width="150" alt="Adestramento">
							<div class="texto" id="Adestramento"></div>
							<h3>Adestramento</h3>
							<p>O adestramento de cães é uma ótima forma de educar seu bichinho de estimação, ensinando a ele o lugar certo para fazer suas necessidades, a respeitar suas ordens e até a fazer alguns truques. É também uma maneira de estabelecer limites para que o cão aprenda a lidar com frustrações e adquirir autocontrole.</p>
						
					</li>

					<li>
						
							<img src="assets/images/acomodacao (3).png" width="150" alt="Diversão">
							<div class="texto" id="Diversão"></div>
							<h3>Diversão</h3>
							<p>Ideal para quando você não quer deixar o seu pet sozinho durante o dia. Na nossa creche ele aproveita para se divertir muito com outros.</p>
						
					</li>

					<br></br>

					<li>
							<div class="texto" id="Contato"></div>
							<h3>Contato</h3>

					</li>

				</ul>

			</div>
		</div>

		<main>
             <?php if (isset($error)): ?>
             <p class="error"><?php echo htmlspecialchars($error); ?></p>
             <?php endif; ?>
              <form method="POST" action="add_pet.php">
               <br></br>
			    <label for="nomepet">Nome do Pet</label>
			    <input type="text" id="nomepet" class="input-padrao" required>

                <label for="nomesobrenome">Nome e Sobrenome tutor</label>
				<input type="text" id="nomesobrenome" class="input-padrao" required>

				<label for="email">Email</label>
				<input type="email" id="email" class="input-padrao" required placeholder="seuemail@email.com">

				<label for="telefone">Telefone</label>
				<input type="tel" id="telefone" class="input-padrao" required placeholder="(XX)XXXXX-XXXX">
                <br></br>
				<textarea cols="70" rows="10" id="mensagem" class="input-padrao" required></textarea>

				<fieldset>

					<legend>Como prefere nosso contato?</legend>

					<label for="radio-email"><input type="radio" name="contato" value="email" id="radio-email">Email</label>

					<label for="radio-telefone"><input type="radio" name="contato" value="telefone" id="radio-telefone">Telefone</label>

					<label for="radio-whatsapp"><input type="radio" name="contato" value="whatsapp" id="radio-whatsapp" checked>Whatsapp</label>

				</fieldset>
				<fieldset>
					<legend>Qual horário prefere receber nosso contato?</legend>
					<select>
						<option>Manhã</option>
						<option>tarde</option>
						<option>noite</option>
					</select>
				</fieldset>
				<label class="checkbox"><input type="checkbox" checked>Gostaria de receber nossas novidades por email?</label>
                <br></br>
				<input type="submit" value="Enviar formulário" class="enviar">
			</form>
        </main>

		<br></br>

		<div id="rodape">
			<span>
				&copy; M.F.F Consultoria. 2024 | Orgulhosamente criado com AMOR
			</span>
		</div>

	</div><!--/ fim container-->

</body>
</html>

