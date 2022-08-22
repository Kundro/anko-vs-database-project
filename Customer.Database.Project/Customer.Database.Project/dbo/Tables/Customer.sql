CREATE TABLE [dbo].[Customer] (
    [CustomerID]           INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NOT NULL,
    [PhoneNumber]          NVARCHAR (15)  NULL,
    [Email]                NVARCHAR (100) NULL,
    [Notes]                NVARCHAR (MAX) NOT NULL,
    [TotalPurchasesAmount] MONEY          NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CHECK ([Email] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
    CHECK ([PhoneNumber] like '+[1-9]'+replicate('[0-9]',(13)))
);

