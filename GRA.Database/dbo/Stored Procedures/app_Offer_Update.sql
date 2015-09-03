﻿
--Create the Update Proc
CREATE PROCEDURE [dbo].[app_Offer_Update] (
	@OID INT,
	@isEnabled BIT,
	@AdminName VARCHAR(50),
	@Title VARCHAR(150),
	@ExternalRedirectFlag BIT,
	@RedirectURL VARCHAR(150),
	@MaxImpressions INT,
	@TotalImpressions INT,
	@SerialPrefix VARCHAR(50),
	@ZipCode VARCHAR(5),
	@AgeStart INT,
	@AgeEnd INT,
	@ProgramId INT,
	@BranchId INT,
	@LastModDate DATETIME,
	@LastModUser VARCHAR(50),
	@AddedDate DATETIME,
	@AddedUser VARCHAR(50),
	@TenID INT = 0,
	@FldInt1 INT = 0,
	@FldInt2 INT = 0,
	@FldInt3 INT = 0,
	@FldBit1 BIT = 0,
	@FldBit2 BIT = 0,
	@FldBit3 BIT = 0,
	@FldText1 TEXT = '',
	@FldText2 TEXT = '',
	@FldText3 TEXT = ''
	)
AS
UPDATE Offer
SET isEnabled = @isEnabled,
	AdminName = @AdminName,
	Title = @Title,
	ExternalRedirectFlag = @ExternalRedirectFlag,
	RedirectURL = @RedirectURL,
	MaxImpressions = @MaxImpressions,
	TotalImpressions = @TotalImpressions,
	SerialPrefix = @SerialPrefix,
	ZipCode = @ZipCode,
	AgeStart = @AgeStart,
	AgeEnd = @AgeEnd,
	ProgramId = @ProgramId,
	BranchId = @BranchId,
	LastModDate = @LastModDate,
	LastModUser = @LastModUser,
	AddedDate = @AddedDate,
	AddedUser = @AddedUser,
	TenID = @TenID,
	FldInt1 = @FldInt1,
	FldInt2 = @FldInt2,
	FldInt3 = @FldInt3,
	FldBit1 = @FldBit1,
	FldBit2 = @FldBit2,
	FldBit3 = @FldBit3,
	FldText1 = @FldText1,
	FldText2 = @FldText2,
	FldText3 = @FldText3
WHERE OID = @OID
	AND TenID = @TenID