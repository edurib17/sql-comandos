/* 
Para testar a função, criar uma FUNÇÃO ANÔNIMA que usará um CURSOR para varrer a tabela vendedor
(vendors) para pegar os IDs. Mostrar o resultado. Por exemplo: NOTICE: Vendedor: 
10002 -> 1
*/
DO $$ 
DECLARE
       cursor1 CURSOR IS SELECT vend_id FROM vendors;
BEGIN
     FOR registro IN cursor1 LOOP 
             RAISE NOTICE 'Vendedor: % -> %', registro.vend_id , contar_produtos_vendidos(registro.vend_id);
     END LOOP; 
END $$;