CREATE FUNCTION obtenerIdMes (@inDate DATE)
RETURNS INT AS
BEGIN
	DECLARE @idMes INT;

	SET @idMes = (
		SELECT dateID
		FROM dim_date
		WHERE MONTH(@inDate) = MONTH(date)
		AND YEAR(@inDate) = YEAR(date)
	)
	

    RETURN @idMes
END;