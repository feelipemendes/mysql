-- CONSULTA 1
-- CONSULTE O RANKING DOS 10 MAIORES COLABOLADORES COM BASE NO TOTAL EM REAIS DE VENDAS DO ANO 2016
-- NO INDEX
-- CONSULTA 2
-- CONSULTE OS EMPREENDIMENTOS COM MAIOR VALOR DE VENDA EM ORDER DESC

CREATE INDEX IDX_U_VALOR
ON UNIDADE (U.VALOR)


-- CONSULTA 3
-- CONSULTE TODOS OS CLIENTES QUE ESTAO COM PAGAMENTOS PENDENTES
-- NO INDEX

-- CONSULTA 4
-- CONSULTE O HISTORICO DE COMPRA REFERENTE AO ULTIMO ANO DE EXERCICIO

CREATE INDEX IDX_V_DATAVENDA
ON VENDAS(DATAVENDA)

-- CONSULTA 5
-- CONSULTE O EMPRRENDIMENTO COM MAIOR VALOR DE VENDA. OU SEJA, O QUE DARÁ MAIS LUCRO PRO COLABORADOR. E MOSTRE OS DADOS DO EMPREENDIMENTO
-- INDICE IDX_U_VALOR

CREATE INDEX IDX_U_PRECOBASE
ON UNIDADE (PRECOBASE)

-- CONSULTA 6
-- CONSULTE A QUANTIDADE DE EMPREENDIMENTO VENDIDOS NO ULTIMO ANO E O TOTAL ARRECADADO

CREATE INDEX IDX_V_VALOR
ON VENDAS (VALORVENDA)
-- CONSULTA 7
-- CONSULTE A MÉDIA ($$) RECEBIDA POR CADA COLABORADOR E MOSTRE-OS POR ORDEM DE DECRESCENTE POR VALOR

CREATE INDEX IDX_C_MATRICULA
ON COLABOLADOR (MATRICULA)

-- CONSULTA 8
-- CONSULTE OS COLABORADORES QUE RESERVARAM UMA COMPRA DE APARTAMENTO PARA ALGUM CLIENTE
-- NO INDEX

-- CONSULTA 9
-- CONSULTE A QUANTIDADE DE COLABOLADOR POR EQUIPE, MOSTRE A EQUIPE E A QNTD
-- NO INDEX

-- CONSULTA 10 * MELHORAR ESSA
-- CONSULTE OS DADOS DO COLABOLADOR RELATIVOS A CARGO, EQUIPE E LOJAS QUE ESTA ALOCADO COM SALARIO MAIOR QUE 2000 MIL

CREATE INDEX IDX_C_SALARIO
ON COLABOLADOR(SALARIO)