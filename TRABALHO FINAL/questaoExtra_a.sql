-- TODOS OS PRIVILEGIOS PARA O DBA DO SISTEMA
GRANT ALL PRIVILEGES ON *.* 'DBA'@'localhost' IDENTIFIED BY 'PASSWORD'

-- APENAS CONSULTAS PARA OS VENDEDORES.
GRANT SELECT ON DATABASE_NAME.* 'colaborador'@'localhost' IDENTIFIED BY 'PASSWORD' WITH GRANT OPTION;