# !/usr/bin/perl

$file = 'C:\WKRadar\ExpAuto_Contas_a_Receber_Movimentos.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
$file1 = 'C:\WKRadar\ExpAuto_Contas_a_Receber_Movimentos1.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 

$complete = 'C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\titulos.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
$dia =0;
$mes =0;
$ano =0;
$anoFinal = 20;
@dataEmissao = 0;
@dataVencimento = 0;

open (F, $file) || die ("Could not open $file!");
open (F1, $file1, '>',  or die ("Could not open $file!"));
open OUTPUT, ">>$complete";



while ($line = <F>)
{
  @filds = split ';', $line;
  
  @data = split '/',$filds[3];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataEmissao = '"'. $dia . '/' . $mes . '/' . $anoFinal . $ano . '"';
  
  @data = split '/',$filds[4];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataVencimento = $dia . '/' . $mes . '/' . $anoFinal . $ano; 

  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $dataEmissao ; $dataVencimento; $filds[5]; $filds[6]; $filds[7] ; $filds[8]";
}

while ($line = <F1>)
{
  @filds = split ';', $line;
  
  @data = split '/',$filds[3];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataEmissao = '"'. $dia . '/' . $mes . '/' . $anoFinal . $ano . '"';
  
  @data = split '/',$filds[4];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataVencimento = $dia . '/' . $mes . '/' . $anoFinal . $ano; 

  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $dataEmissao ; $dataVencimento; $filds[5]; $filds[6]; $filds[7] ; $filds[8]";

}

close (OUTPUT);
close (F);


