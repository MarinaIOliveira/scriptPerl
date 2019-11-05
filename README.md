**Script Perl**

Script criado na linguagem Perl para formatação do relatório de um cliente, afim de automatizar e corrigir o envio do mesmo para o FTP.

Todos os scripts que necessitam de alteração estão na pasta perl\perl\bin:

1. **scriptCliente.pl -** $file, $file1 - precisa ser o endereço correto onde os arquivos clientes estão e com os nomes corretos

2. **scriptTitulo.pl -** $file, $file1 - precisa ser o endereço correto de onde os arquivos títulos estão e com os nomes corretos 

3. **scriptBaixa.pl -** $file, $file1 - precisa ser o endereço correto de onde os arquivos baixas estão e com os nomes corretos 

4. **scriptCliente.pl / scriptTitulo.pl / scriptBaixa.pl** alterar a linha $complete - Adicionar endereço da pasta perl

5. **UploadFTP.BAT -** Adicionar endereço da pasta perl

Será necessário alterar o endereço do arquivo UploadFTP.BAT  para a pasta perl  na Tarefa Agendada/ Task Scheduler . 

*Obs: Os arquivos precisam estar com os endereços e nomes corretos para que seja enviado para o nosso FTP.*

