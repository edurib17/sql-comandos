CREATE OR REPLACE FUNCTION audit_produtos()
RETURNS TRIGGER 
AS $$
BEGIN
	IF (TG_OP = 'DELETE') THEN
		INSERT INTO audit_produtos VALUES (OLD.prod_id,  user , now(),'D' );
		RETURN OLD;
	ELSIF (TG_OP = 'UPDATE') THEN
		INSERT INTO  audit_produtos VALUES (NEW.prod_id, user ,now(), 'U');
		RETURN NEW;
	ELSIF (TG_OP = 'INSERT') THEN
		INSERT INTO  audit_produtos VALUES (NEW.prod_id, user ,now(), 'I');
		RETURN NEW;
	END IF;
		RETURN NULL;  
		END;$$ 
LANGUAGE plpgsql;