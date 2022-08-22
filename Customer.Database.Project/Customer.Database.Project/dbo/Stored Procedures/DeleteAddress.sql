
CREATE PROCEDURE DeleteAddress 
	@AddressID int

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Addresses
	WHERE AddressID = @AddressID  

END