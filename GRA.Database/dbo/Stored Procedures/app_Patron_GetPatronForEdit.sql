﻿
CREATE PROCEDURE [dbo].[app_Patron_GetPatronForEdit] @PID INT = 0,
	@TenID INT = NULL
AS
SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

SELECT isNull(p.[PID], 0) AS PID,
	isNull(p.[IsMasterAccount], 0) AS IsMasterAccount,
	isNull(p.MasterAcctPID, 0) AS [MasterAcctPID],
	isNull(p.Username, '') AS [Username],
	isNull(p.Password, '') AS [Password],
	isNull(p.DOB, NULL) AS [DOB],
	isNull(p.Age, '') AS [Age],
	isNull(p.SchoolGrade, '') AS [SchoolGrade],
	isNull(p.ProgID, 0) AS [ProgID],
	isNull(p.FirstName, '') AS [FirstName],
	isNull(p.MiddleName, '') AS [MiddleName],
	isNull(p.LastName, '') AS [LastName],
	isNull(p.Gender, '') AS [Gender],
	isNull(p.EmailAddress, '') AS [EmailAddress],
	isNull(p.PhoneNumber, '') AS [PhoneNumber],
	isNull(p.StreetAddress1, '') AS [StreetAddress1],
	isNull(p.StreetAddress2, '') AS [StreetAddress2],
	isNull(p.City, '') AS [City],
	isNull(p.STATE, '') AS [State],
	isNull(p.ZipCode, '') AS [ZipCode],
	isNull(p.Country, '') AS [Country],
	isNull(p.County, '') AS [County],
	isNull(p.ParentGuardianFirstName, '') AS [ParentGuardianFirstName],
	isNull(p.ParentGuardianLastName, '') AS [ParentGuardianLastName],
	isNull(p.ParentGuardianMiddleName, '') AS [ParentGuardianMiddleName],
	isNull(p.PrimaryLibrary, 0) AS [PrimaryLibrary],
	isNull(p.LibraryCard, '') AS [LibraryCard],
	isNull(p.SchoolName, '') AS [SchoolName],
	isNull(p.District, '') AS [District],
	isNull(p.Teacher, '') AS [Teacher],
	isNull(p.GroupTeamName, '') AS [GroupTeamName],
	isNull(p.SchoolType, '') AS [SchoolType],
	isNull(p.LiteracyLevel1, '') AS [LiteracyLevel1],
	isNull(p.LiteracyLevel2, '') AS [LiteracyLevel2],
	isNull(p.ParentPermFlag, 0) AS [ParentPermFlag],
	isNull(p.Over18Flag, 0) AS [Over18Flag],
	isNull(p.ShareFlag, 0) AS [ShareFlag],
	isNull(p.TermsOfUseflag, 0) AS [TermsOfUseflag],
	isNull(p.Custom1, '') AS [Custom1],
	isNull(p.Custom2, '') AS [Custom2],
	isNull(p.Custom3, '') AS [Custom3],
	isNull(p.Custom4, '') AS [Custom4],
	isNull(p.Custom5, '') AS [Custom5],
	isNull(p.AvatarID, 0) AS [AvatarID],
	isNull(p.RegistrationDate, NULL) AS [RegistrationDate],
	isNull(p.SDistrict, 0) AS [SDistrict],
	isNull(p.DailyGoal, 0) AS [DailyGoal],

	rs.*
FROM dbo.Patron p
RIGHT JOIN RegistrationSettings rs ON p.PID = @PID
WHERE rs.TenID = @TenID
