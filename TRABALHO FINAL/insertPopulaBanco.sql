
/* TESTES de Inserção */
INSERT INTO ENDERECO (cep, rua, bairro, cidade, estado, pais) VALUES 
		('24220000', 'Rua Mem de Sá', 'Icaraí', 'Niterói', 'RJ','Brasil'), -- Endereço Empresa
        ('24220001', 'Rua Miguel de Frias', 'Icaraí', 'Niterói', 'RJ','Brasil'), -- Endereço Empresa
		('24220002', 'Avenida Ernani do Amaral Peixoto', 'Centro', 'Niterói', 'RJ', 'Brasil'), -- Endereço Empresa
        
        ('24220003', 'Rua Visconde do Uruguai', 'Centro', 'Niterói', 'RJ', 'Brasil'), -- Endereço Empreendimento;
        ('24220004', 'Rua Professor Octacílio', 'Santa Rosa', 'Niterói', 'RJ', 'Brasil'), -- Endereço Empreendimento;
        ('24220005', 'Rua Presidente Backer', 'Icarai', 'Niterói', 'RJ', 'Brasil'), -- Endereço Empreendimento;
        ('24220006', 'Rua Barão do Amazonas', 'Centro', 'Niterói', 'RJ', 'Brasil'), -- Endereço Empreendimento;
        ('24220007', 'Estrada Caetano Monteiro', 'Pendotiba', 'Niterói', 'RJ', 'Brasil'),-- Endereço Empreendimento;
        
        ('09607015', 'Rua Particular', 'Pendotiba', 'São Bernardo do Campo', 'SP', 'Brasil');
        
INSERT INTO EMPRESA (cnpj, nome, numero, complemento, id_endereco) VALUES 
		('30079289000147', 'VU160 Incorporações Imobiliarias', '160', '', '24220000'),
        ('30079289000148', 'João de Almeida Engenharia', '77', '19 andar', '24220001'),
        ('30079289000149', 'RENENS RJ Empreendimentos Imobiliários', '5', '10 andar', '24220002');

INSERT INTO EMPREENDIMENTO (tipo, nome, posicao, numero, id_endereco, id_empresa) VALUES 
		('Residêncial', 'Bluebay', 'Lançamento', '160', '24220003', 1),
        ('Residêncial', 'Eldorado II', 'Em Obras', '130', '24220004', 3),
        ('Residêncial', 'Planet Icaraí', 'Em Obras', '231', '24220005', 2),
        ('Residêncial', 'Viva Niterói', 'Em Obras', '261', '24220006', 2),
        ('Comercial', 'Futura Shopping', 'Pronto', '50', '24220007', 2);



INSERT INTO BLOCO (numero, id_empreendimento, nome) VALUES 
		(1, 1, ''),
        (1, 2, 'Atlântida'),
        (1, 2, 'Petra'),
        (1, 3, 'Indie'),
        (2, 3, 'Rock'),
        (1, 4, ''),
        (1, 5, '');

