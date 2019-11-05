# !/usr/bin/perl

$file = 'C:\WKRadar\ExpAuto_Contas_a_Receber_Baixas.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
$file1 = 'C:\WKRadar\ExpAuto_Contas_a_Receber_Baixas1.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 

$complete = 'C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\baixas.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
$dia =0;
$mes =0;
$ano =0;
$anoFinal = 20;
@dataBaixa = 0;


open (F, $file) || die ("Could not open $file!");
open (F1, $file1, '>',  or die ("Could not open $file!"));
open OUTPUT, ">>$complete";

while ($line = <F>)
{
  @filds = split ';', $line;
  
  #valor correto [4]
  @data = split '/',$filds[3];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataBaixa = '"'. $dia . '/' . $mes . '/' . $anoFinal . $ano . '"';
  
  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $filds[3]; $dataBaixa ; $filds[5]; $filds[6]; $filds[7] ; $filds[8]; $filds[9]; $filds[10]; $filds[11]; $filds[12]";
}

while ($line = <F1>)
{
  @filds = split ';', $line;
  
  #valor correto [4]
  @data = split '/',$filds[3];
  $dia = $data[0];
  $mes = $data[1];
  $ano = $data[2];
  $dataBaixa = '"'. $dia . '/' . $mes . '/' . $anoFinal . $ano . '"';
  
  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $filds[3]; $dataBaixa ; $filds[5]; $filds[6]; $filds[7] ; $filds[8]; $filds[9]; $filds[10]; $filds[11]; $filds[12]";
}

close (OUTPUT);
close (F);


