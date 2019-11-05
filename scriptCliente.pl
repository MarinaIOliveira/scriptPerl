#!/usr/bin/perl

$file = 'C:\WKRadar\ExpAuto_Clientes_2.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
$file1 = 'C:\WKRadar\ExpAuto_Clientes_1.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 


$complete = 'C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\clientes.txt'; #ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 

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
  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $filds[5]; $filds[6]; $filds[7]; $filds[8]; $filds[9]; $filds[10]; $filds[11]; $filds[12]; $filds[13] ; $filds[14]; $filds[15]; $filds[16]";
}

while ($line = <F1>)
{
  print OUTPUT "$filds[0]; $filds[1]; $filds[2]; $filds[5]; $filds[6]; $filds[7]; $filds[8]; $filds[9]; $filds[10]; $filds[11]; $filds[12]; $filds[13] ; $filds[14]; $filds[15]; $filds[16]";
}

close (OUTPUT);
close (F);


