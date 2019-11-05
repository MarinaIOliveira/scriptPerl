@echo off


perl C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\scriptCliente.pl REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
perl C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\scriptTitulo.pl REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
perl C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\scriptBaixa.pl REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 

REM Token CMOS Drake
echo user NjMzOV8zNDI0Hk25sOZQYLKQdq4PB5> ftpcmd.dat
echo >> ftpcmd.dat
echo bin>> ftpcmd.dat
echo put C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\clientes.txt>> ftpcmd.dat REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
echo bin>> ftpcmd.dat
echo put C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\titulos.txt>> ftpcmd.dat REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
echo bin>> ftpcmd.dat
echo put C:\Users\DUNNING\Desktop\SCRIPT\perl\perl\bin\baixas.txt>> ftpcmd.dat REM ALTERAR O ENDEREÇO DA PASTA DO ARQUIVO 
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat www.dunning.com.br
del ftpcmd.dat