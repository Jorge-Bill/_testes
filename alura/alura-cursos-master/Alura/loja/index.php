<?php include_once	'header.php'; ?>
	<div class="principal">
	<?php echo "<h1 class='text-center'>Bem Vindo</h1>";?>
	<?php 

		$numeros = array(1,3,9,4,5,8,2,6,7,0);

		function mostraConteudoDoArray($numeros){
		$soma = 0;
        for ($i=0; $i < sizeof($numeros); $i++) { 
            echo "<br/>Chave: " . $i . "<br/>Valor: " . $numeros[$i];
        $soma = $soma + $numeros[$i];
        }
        return $soma;
        echo $soma;
    }
    mostraConteudoDoArray($numeros);

	 ?>
	</div>	
<?php include_once	'footer.php'; ?>
	