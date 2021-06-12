/*Teste da atividade 04 */
INSERT INTO products(prod_id, vend_id, prod_name, prod_price, prod_desc) VALUES('ANV088',1001, 'FIFA 21', 300.99, 'Igual ao fifa 20');
UPDATE products SET prod_name = 'FIFA 20' WHERE prod_id = 'ANV088'
DELETE FROM products WHERE prod_id = 'ANV088';
SELECT * FROM audit_produtos
