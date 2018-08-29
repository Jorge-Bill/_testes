<?php include_once	'header.php'; ?>
	<?php 
		$nome = $_GET["nome"];
		$preco = $_GET["preco"]; 

	 ?>

	O produto <?php echo $nome; ?>, <?php echo $preco; ?> foi adicionado com sucesso!
<?php include_once	'footer.php'; ?>
