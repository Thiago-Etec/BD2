USE cadastro;

## Código da Função 
delimiter $$
CREATE FUNCTION preferem_o_curso(curso varchar(30)) RETURNS INT
BEGIN
    DECLARE quantidade int;
    SET quantidade = (SELECT count(*) FROM estudante join curso ON 
	 estudante.cursopreferido = curso.idcurso AND 
    curso.nome like curso);
    RETURN quantidade;
END $$
delimiter ;

## Execução da Função
SELECT preferem_o_curso("MySQL") AS "Preferem o MySQL";