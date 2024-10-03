DELIMITER $$
CREATE PROCEDURE factorial(
    IN num INT,
    OUT result BIGINT
)
BEGIN
    DECLARE i INT;
    SET result = 1;

    IF num < 0 THEN
        SET result = NULL; 
    ELSE
        SET i = 1;
        WHILE i <= num DO
            SET result = result * i;
            SET i = i + 1;
        END WHILE;
    END IF;
END $$
DELIMITER ;

SET @factorial_result = 0;
CALL factorial(5, @factorial_result);
SELECT @factorial_result AS FactorialResult;