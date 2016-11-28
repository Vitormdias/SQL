
/*Tabela Cliente*/
INSERT INTO TBTCLIENTE(CPF,NOME,ENDERECO,CIDADE,TELEFONE,RG,DATA_INSCRICAO)
VALUES('44025409950' , 'Jean Douglas' , 'Rua XXX, 100 1E' , 'Sorocaba' , 32277878 , '39078456-X' , '22/10/14');

INSERT INTO TBTCLIENTE(CPF,NOME,ENDERECO,CIDADE,TELEFONE,RG,DATA_INSCRICAO)
VALUES('43025409950' , 'Ricardo Douglas' , 'Rua XXX, 100 2F' , 'Sorocaba' , 32377878 , '39078454-0' , '22/10/14');

INSERT INTO TBTCLIENTE(CPF,NOME,ENDERECO,CIDADE,TELEFONE,RG,DATA_INSCRICAO)
VALUES('44025609950' , 'Michael Douglas' , 'Rua XYZ, 100 1E' , 'Sorocaba' , 32277777 , '39078455-9' , '22/10/13');

INSERT INTO TBTCLIENTE(CPF,NOME,ENDERECO,CIDADE,TELEFONE,RG,DATA_INSCRICAO)
VALUES('44025409951' , 'Luiz Douglas' , 'Rua HueHueBR, 400' , 'Sorocaba' , 33277879 , '39088456-1' , '22/02/14');

INSERT INTO TBTCLIENTE(CPF,NOME,ENDERECO,CIDADE,TELEFONE,RG,DATA_INSCRICAO)
VALUES('44025410950' , 'Medson Douglas' , 'Rua XXX, 100 1E' , 'Sorocaba' , 32277878 , '39078456-X' , '22/10/14');

/*Tabela Categoria*/
INSERT INTO TBTCATEGORIA
VALUES(1 , 'Compacto');

INSERT INTO TBTCATEGORIA
VALUES(2 , 'Medio');

INSERT INTO TBTCATEGORIA
VALUES(3 , 'Grande');

INSERT INTO TBTCATEGORIA
VALUES(4 , 'Super Luxo');

/*Tabela Carro*/
INSERT INTO TBTCARRO
VALUES('DSU-3567' , 'Toyota' , 1);

INSERT INTO TBTCARRO
VALUES('FTT-3567' , 'Hyundai' , 2);

INSERT INTO TBTCARRO
VALUES('HUE-3367' , 'Kia' , 3);

INSERT INTO TBTCARRO
VALUES('EEE-3877' , 'BMW' , 4);

INSERT INTO TBTCARRO
VALUES('BIA-8989' , 'Mercedes' , 4);

/*Tabela Seguro*/
INSERT INTO TBTSEGURO
VALUES(1 , 'Simples', 100);

INSERT INTO TBTSEGURO
VALUES(2 , 'Contra terceiros', 400);

INSERT INTO TBTSEGURO
VALUES(3 , 'Contra roubo', 500);

INSERT INTO TBTSEGURO
VALUES(4 , 'Total', 1000);

/*Tabela Locação*/
INSERT INTO TBTLOCACAO
VALUES(1 , '20/01/15', '21/01/15', 20.50 , 20.50 , 345676589 ,'44025409950' ,'DSU-3567');

INSERT INTO TBTLOCACAO
VALUES(2, '21/01/15', '25/01/15' , 20.50 , 82 , 4567898765 ,'43025409950' , 'FTT-3567');

INSERT INTO TBTLOCACAO
VALUES(3, '30/01/15', '02/02/15' , 40.50 , 121.50 ,5675676789 , '44025609950' , 'HUE-3367');

INSERT INTO TBTLOCACAO
VALUES(4, '02/01/15', '04/01/15' , 50.50 , 101 , 45756789 , '44025409950' , 'BIA-8989');

INSERT INTO TBTLOCACAO
VALUES(5, '03/04/15', '05/04/15' , 80.00 , 160 , 467968694 , '44025409950' , 'BIA-8989');

/*Tabela Seguro-Locação*/
INSERT INTO TBTSEGURO_LOCACAO
VALUES(1 , 1);

INSERT INTO TBTSEGURO_LOCACAO
VALUES(3 , 2);

INSERT INTO TBTSEGURO_LOCACAO
VALUES(3 , 3);

INSERT INTO TBTSEGURO_LOCACAO
VALUES(2 , 3);

INSERT INTO TBTSEGURO_LOCACAO
VALUES(2 , 2);
