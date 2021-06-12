/*Criar o trigger e a relacionar com tabela ** questão 04 */
CREATE TRIGGER audit_produtos
AFTER INSERT OR UPDATE OR DELETE ON products
FOR EACH ROW EXECUTE PROCEDURE audit_produtos();
