/* 
Criar umaFUNÇAO 2 para contar quantos produtos são 
vendidos por determinado vendedor.
 O id do vendedor (vend_id) deve ser passado por parâmetro
*/
CREATE  OR REPLACE FUNCTION contar_produtos_vendidos(id_vendedor int)
RETURNS bigint AS $$
DECLARE produtos_vendidos bigint; 
BEGIN 
     SELECT count(vend_id) INTO produtos_vendidos FILTER (WHERE vend_id = id_vendedor) FROM products;
	 RETURN produtos_vendidos;
END;
$$ LANGUAGE plpgsql;


select contar_produtos_vendidos(1003)
/* result = 7 */