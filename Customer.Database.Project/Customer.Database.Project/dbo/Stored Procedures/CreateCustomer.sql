CREATE PROCEDURE CreateCustomer
	@FirstName nvarchar(50), 
	@LastName nvarchar(50),
	@PhoneNumber nvarchar(15),
	@Email nvarchar(50),
	@Notes nvarchar(max),
	@TotalPurchasesAmount money
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Customer(FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
	VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Notes, @TotalPurchasesAmount)
END