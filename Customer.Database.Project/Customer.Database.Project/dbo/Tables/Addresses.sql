CREATE TABLE [dbo].[Addresses] (
    [AddressID]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (10)  NOT NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [PostalCode]   NVARCHAR (6)   NOT NULL,
    [StateName]    NVARCHAR (20)  NOT NULL,
    [Country]      NVARCHAR (30)  NOT NULL,
    PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK ([Country]='canada' OR [Country]='Canada' OR [Country]='united states' OR [Country]='United States' OR [Country]='USA'),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID])
);

