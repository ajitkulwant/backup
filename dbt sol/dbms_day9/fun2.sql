DROP FUNCTION IF EXISTS fun_diff;

DELIMITER $$
CREATE FUNCTION fun_diff(p_date DATE)
RETURNS INT

BEGIN 
	DECLARE v_res INT;
	SELECT TIMESTAMPDIFF(YEAR, p_date,now()) INTO v_res;	
	RETURN v_res;
END
$$
DELIMITER ;


