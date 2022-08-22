CREATE PROCEDURE SelectCustomer
	@CustomerID int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Customer WHERE CustomerID = @CustomerID
END