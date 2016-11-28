<<<<<<< HEAD

--Comandos SQL:
OBJETIVO: Estes comandos irá acrescentar a coluna data_inclusao na tabela
TBTCarro e atualizará a coluna data_inclusao para a data do sistema

ALTER TABLE TBTCarro ADD data_inclusao DATE;
UPDATE TBTCarro set data_inclusao = SYSDATE where Placa_carro = 'DSU-3567'

OBJETIVO: Este comando irá buscar por clientes que seus nomes começam com M

SELECT * FROM TBTCliente WHERE NOME LIKE 'M%';

OBJETIVO: Este comando retornará todos os dados da tabela TBTCliente onde o nome do cliente comece com L e a cidade comece com S

SELECT * FROM TBTCliente
WHERE NOME LIKE 'L%' 
AND CIDADE LIKE 'S%'

4.4 Escreva um comando que utilize a funções de data dentro da cláusula where.

"OBJETIVO: Buscar por todos os clientes inscritos em 2013"

SELECT NOME FROM tbtcliente WHERE TO_CHAR(data_inscricao,'YYYY') = '2013';


4.5 Escreva um exemplo de junção entre 2 tabelas que retorne várias linhas. diego

'OBJETIVO: essa consulta retorna a marca e a categoria dos carros'

SELECT MARCA,CATEGORIA
FROM TBTCARRO
INNER JOIN TBTCATEGORIA
ON TBTCARRO.COD_CATEGORIA = TBTCATEGORIA.COD_CATEGORIA


4.6 Escreva um exemplo de junção entre 3 tabelas.

"OBJETIVO: buscar por locações que alugaram carros do tipo super luxo"
SELECT cod_locacao FROM tbtlocacao INNER JOIN tbtcarro ON tbtlocacao.placa_carro = tbtcarro.placa_carro
INNER JOIN tbtcategoria ON tbtcarro.cod_categoria = tbtcategoria.cod_categoria
WHERE categoria = 'Super Luxo';


4.7 De um exemplo de comando DML que utilize a função count(* ) .


OBJETIVO: essa consulta retorna a quantidade de categorias diferentes de "Super Luxo"
select count(*) from tbtcategoria where categoria <> 'Super Luxo'
4.8 De um exemplo de comando DML que utilize a função Sum().

"OBJETIVO: obter a soma das locações de pelo menos 2 dias"
SELECT SUM(Valor_total) FROM tbtlocacao WHERE (data_devolucao - data_locacao) >=2;


4.9 Explique para que serve a claúsula group by e dê 2 exemplos de sua utilização.

OBJETIVO: retorna os nomes dos clientes que possuem CPF cadastrado agrupados por nome
*/
SELECT NOME
FROM TBTCLIENTE
WHERE CPF is not null
GROUP BY NOME;

/*OBJETIVO: retorna os valores totais de todas as locacoes onde o valor é diferente de zero, agrupados por valor total
*/
SELECT VALOR_TOTAL
FROM TBTLOCACAO
WHERE VALOR_TOTAL <> 0
GROUP BY VALOR_TOTAL


4.10 Explique para que serve a claúsula having e dê 1 exemplo de sua utilização.

A cláusula having é utilizada como uma restrição para o group by

"OBJETIVO: retornar valores totais onde o valor é diferente de zero e menor que cem, agrupados por valor total"
SELECT VALOR_TOTAL
FROM TBTLOCACAO
WHERE VALOR_TOTAL <> 0
GROUP BY VALOR_TOTAL
HAVING VALOR_TOTAL< 100;


4.11 Explique para que serve a claúsula order by e dê 1 exemplo de sua utilização.

A cláusula ORDER BY serve para ordenar de forma crescente ou decrescente o resultado de uma consulta. Deve-se informar qual
coluna será usada como referência

OBJETIVO: retornar as datas de locacao e devolucao do carro ordenadas pelo valor total da locação, ordenadas de forma descendente

SELECT data_locacao,data_devolucao
FROM TBTLOCACAO
ORDER BY valor_total DESC

Subconsultas - Para cada exemplo que você criar descreva antes o objetivo do comando.
Exemplo: “Objetivo: Este comando vai selecionar todos os clientes que não tem pedidos”

4.12 Dê exemplo de um comando utilizando subconsultas que utilize o operador = ou <,>, <= etc.


SELECT VALOR_TOTAL FROM tbtlocacao
WHERE VALOR_TOTAL > (SELECT AVG(VALOR_TOTAL) FROM tbtlocacao);


4.13 Dê exemplo de um comando utilizando subconsultas que utilize o operador in.

