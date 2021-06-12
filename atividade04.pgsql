/*
• Criar um PROCEDIMENTO para atualizar o preço dos produtos (products).
O id e o preço chegarão por parâmetro. Em uma tabela audit_produtos registrar
o id do produto, o usuário, quando a operação foi executada 
(armazenar a informação de deleção, update e insert). 
Criar a tabela audit_produtos no script. Usar uma TRIGGER para essa operação de registro de log.
*/
CREATE OR REPLACE PROCEDURE atualizarProduto(preco_produto double precision,id_produto character) 
AS $$ 
BEGIN -- Comeca bloco de tratamento de excecoes
UPDATE products SET prod_price = preco_produto WHERE prod_id = id_produto;   
    RAISE NOTICE 'A produto foi atualizado com sucesso!'; 
END; 
$$ LANGUAGE plpgsql;



call atualizarProduto(10.22,'ANV01') 