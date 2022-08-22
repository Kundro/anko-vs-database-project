CREATE PROCEDURE DeleteCustomer 
	@CustomerID int

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Customer
	WHERE CustomerID = @CustomerID
END