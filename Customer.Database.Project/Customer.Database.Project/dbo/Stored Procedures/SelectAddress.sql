CREATE PROCEDURE SelectAddress 
	@AddressID int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Addresses WHERE AddressID = @AddressID
END