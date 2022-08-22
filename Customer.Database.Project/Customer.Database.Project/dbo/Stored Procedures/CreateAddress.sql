CREATE PROCEDURE CreateAddress 
	@CustomerID int, 
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressType nvarchar(10),
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@StateName nvarchar(20),
	@Country nvarchar(30)

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Addresses (CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, StateName, Country)
	VALUES (@CustomerID, @AddressLine, @AddressLine2, @AddressType, @City, @PostalCode, @StateName, @Country)
END