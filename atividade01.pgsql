/* 
Usando o banco de dados empresa.sql.
Criar uma FUNCÃO 1 que receba o ID 
de um produto (prod_id) e a quantidade 
comprada e retornero valor do preço (prod_price)
com desconto conforme as condições seguintes:•quantidade
<= 3 desconto = 0.2•quantidade > 3 desconto = 0.5
 */
CREATE OR REPLACE FUNCTION descontoProduto(id_produto varchar, quantidade int)
RETURNS TABLE (produto character, preço double precision) AS $$
BEGIN
    IF quantidade <= 3 THEN
          RETURN QUERY SELECT prod_id, (prod_price - (prod_price * 0.2))* quantidade    from products WHERE prod_id = id_produto;			  
	ELSIF quantidade > 3 THEN
	       RETURN QUERY SELECT prod_id, (prod_price - (prod_price * 0.5))* quantidade    from products WHERE prod_id = id_produto;
	END IF;	  
	END;
$$ LANGUAGE plpgsql;
/*  chamar função*/
SELECT * FROM descontoProduto('FB',2)
	