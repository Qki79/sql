USE qki_store;

DROP PROCEDURE IF EXISTS get_customers;
DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
    SELECT *
    FROM customers;
END $$

DELIMITER ;

