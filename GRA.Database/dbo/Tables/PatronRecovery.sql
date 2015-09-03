﻿CREATE TABLE [dbo].[PatronRecovery]
	(
	[Token] nvarchar(50) NOT NULL,
	[PID] int NOT NULL,
	[Generated] datetime NOT NULL
	CONSTRAINT [PK_PatronRecovery] PRIMARY KEY CLUSTERED ([Token]) WITH (
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON
		) ON [PRIMARY]
	) ON [PRIMARY]