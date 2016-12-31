
/*
____________________
|    [ Questão 5 ]  |   
|    Triggers  [4]  |
|___________________|
 */


-- Trigger para chamar a função e Verificar o Tipo de Pagamento (Verificara linha por linha da tabela Pagamento).  [1] 
CREATE TRIGGER tr_Pagamento BEFORE INSERT 
ON PAGAMENTO
FOR EACH ROW
	CALL TipoPagamento (Valor);


-- Trigger para Calcular a porcentagem de Juros e adicionar a tabela de PAGAMENTO MENSAL  [2] 
CREATE TRIGGER tr_juros BEFORE INSERT
ON PagamentoMensal
FOR EACH ROW
	SET NEW.JurosTotais = VerValorParcelas (QuantidadeParcela);



-- Trigger para verificar a mensalidade   [3]                                                          
CREATE TRIGGER tr_mensalidade BEFORE INSERT          
ON PagamentoMensal
FOR EACH ROW
	SET NEW.Valor_Mais_Juros = Valor_e_Juros (Valor_Real,JurosTotais); -- Chama a função para calcular os juros


-- Trigger para adicionar o Bonus ao salario por venda Concluida     [4] 
CREATE TRIGGER tr_bonus BEFORE INSERT
ON COLABORADORES
FOR EACH ROW
	SET NEW.bonus = ValorBonus (salario);




/* Final Triggers */