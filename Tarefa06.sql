/*
Primeira questão
*/
CREATE  OR REPLACE FUNCTION get_count (id_nome varchar)
RETURNS bigint AS $$ 
DECLARE prod_count bigint; 
BEGIN 
     SELECT  count(*) INTO prod_count FILTER (WHERE prod_id = id_nome) FROM orderitems;
	 RETURN prod_count;
END;
$$ LANGUAGE plpgsql;

/* Chamar a primeria function */
select  get_count('FB')




/*
Segunda questão
*/

DO $$ 
DECLARE
       cursor1 CURSOR IS SELECT * FROM products;
BEGIN
     FOR registro IN cursor1 LOOP 
             RAISE NOTICE 'Produto: % -> %', registro.prod_id ,get_count(registro.prod_id);
     END LOOP; 
END $$;



