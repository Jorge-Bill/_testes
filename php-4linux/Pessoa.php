<?php

Class Pessoa{
    Public $idPessoa;
    Public $nome;
    Public $idade;

    Function CadastrarPessoa($idPessoa, $nome, $idade){
        $this->idPessoa = $idPessoa;
        $this->nome = $nome;
        $this->idade = $idade;
    }
}




$teste = new Pessoa();
$teste = $teste->CadastrarPessoa(1, "jorge", 24);
var_dump($teste);

?>