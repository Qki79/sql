USE sql_store

DELIMITER $$

DROP PROCEDURE IF EXISTS get_customers_by_state;

CREATE PROCEDURE `get_customers_by_state`
(
	state CHAR(2)
)
BEGIN
	IF state IS NULL THEN
    SET state = 'SL';
    END IF;
SELECT *
FROM customers cu
WHERE cu.state=state;

END $$

DELIMITER ;