﻿
CREATE PROCEDURE [dbo].[app_Programs_Insert] (
	@AdminName VARCHAR(50),
	@Title VARCHAR(50),
	@TabName VARCHAR(20),
	@POrder INT,
	@IsActive BIT,
	@IsHidden BIT,
	@StartDate DATETIME,
	@EndDate DATETIME,
	@MaxAge INT,
	@MaxGrade INT,
	@LoggingStart DATETIME,
	@LoggingEnd DATETIME,
	@ParentalConsentFlag BIT,
	@ParentalConsentText TEXT,
	@PatronReviewFlag BIT,
	@RequireBookDetails BIT,
	@LogoutURL VARCHAR(150),
	@ProgramGameID INT,
	@HTML1 TEXT,
	@HTML2 TEXT,
	@HTML3 TEXT,
	@HTML4 TEXT,
	@HTML5 TEXT,
	@HTML6 TEXT,
	@BannerImage VARCHAR(150),
	@RegistrationBadgeID INT,
	@CompletionPoints INT = 0,
	@LastModUser VARCHAR(50),
	@AddedDate DATETIME,
	@AddedUser VARCHAR(50),
	@LastModDate DATETIME,
	@TenID INT = 0,
	@FldInt1 INT = 0,
	@FldInt2 INT = 0,
	@FldInt3 INT = 0,
	@FldBit1 BIT = 0,
	@FldBit2 BIT = 0,
	@FldBit3 BIT = 0,
	@FldText1 TEXT = '',
	@FldText2 TEXT = '',
	@FldText3 TEXT = '',
	@PreTestID INT = 0,
	@PostTestID INT = 0,
	@PreTestMandatory INT = 0,
	@PretestEndDate DATETIME,
	@PostTestStartDate DATETIME,
	@GoalDefault INT = 0,
	@GoalMin INT = 0,
	@GoalMax INT = 0,
	@GoalIntervalId INT = 0,
	@HideSchoolInRegistration BIT = 0,
	@PID INT OUTPUT
	)
AS
BEGIN
	INSERT INTO Programs (
		AdminName,
		Title,
		TabName,
		POrder,
		IsActive,
		IsHidden,
		StartDate,
		EndDate,
		MaxAge,
		MaxGrade,
		LoggingStart,
		LoggingEnd,
		ParentalConsentFlag,
		ParentalConsentText,
		PatronReviewFlag,
		RequirebookDetails,
		LogoutURL,
		ProgramGameID,
		HTML1,
		HTML2,
		HTML3,
		HTML4,
		HTML5,
		HTML6,
		BannerImage,
		RegistrationBadgeID,
		CompletionPoints,
		LastModUser,
		AddedDate,
		AddedUser,
		LastModDate,
		TenID,
		FldInt1,
		FldInt2,
		FldInt3,
		FldBit1,
		FldBit2,
		FldBit3,
		FldText1,
		FldText2,
		FldText3,
		PreTestID,
		PostTestID,
		PreTestMandatory,
		PretestEndDate,
		PostTestStartDate,
		GoalDefault,
		GoalMin,
		GoalMax,
		GoalIntervalId,
		HideSchoolInRegistration
		)
	VALUES (
		@AdminName,
		@Title,
		@TabName,
		(
			SELECT isnull(Max(POrder), 0) + 1
			FROM Programs
			),
		@IsActive,
		@IsHidden,
		@StartDate,
		@EndDate,
		@MaxAge,
		@MaxGrade,
		@LoggingStart,
		@LoggingEnd,
		@ParentalConsentFlag,
		@ParentalConsentText,
		@PatronReviewFlag,
		@RequireBookDetails,
		@LogoutURL,
		@ProgramGameID,
		@HTML1,
		@HTML2,
		@HTML3,
		@HTML4,
		@HTML5,
		@HTML6,
		@BannerImage,
		@RegistrationBadgeID,
		@CompletionPoints,
		@LastModUser,
		@AddedDate,
		@AddedUser,
		@LastModDate,
		@TenID,
		@FldInt1,
		@FldInt2,
		@FldInt3,
		@FldBit1,
		@FldBit2,
		@FldBit3,
		@FldText1,
		@FldText2,
		@FldText3,
		@PreTestID,
		@PostTestID,
		@PreTestMandatory,
		@PretestEndDate,
		@PostTestStartDate,
		@GoalDefault,
		@GoalMin,
		@GoalMax,
		@GoalIntervalId,
		@HideSchoolInRegistration
		)

	SELECT @PID = SCOPE_IDENTITY()
END
