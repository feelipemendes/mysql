
/* 
____________________________________________________________________________________________________
| [ Questão 4 ]                                                                 				    |                     
| Criação de PROCEDURES e FUNCTIONS       PROCEDIMENTOS 2 | FUNÇÕES 3 = TOTAL: 5                    |
| A Criação dos Procedimentos e Funções deve seguir a Ordem aqui apresentada [ De Cima para Baixo ] |
|___________________________________________________________________________________________________|

 */


/* PROCEDIMENTOS */

-- Procedimento de inserção TABELA "VALORES"    [1]      
DELIMITER &&
DROP PROCEDURE IF EXISTS Insere_endereco &&
CREATE PROCEDURE Insere_endereco (  
	IN
	ins_cep INT,
    ins_rua VARCHAR (50),
    ins_bairro VARCHAR (30),
    ins_cidade VARCHAR (30),
    ins_estado VARCHAR (2),
    ins_pais VARCHAR (30)
    )
    BEGIN
		REPLACE INTO endereco VALUES (ins_cep,ins_rua,ins_bairro,ins_cidade,ins_estado,ins_pais);
    END &&
DELIMITER ;

-- [ TESTES Insere_endereco ]
-- CALL Insere_endereco ('28800000','Rua Helena','Centro','Rio Bonito','RJ','Brasil');
-- CALL Insere_endereco ('221240510','Rua Tiradentes','Inga','Niteroi','RJ','Brasil');



--  Procedimento para verificar a " Forma de Pagamento " [Será aaberto dentro de um trigger]   [2] 
DELIMITER &&
DROP PROCEDURE IF EXISTS TipoPagamento && 
CREATE PROCEDURE TipoPagamento (IN opcao VARCHAR (10))
BEGIN
	IF opcao = ('A Vista') THEN
		INSERT INTO PagamentoVista (ValorPago,DataPagamentoVista) SELECT Valor,DatadePagamento FROM PAGAMENTO; -- Pagamento à Vista
	ELSE
		
		INSERT INTO PagamentoMensal (Valor_Real,QuantidadeParcela,DataPagamentoMensal) SELECT Valor,Parcelas,DatadePagamento FROM PAGAMENTO; -- Pagamento Parcelado
	END IF;
	
END &&
DELIMITER ;



/* FUNÇÕES */
-- Função para verificar a Quandidade de Parcelas e Retornar tamanho dos Juros        [3] 
DELIMITER && 
CREATE FUNCTION VerValorParcelas (quantidade DOUBLE PRECISION)
RETURNS DOUBLE PRECISION
DETERMINISTIC
BEGIN
	DECLARE ValorQuantidade INT;
    IF quantidade = 1 Then
		SET ValorQuantidade = 1; -- Verifica se o Cliente não Pagou À Vista.
	ELSE
		SET ValorQuantidade = quantidade/100;  -- Verifica em quanto ficarão os Juros de acordo com as parcelas [EX: 12 Parcelas = 12% de Juros].
    END IF;
    
    RETURN ValorQuantidade;
END&&
DELIMITER ;



-- Função para calcular os juros        [4] 
DELIMITER // 
CREATE FUNCTION Valor_e_Juros ( ValorNormal DOUBLE PRECISION , Porcentagem DOUBLE PRECISION)    RETURNS DOUBLE PRECISION
DETERMINISTIC
BEGIN
	DECLARE TotalcomJuros DOUBLE PRECISION;
    SET TotalcomJuros = ValorNormal * Porcentagem;
    RETURN TotalcomJuros;
    
END//
DELIMITER ;

-- Função para Calcular o Bonus por uma venda Concretizada (O calculo de bonus é feito em cima do salario do Colaborador e não em cima da venda)  [5] 
DELIMITER &&
CREATE FUNCTION ValorBonus (ValorVenda DOUBLE PRECISION ) RETURNS DOUBLE PRECISION
DETERMINISTIC
BEGIN
	DECLARE PorcentBonus DOUBLE PRECISION;
    SET PorcentBonus = ValorVenda/100.00;
    RETURN PorcentBonus;

END &&
DELIMITER ;



/* { Fim dos Procedimentos & Funções}  */