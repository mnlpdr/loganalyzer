#Segurança de Dados
#Professor Paiva
#Alunos: Manoel Pedro Alexandre e Valquer Rafael de Souza

echo 'Auditoria de processos realizados com permissões administrativas para sistemas Debian'
echo '#########################################################################'
echo 'Execute o presente script como root.'

echo 'Últimos logins e logouts efetuados no seu servidor:'
last

echo 'Inicializando levantamento dos logs do sistema...'
cd/var/log

mkdir ./auditoria/


echo 'Listando logs de acesso ao sistema...'
ls -l auth.log

echo 'Buscando acessos como root...'

grep 'root' syslog

grep 'root' auth.log

grep 'root' kern.log.1

grep 'root' dpkg.log

echo 'Gerando relatórios de auditoria...'

grep 'root' * > ./auditoria/relatorio.txt

grep 'authentication failure' auth.log > ./auditoria/relatorioerros.txt

echo 'Relatórios gerados com sucesso.'

echo 'Script finalizado.'