OBJETIVO: retorna a placa do carro onde a marca não está inclusa na consulta das marcas onde a data de inclusão é nula)
*/

SELECT PLACA_CARRO FROM TBTCARRO WHERE MARCA IN (SELECT MARCA FROM TBTCARRO WHERE DATA_INCLUSAO IS NULL)

4.14 Dê exemplo de um comando utilizando subconsultas que utilize o operador not in.

"OBJETIVO: este comando vai selecionar os que clientes não fizeram nenhuma locação no mês de abril/2015"

SELECT NOME FROM TBTCLIENTE
WHERE CPF NOT IN
   (SELECT CPF_CLI FROM TBTLOCACAO
   WHERE DATA_LOCACAO BETWEEN '2015-01-03' AND '2015-30-04')


4.15 Dê exemplo de um comando utilizando subconsultas que utilize o operador EXISTS
OBJETIVO: retorna o NOME do cliente que existe em pelo menos um pedido
SELECT NOME FROM TBTCLIENTE WHERE EXISTS (SELECT COUNT (*) FROM TBTLOCACAO WHERE
TBTLOCACAO.CPF_CLI = TBTCLIENTE.CPF GROUP BY TBTCLIENTE.CPF HAVING COUNT (*) > 1)


4.16 Dê exemplo de um comando utilizando subconsultas que utilize o operador not exists.

OBJETIVO: selecionar quais os carros que não estão presentes em nenhuma locação

 Select Placa_carro, marca from TBTCARRO
		Where not exists
( select  *  from TBTLOCACAO where
                    TBTCARRO.PLACA_CARRO =  TBTLOCACAO.PLACA_CARRO);


4.17 Dê exemplo de uma subconsulta utilizada dentro de um comando Update.

OBJETIVO: atualizar a coluna MARCA onde o cod_categoria está incluso na consulta dos cod_categoria onde a data de inclusão não é nula
UPDATE TBTCARRO
SET MARCA = 'FIAT'
WHERE COD_CATEGORIA IN
(SELECT COD_CATEGORIA
FROM TBTCARRO
WHERE DATA_INCLUSAO IS NOT NULL )


4.18 Dê exemplo de uma subconsulta utilizada dentro de um comando Delete.

OBJETIVO: Excluir todos os seguros de locação com valor menor que 500

DELETE FROM TBTSEGURO_LOCACAO
WHERE ID_SEGURO IN (SELECT ID_SEGURO FROM TBTSEGURO
		WHERE VALOR < 500);
=======


Comandos SQL:
4.1 Acrescente uma coluna nova “data de inclusão” no formato date, na primeira tabela
criada. Altere o valor desta coluna colocando a data do sistema.

"OBJETIVO: Este comando irá acrescentar a coluna data_inclusao na tabela carro"

ALTER TABLE Carro ADD data_inclusao DATE;

4.2 Escreva um comando Select utilizando a cláusula LIKE.

"OBJETIVO: Este comando "

4.3 Escreva um comando Select que utilize a cláusula where com 2 condições.
4.4 Escreva um comando que utilize a funções de data dentro da cláusula where.
4.5 Escreva um exemplo de junção entre 2 tabelas que retorne várias linhas.
4.6 Escreva um exemplo de junção entre 3 tabelas.
4.7 De um exemplo de comando DML que utilize a função count(* ) .
4.8 De um exemplo de comando DML que utilize a função Sum().
4.9 Explique para que serve a claúsula group by e dê 2 exemplos de sua utilização.
4.10 Explique para que serve a claúsula having e dê 1 exemplo de sua utilização.
4.11 Explique para que serve a claúsula order by e dê 1 exemplo de sua utilização.



Subconsultas - Para cada exemplo que você criar descreva antes o objetivo do comando.
Exemplo: “Objetivo: Este comando vai selecionar todos os clientes que não tem pedidos”
4.12 Dê exemplo de um comando utilizando subconsultas que utilize o operador = ou
<,>, <= etc.
4.13 Dê exemplo de um comando utilizando subconsultas que utilize o operador in.
4.14 Dê exemplo de um comando utilizando subconsultas que utilize o operador not in.
4.15 Dê exemplo de um comando utilizando subconsultas que utilize o operador exists
4.16 Dê exemplo de um comando utilizando subconsultas que utilize o operador not
exists.
4.17 Dê exemplo de uma subconsulta utilizada dentro de um comando Update.
4.18 Dê exemplo de uma subconsulta utilizada dentro de um comando Delete.



>>>>>>> b77274bfc965342b3cacc3c8f8df98b606218c04