INSERT INTO UNIDADE (id_bloco, numero, tipo, area_privativa, preco_base) VALUES 
		(1, 301, 'Padrão', 64.62, 303000),
        (1, 401, 'Padrão', 64.62, 306000),
        (1, 501, 'Padrão', 64.62, 309000),
        (1, 601, 'Padrão', 64.62, 312000),
        (1, 302, 'Padrão', 64.62, 315000),
        (1, 402, 'Padrão', 61.72, 318000),
        (1, 502, 'Padrão', 61.72, 321000),
        (1, 602, 'Padrão', 61.72, 324000),
        (1, 303, 'Padrão', 61.95, 327000),
        (1, 403, 'Padrão', 61.95, 330000),
        (1, 503, 'Padrão', 61.95, 333000),
        (1, 603, 'Padrão', 61.95, 337000),
        (1, 304, 'Padrão', 59.43, 340000),
        (1, 404, 'Padrão', 59.43, 343000),
        (1, 504, 'Padrão', 59.43, 346000),
        (1, 604, 'Padrão', 59.43, 349000),
        (1, 701, 'Cobertura', 141.30, 505000),
        (1, 702, 'Cobertura', 139.59, 510000),
        (1, 703, 'Cobertura', 101.45, 450000),
        (1, 704, 'Cobertura', 192.08, 600000),
        
        (2, 301, 'Padrão', 64.62, 203000),
        (2, 401, 'Padrão', 64.62, 206000),
        (2, 501, 'Padrão', 64.62, 209000),
        (2, 601, 'Padrão', 64.62, 212000),
        (2, 302, 'Padrão', 64.62, 215000),
        (2, 402, 'Padrão', 61.72, 218000),
        (2, 502, 'Padrão', 61.72, 221000),
        (2, 602, 'Padrão', 61.72, 224000),
        (2, 303, 'Padrão', 61.95, 227000),
        (2, 403, 'Padrão', 61.95, 230000),
        (2, 503, 'Padrão', 61.95, 233000),
        (2, 603, 'Padrão', 61.95, 237000),
        (2, 304, 'Padrão', 59.43, 240000),
        (2, 404, 'Padrão', 59.43, 243000),
        (2, 504, 'Padrão', 59.43, 246000),
        (2, 604, 'Padrão', 59.43, 249000),
        (2, 701, 'Cobertura', 141.30, 405000),
        (2, 702, 'Cobertura', 139.59, 410000),
        (2, 703, 'Cobertura', 101.45, 350000),
        (2, 704, 'Cobertura', 192.08, 500000),
        
		(3, 301, 'Padrão', 64.62, 203000),
        (3, 401, 'Padrão', 64.62, 206000),
        (3, 501, 'Padrão', 64.62, 209000),
        (3, 601, 'Padrão', 64.62, 212000),
        (3, 302, 'Padrão', 64.62, 215000),
        (3, 402, 'Padrão', 61.72, 218000),
        (3, 502, 'Padrão', 61.72, 221000),
        (3, 602, 'Padrão', 61.72, 224000),
        (3, 303, 'Padrão', 61.95, 227000),
        (3, 403, 'Padrão', 61.95, 230000),
        (3, 503, 'Padrão', 61.95, 233000),
        (3, 603, 'Padrão', 61.95, 237000),
        (3, 304, 'Padrão', 59.43, 240000),
        (3, 404, 'Padrão', 59.43, 243000),
        (3, 504, 'Padrão', 59.43, 246000),
        (3, 604, 'Padrão', 59.43, 249000),
        (3, 701, 'Cobertura', 141.30, 405000),
        (3, 702, 'Cobertura', 139.59, 410000),
        (3, 703, 'Cobertura', 101.45, 350000),
        (3, 704, 'Cobertura', 192.08, 500000),
        
        (4, 301, 'Padrão', 64.62, 403000),
        (4, 401, 'Padrão', 64.62, 406000),
        (4, 501, 'Padrão', 64.62, 409000),
        (4, 601, 'Padrão', 64.62, 412000),
        (4, 302, 'Padrão', 64.62, 415000),
        (4, 402, 'Padrão', 61.72, 418000),
        (4, 502, 'Padrão', 61.72, 421000),
        (4, 602, 'Padrão', 61.72, 424000),
        (4, 303, 'Padrão', 61.95, 427000),
        (4, 403, 'Padrão', 61.95, 430000),
        (4, 503, 'Padrão', 61.95, 433000),
        (4, 603, 'Padrão', 61.95, 437000),
        (4, 304, 'Padrão', 59.43, 440000),
        (4, 404, 'Padrão', 59.43, 443000),
        (4, 504, 'Padrão', 59.43, 446000),
        (4, 604, 'Padrão', 59.43, 449000),
        (4, 701, 'Cobertura', 141.30, 605000),
        (4, 702, 'Cobertura', 139.59, 610000),
        (4, 703, 'Cobertura', 101.45, 550000),
        (4, 704, 'Cobertura', 192.08, 700000),
        
        (5, 301, 'Padrão', 64.62, 403000),
        (5, 401, 'Padrão', 64.62, 406000),
        (5, 501, 'Padrão', 64.62, 409000),
        (5, 601, 'Padrão', 64.62, 412000),
        (5, 302, 'Padrão', 64.62, 415000),
        (5, 402, 'Padrão', 61.72, 418000),
        (5, 502, 'Padrão', 61.72, 421000),
        (5, 602, 'Padrão', 61.72, 424000),
        (5, 303, 'Padrão', 61.95, 427000),
        (5, 403, 'Padrão', 61.95, 430000),
        (5, 503, 'Padrão', 61.95, 433000),
        (5, 603, 'Padrão', 61.95, 437000),
        (5, 304, 'Padrão', 59.43, 440000),
        (5, 404, 'Padrão', 59.43, 443000),
        (5, 504, 'Padrão', 59.43, 446000),
        (5, 604, 'Padrão', 59.43, 449000),
        (5, 701, 'Cobertura', 141.30, 605000),
        (5, 702, 'Cobertura', 139.59, 610000),
        (5, 703, 'Cobertura', 101.45, 550000),
        (5, 704, 'Cobertura', 192.08, 700000),
        
        (6, 301, 'Padrão', 64.62, 103000),
        (6, 401, 'Padrão', 64.62, 106000),
        (6, 501, 'Padrão', 64.62, 109000),
        (6, 601, 'Padrão', 64.62, 112000),
        (6, 302, 'Padrão', 64.62, 115000),
        (6, 402, 'Padrão', 61.72, 118000),
        (6, 502, 'Padrão', 61.72, 121000),
        (6, 602, 'Padrão', 61.72, 124000),
        (6, 303, 'Padrão', 61.95, 127000),
        (6, 403, 'Padrão', 61.95, 130000),
        (6, 503, 'Padrão', 61.95, 133000),
        (6, 603, 'Padrão', 61.95, 137000),
        (6, 304, 'Padrão', 59.43, 140000),
        (6, 404, 'Padrão', 59.43, 143000),
        (6, 504, 'Padrão', 59.43, 146000),
        (6, 604, 'Padrão', 59.43, 149000),
        (6, 701, 'Cobertura', 141.30, 305000),
        (6, 702, 'Cobertura', 139.59, 310000),
        (6, 703, 'Cobertura', 101.45, 250000),
        (6, 704, 'Cobertura', 192.08, 400000),
        
        (7, 301, 'Loja', 44.62, 103000),
        (7, 401, 'Loja', 44.62, 106000),
        (7, 501, 'Loja', 44.62, 109000),
        (7, 601, 'Loja', 44.62, 112000),
        (7, 302, 'Padrão', 44.62, 115000),
        (7, 402, 'Padrão', 41.72, 118000),
        (7, 502, 'Padrão', 41.72, 121000),
        (7, 602, 'Padrão', 41.72, 124000),
        (7, 303, 'Padrão', 41.95, 127000),
        (7, 403, 'Padrão', 41.95, 130000),
        (7, 503, 'Padrão', 41.95, 133000),
        (7, 603, 'Padrão', 41.95, 137000),
        (7, 304, 'Padrão', 39.43, 140000),
        (7, 404, 'Padrão', 39.43, 143000),
        (7, 504, 'Padrão', 39.43, 146000),
        (7, 604, 'Padrão', 39.43, 149000),
        (7, 701, 'Cobertura', 141.30, 305000),
        (7, 702, 'Cobertura', 139.59, 310000),
        (7, 703, 'Cobertura', 101.45, 250000),
        (7, 704, 'Cobertura', 192.08, 400000);
        
INSERT INTO PESSOA (cpf, nome, id_endereco, numero, complemento) VALUES 
		(69312055950, 'Guilherme Almeida Barbosa', 9, '1243', ''),
        (69312055950, 'Luana Carvalho Castro', 9, '1243', '');