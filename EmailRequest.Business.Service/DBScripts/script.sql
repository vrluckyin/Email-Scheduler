/****** Object:  ForeignKey [FK_EmailRequest_List_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_List_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]'))
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [FK_EmailRequest_List_EmailRequest_Lookup_UnitType]
GO
/****** Object:  ForeignKey [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]'))
ALTER TABLE [dbo].[EmailRequest_List_Fail] DROP CONSTRAINT [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]
GO
/****** Object:  ForeignKey [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]'))
ALTER TABLE [dbo].[EmailRequest_List_Success] DROP CONSTRAINT [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]
GO
/****** Object:  StoredProcedure [dbo].[OnBeforeSend]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OnBeforeSend]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[OnBeforeSend]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Complete]    Script Date: 07/15/2011 18:37:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Complete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Complete]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Create]    Script Date: 07/15/2011 18:37:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Create]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Create]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Error]    Script Date: 07/15/2011 18:37:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Error]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Error]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Daily]    Script Date: 07/15/2011 18:37:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Daily]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Daily]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Date]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Date]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Date]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Hourly]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Hourly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Hourly]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Monthly]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Monthly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Monthly]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Weekly]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Weekly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Weekly]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Yearly]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Yearly]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Read_Yearly]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetAttachmentList]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetAttachmentList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetAttachmentList]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetEmailBody]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetEmailBody]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetEmailBody]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetEmailSubject]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetEmailSubject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetEmailSubject]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToDoNotSend]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToDoNotSend]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetToDoNotSend]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToList]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetToList]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToSend]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToSend]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_SetToSend]
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Success]    Script Date: 07/15/2011 18:37:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Success]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmailRequest_Success]
GO
/****** Object:  Table [dbo].[EmailRequest_List]    Script Date: 07/15/2011 18:37:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_List_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]'))
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [FK_EmailRequest_List_EmailRequest_Lookup_UnitType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Email_List_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [DF_Email_List_Id]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Email_List_SendStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [DF_Email_List_SendStatus]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_EmailRequest_List_TrialCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [DF_EmailRequest_List_TrialCount]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_EmailRequest_List_RepeatCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List] DROP CONSTRAINT [DF_EmailRequest_List_RepeatCount]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]') AND type in (N'U'))
DROP TABLE [dbo].[EmailRequest_List]
GO
/****** Object:  Table [dbo].[EmailRequest_List_Fail]    Script Date: 07/15/2011 18:37:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]'))
ALTER TABLE [dbo].[EmailRequest_List_Fail] DROP CONSTRAINT [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Email_FailList_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List_Fail] DROP CONSTRAINT [DF_Email_FailList_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]') AND type in (N'U'))
DROP TABLE [dbo].[EmailRequest_List_Fail]
GO
/****** Object:  Table [dbo].[EmailRequest_List_Success]    Script Date: 07/15/2011 18:37:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]'))
ALTER TABLE [dbo].[EmailRequest_List_Success] DROP CONSTRAINT [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Email_SuccessList_Id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EmailRequest_List_Success] DROP CONSTRAINT [DF_Email_SuccessList_Id]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]') AND type in (N'U'))
DROP TABLE [dbo].[EmailRequest_List_Success]
GO
/****** Object:  Table [dbo].[EmailRequest_Lookup_Status]    Script Date: 07/15/2011 18:37:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Lookup_Status]') AND type in (N'U'))
DROP TABLE [dbo].[EmailRequest_Lookup_Status]
GO
/****** Object:  Table [dbo].[EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Lookup_UnitType]') AND type in (N'U'))
DROP TABLE [dbo].[EmailRequest_Lookup_UnitType]
GO
/****** Object:  Table [dbo].[EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Lookup_UnitType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailRequest_Lookup_UnitType](
	[Id] [int] NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_EmailRequest_Lookup_UnitType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmailRequest_Lookup_Status]    Script Date: 07/15/2011 18:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Lookup_Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailRequest_Lookup_Status](
	[Id] [int] NOT NULL,
	[EmailStatus] [varchar](50) NULL,
 CONSTRAINT [PK_EmailRequest_Lookup_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailRequest_List_Success]    Script Date: 07/15/2011 18:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailRequest_List_Success](
	[Id] [uniqueidentifier] NOT NULL,
	[RequestId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Email_SuccessList_Id]  DEFAULT (newid()),
	[ToList] [ntext] NOT NULL,
	[EmailSubject] [nvarchar](500) NOT NULL,
	[EmailBody] [ntext] NULL,
	[EmailStatus] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[ScheduleUnitId] [int] NOT NULL,
	[ScheduleOn] [nvarchar](50) NOT NULL,
	[AttachmentList] [ntext] NULL,
	[TrialCount] [int] NULL,
	[RepeatCount] [int] NULL,
	[SentDate] [datetime] NULL,
 CONSTRAINT [PK_EmailRequest_SuccessList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EmailRequest_List_Success', N'COLUMN',N'EmailStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=new, -1=error, 2=success,3=in process' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmailRequest_List_Success', @level2type=N'COLUMN',@level2name=N'EmailStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EmailRequest_List_Success', N'COLUMN',N'ScheduleUnitId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1= Second,2=Minute,3=Hours,4=Day,5=Month,6=Quarter,7=Year,8=Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmailRequest_List_Success', @level2type=N'COLUMN',@level2name=N'ScheduleUnitId'
GO
/****** Object:  Table [dbo].[EmailRequest_List_Fail]    Script Date: 07/15/2011 18:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailRequest_List_Fail](
	[Id] [uniqueidentifier] NOT NULL,
	[RequestId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Email_FailList_Id]  DEFAULT (newid()),
	[ToList] [ntext] NOT NULL,
	[EmailSubject] [nvarchar](500) NOT NULL,
	[EmailBody] [ntext] NULL,
	[EmailStatus] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[ScheduleUnitId] [int] NOT NULL,
	[ScheduleOn] [nvarchar](50) NOT NULL,
	[AttachmentList] [ntext] NULL,
	[TrialCount] [int] NULL,
	[RepeatCount] [int] NULL,
	[SentDate] [datetime] NULL,
 CONSTRAINT [PK_EmailRequest_FailList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmailRequest_List]    Script Date: 07/15/2011 18:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmailRequest_List](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Email_List_Id]  DEFAULT (newid()),
	[ToList] [ntext] NOT NULL,
	[EmailSubject] [nvarchar](500) NOT NULL,
	[EmailBody] [ntext] NULL,
	[EmailStatus] [int] NOT NULL CONSTRAINT [DF_Email_List_SendStatus]  DEFAULT ((0)),
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[ScheduleUnitId] [int] NOT NULL,
	[ScheduleOn] [varchar](50) NOT NULL,
	[AttachmentList] [text] NULL,
	[TrialCount] [int] NULL CONSTRAINT [DF_EmailRequest_List_TrialCount]  DEFAULT ((0)),
	[RepeatCount] [int] NULL CONSTRAINT [DF_EmailRequest_List_RepeatCount]  DEFAULT ((1)),
	[SentDate] [datetime] NULL,
	[BeforeSend] [varchar](500) NULL,
	[AfterSend] [varchar](500) NULL,
	[OnError] [varchar](500) NULL,
	[OnComplete] [varchar](500) NULL,
	[OnTrialComplete] [varchar](500) NULL,
 CONSTRAINT [PK_Email_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EmailRequest_List', N'COLUMN',N'EmailStatus'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' -1=error, 0=new,1=in process, 100=success' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmailRequest_List', @level2type=N'COLUMN',@level2name=N'EmailStatus'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'EmailRequest_List', N'COLUMN',N'ScheduleUnitId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1= Second,2=Minute,3=Hours,4=Day,5=Month,6=Quarter,7=Year,8=Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmailRequest_List', @level2type=N'COLUMN',@level2name=N'ScheduleUnitId'
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Success]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Success]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Update the status
-- =============================================
*/
CREATE PROCEDURE [dbo].[EmailRequest_Success]
	@Id UNIQUEIDENTIFIER
	,@ScheduleUnitId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO EmailRequest_List_Success
		(
			Id
			,RequestId
			,ToList
			,EmailSubject
			,EmailBody
			,EmailStatus
			,CreateDate
			,UpdateDate
			,ScheduleUnitId
			,ScheduleOn
			,AttachmentList
			,TrialCount
			,RepeatCount
			,SentDate
		)
		SELECT
			NEWID()
			,Id
			,ToList
			,EmailSubject
			,EmailBody
			,100 --success
			,CreateDate
			,GETDATE()
			,ScheduleUnitId
			,ScheduleOn
			,AttachmentList
			,TrialCount
			,RepeatCount
			,SentDate
		FROM EmailRequest_List 
		WHERE Id=@Id	
	
	IF EXISTS(SELECT * FROM EmailRequest_List WHERE Id=@Id AND RepeatCount=1)
		BEGIN
			DELETE FROM EmailRequest_List WHERE Id=@Id
		END
	ELSE
		BEGIN
			UPDATE EmailRequest_List SET EmailStatus=0,RepeatCount=RepeatCount-1,SentDate=GETDATE()
			WHERE Id=@Id
		END
	
	DECLARE @Query NVARCHAR(500)
	SELECT @Query=AfterSend FROM EmailRequest_List WHERE Id=@Id
	IF LEN(ISNULL(@Query,''''))>0
	BEGIN
		DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@Id)+''''''''
		SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
		EXEC(@Query)
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToSend]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToSend]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetToSend]
	@EmailRequestId UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET EmailStatus = 0
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToList]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetToList]
	@EmailRequestId UNIQUEIDENTIFIER
	,@ToList NTEXT
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET ToList = @ToList
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetToDoNotSend]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetToDoNotSend]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetToDoNotSend]
	@EmailRequestId UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET EmailStatus = -100
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetEmailSubject]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetEmailSubject]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetEmailSubject]
	@EmailRequestId UNIQUEIDENTIFIER
	,@EmailSubject NVARCHAR(500)
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET EmailSubject = @EmailSubject
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetEmailBody]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetEmailBody]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetEmailBody]
	@EmailRequestId UNIQUEIDENTIFIER
	,@EmailBody NTEXT
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET EmailBody = @EmailBody
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_SetAttachmentList]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_SetAttachmentList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EmailRequest_SetAttachmentList]
	@EmailRequestId UNIQUEIDENTIFIER
	,@AttachmentList TEXT
AS
BEGIN
	SET NOCOUNT ON;

    UPDATE req SET AttachmentList = @AttachmentList
	FROM EmailRequest_List req
	WHERE req.Id = @EmailRequestId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Yearly]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Yearly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching yearly email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Yearly
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Yearly]
	
AS
BEGIN
	DECLARE @CurrentDate DATETIME = GETDATE()
	DECLARE @YearlyUnit INT = 5
	DECLARE @YearlyUnitData INT = DATEPART (YEAR,GETDATE())
	DECLARE @DayUnitData INT = DATEPART (DAY,GETDATE())
	DECLARE @MonthUnitData INT = DATEPART (MONTH,GETDATE())
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)
	
	INSERT INTO @EmailRequestIdList
	SELECT Id ,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @YearlyUnit) 
			AND
		(
			(EmailStatus=0 AND @MonthUnitData = 1 AND @DayUnitData=1) -- every new year
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	ORDER BY ScheduleUnitId 

	--UPDATE req SET EmailStatus = 1
	--FROM EmailRequest_List req
	--INNER JOIN @EmailRequestIdList temp 
	--ON req.Id = temp.Id

	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
			
			SET @i=@i+1
		END
	
	SentForEmail:
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Weekly]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Weekly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching weekly email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Weekly
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Weekly]
	
AS
BEGIN
	DECLARE @CurrentDate DATETIME = GETDATE()
	DECLARE @WeeklyUnit INT = 3
	DECLARE @WeeklyUnitData INT = DATEPART (WEEKDAY,GETDATE())
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)
	
	INSERT INTO @EmailRequestIdList
	SELECT Id ,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber 
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @WeeklyUnit) 
			AND
		(
			(EmailStatus=0 AND @WeeklyUnitData = 1)
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	ORDER BY ScheduleUnitId 

	--UPDATE req SET EmailStatus = 1
	--FROM EmailRequest_List req
	--INNER JOIN @EmailRequestIdList temp 
	--ON req.Id = temp.Id
	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
			
			SET @i=@i+1
		END
	
	SentForEmail:
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Monthly]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Monthly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching monthly email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Monthly
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Monthly]
	
AS
BEGIN
	DECLARE @CurrentDate DATETIME = GETDATE()
	DECLARE @MonthUnit INT = 4
	DECLARE @DayUnitData INT = DATEPART (DAY,GETDATE())
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)

	INSERT INTO @EmailRequestIdList
	SELECT Id ,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber 
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @MonthUnit) 
			AND
		(
			(EmailStatus=0 AND @DayUnitData=1)
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	ORDER BY ScheduleUnitId 

	--UPDATE req SET EmailStatus = 1
	--FROM EmailRequest_List req
	--INNER JOIN @EmailRequestIdList temp 
	--ON req.Id = temp.Id

	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
			
			SET @i=@i+1
		END
	
	SentForEmail:
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Hourly]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Hourly]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching hourly email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Hourly 
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Hourly]
	
AS
BEGIN
	DECLARE @CurrentDate DATETIME = GETDATE()
	DECLARE @HourUnit INT = 1
	DECLARE @MinuteUnitData INT = DATEPART (MINUTE,GETDATE())
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)

	INSERT INTO @EmailRequestIdList
	SELECT Id ,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber 
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @HourUnit) 
			AND
		(
			(EmailStatus=0 AND @MinuteUnitData=0)
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	ORDER BY ScheduleUnitId 

	--UPDATE req SET EmailStatus = 1
	--FROM EmailRequest_List req
	--INNER JOIN @EmailRequestIdList temp 
	--ON req.Id = temp.Id
	
	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
			
		END
	
	SentForEmail:
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Date]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Date]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Date
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Date]
	
AS
BEGIN
	DECLARE @CurrentDate DATETIME = GETDATE()
	
	DECLARE @DateUnit INT = 6
	DECLARE @DateUnitData INT
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)
	
	INSERT INTO @EmailRequestIdList
	SELECT Id,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber 
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @DateUnit) 
			AND
		(
			(EmailStatus=0 AND ( @CurrentDate >= CONVERT(DATETIME,ScheduleOn)))
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	
	ORDER BY ScheduleUnitId 

	--UPDATE req SET EmailStatus = 1
	--FROM EmailRequest_List req
	--INNER JOIN @EmailRequestIdList temp 
	--ON req.Id = temp.Id

	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
		END

	SentForEmail:		
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Read_Daily]    Script Date: 07/15/2011 18:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Read_Daily]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Fetching daily email request records to send emails
-- =============================================
EXEC PMPAxon_EmailRequest_Read_Daily 

EXEC PMPAxon_EmailRequest_Success
*/
CREATE PROCEDURE [dbo].[EmailRequest_Read_Daily]
	@CurrentDate DATETIME = NULL
	,@DayUnitData INT = NULL
	,@HourUnitData INT = NULL
AS
BEGIN
	DECLARE @DayUnit INT = 2
	
	IF @CurrentDate IS NULL SET @CurrentDate = GETDATE()
	IF @HourUnitData IS NULL SET @HourUnitData = DATEPART (HOUR,GETDATE())
	IF @DayUnitData IS NULL SET @DayUnitData = DATEPART (DAY,GETDATE())
	DECLARE @EmailRequestIdList TABLE (Id UNIQUEIDENTIFIER,RowNumber INT)

	INSERT INTO @EmailRequestIdList
	SELECT Id,ROW_NUMBER() OVER(ORDER BY Id) AS RowNumber
	FROM EmailRequest_List
	WHERE 
	(
		(ScheduleUnitId = @DayUnit AND (SentDate IS NULL OR  (@DayUnitData <> DATEPART (DAY,SentDate) ) )) 
			AND
		(
			--(EmailStatus=0 AND @HourUnitData=0)
			(EmailStatus=0 AND CAST(ScheduleOn AS INT) <= @HourUnitData)
				OR
			(EmailStatus = -1 OR EmailStatus = 1) -- error or in process
		)
	)
	ORDER BY ScheduleUnitId 
	
	DECLARE @i INT = 1
	DECLARE @CurrentId UNIQUEIDENTIFIER
	WHILE @i>0
		BEGIN
			SET @CurrentId = NULL
			SELECT @CurrentId=Id FROM @EmailRequestIdList WHERE RowNumber = @i
			SET @i=@i+1	
			IF @CurrentId IS NULL GOTO SentForEmail
			
			UPDATE req SET EmailStatus = 1
			FROM EmailRequest_List req
			WHERE req.Id = @CurrentId
			
			
			DECLARE @Query NVARCHAR(500)
			SELECT @Query=BeforeSend FROM EmailRequest_List WHERE Id=@CurrentId
			IF LEN(ISNULL(@Query,''''))>0
				BEGIN
					DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@CurrentId)+''''''''
					SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
					EXEC(@Query)
				END
		END
	
	SentForEmail:
	SELECT req.* 
	FROM EmailRequest_List req
	INNER JOIN @EmailRequestIdList temp 
	ON req.Id = temp.Id
	WHERE req.EmailStatus <> -100
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Error]    Script Date: 07/15/2011 18:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Error]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Update the status
-- =============================================
*/
CREATE PROCEDURE [dbo].[EmailRequest_Error]
	@Id UNIQUEIDENTIFIER
	,@Message NTEXT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DECLARE @TrialCount INT
	DECLARE @TrialLimit INT = 5
	
	--SELECT @TrialCount = TrialCount FROM EmailRequest_List WHERE Id=@Id
	
	IF EXISTS(SELECT * FROM EmailRequest_List WHERE Id=@Id AND TrialCount=@TrialLimit-1)
		BEGIN
			INSERT INTO EmailRequest_List_Fail
			(
				Id
				,ToList
				,EmailSubject
				,EmailBody
				,EmailStatus
				,CreateDate
				,UpdateDate
				,ScheduleUnitId
				,ScheduleOn
				,AttachmentList
				,TrialCount
				,RepeatCount
			)
			SELECT
				Id
				,ToList
				,EmailSubject
				,EmailBody
				,-2
				,CreateDate
				,GETDATE()
				,ScheduleUnitId
				,ScheduleOn
				,AttachmentList
				,@TrialLimit
				,RepeatCount
			FROM EmailRequest_List 
			WHERE Id=@Id				
			
			DELETE FROM EmailRequest_List WHERE Id=@Id
			
			DECLARE @Query1 NVARCHAR(500)
			SELECT @Query1=OnTrialComplete FROM EmailRequest_List WHERE Id=@Id
			IF LEN(ISNULL(@Query1,''''))>0
			BEGIN
				DECLARE @IdChar1 NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@Id)+''''''''
				SELECT @Query1=REPLACE(LOWER(@Query1),''{id}'',@IdChar1)
				EXEC(@Query1)
			END
			
		END
	ELSE
		BEGIN
			UPDATE EmailRequest_List 
			SET EmailStatus = -1 , TrialCount = TrialCount+1
			WHERE Id=@Id
			
			DECLARE @Query2 NVARCHAR(500)
			SELECT @Query2=OnError FROM EmailRequest_List WHERE Id=@Id
			IF LEN(ISNULL(@Query2,''''))>0
			BEGIN
				DECLARE @IdChar2 NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@Id)+''''''''
				SELECT @Query2=REPLACE(LOWER(@Query2),''{id}'',@IdChar2)
				EXEC(@Query2)
			END
		END
		
	
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Create]    Script Date: 07/15/2011 18:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Create]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Creating email request
-- =============================================
*/
CREATE PROCEDURE [dbo].[EmailRequest_Create]
	@ToList NTEXT
	,@EmailSubject NVARCHAR(500)
	,@EmailBody NTEXT
	,@ScheduleUnitId INT
	,@ScheduleOn VARCHAR(50)
	,@RepeatCount INT
	,@AttachmentList TEXT = NULL
	,@BeforeSend VARCHAR(500)
	,@AfterSend VARCHAR(500)
	,@OnError VARCHAR(500)
	,@OnComplete VARCHAR(500)
	,@OnTrialComplete VARCHAR(500)
	,@EmailRequestId UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @EmailRequestId = NEWID()
	INSERT INTO EmailRequest_List
	(
		Id
		,ToList
		,EmailSubject
		,EmailBody
		,EmailStatus
		,CreateDate
		,UpdateDate
		,ScheduleUnitId
		,ScheduleOn
		,AttachmentList
		,RepeatCount
		,BeforeSend
		,AfterSend
		,OnError
		,OnComplete
		,OnTrialComplete
	)
    VALUES
    (
		@EmailRequestId
		,@ToList
		,@EmailSubject
		,@EmailBody
		,0 -- New email
		,GETDATE()
		,GETDATE()
		,@ScheduleUnitId
		,@ScheduleOn
		,@AttachmentList
		,@RepeatCount
		,@BeforeSend
		,@AfterSend
		,@OnError
		,@OnComplete
		,@OnTrialComplete
    )
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmailRequest_Complete]    Script Date: 07/15/2011 18:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailRequest_Complete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
-- =============================================
-- Author:		Vipul Patel
-- Create date: 20110517
-- Description:	Update the status
-- =============================================
*/
CREATE PROCEDURE [dbo].[EmailRequest_Complete]
	@Id UNIQUEIDENTIFIER
AS
BEGIN
		
	DELETE FROM EmailRequest_List WHERE Id=@Id	
	DECLARE @Query NVARCHAR(500)
	SELECT @Query=OnComplete FROM EmailRequest_List WHERE Id=@Id
	IF LEN(ISNULL(@Query,''''))>0
	BEGIN
		DECLARE @IdChar NVARCHAR(40) =''''''''+ CONVERT(NVARCHAR(40),@Id)+''''''''
		SELECT @Query=REPLACE(LOWER(@Query),''{id}'',@IdChar)
		EXEC(@Query)
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[OnBeforeSend]    Script Date: 07/15/2011 18:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OnBeforeSend]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[OnBeforeSend]
	@EmailRequestId UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;
    --EXEC EmailRequest_SetToDoNotSend @EmailRequestId
    EXEC EmailRequest_SetToSend @EmailRequestId
    EXEC EmailRequest_SetEmailSubject @EmailRequestId , ''Testing message''
    EXEC EmailRequest_SetEmailBody @EmailRequestId , ''lal llla lalla''
END
' 
END
GO
/****** Object:  ForeignKey [FK_EmailRequest_List_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_List_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]'))
ALTER TABLE [dbo].[EmailRequest_List]  WITH CHECK ADD  CONSTRAINT [FK_EmailRequest_List_EmailRequest_Lookup_UnitType] FOREIGN KEY([ScheduleUnitId])
REFERENCES [dbo].[EmailRequest_Lookup_UnitType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_List_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List]'))
ALTER TABLE [dbo].[EmailRequest_List] CHECK CONSTRAINT [FK_EmailRequest_List_EmailRequest_Lookup_UnitType]
GO
/****** Object:  ForeignKey [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]'))
ALTER TABLE [dbo].[EmailRequest_List_Fail]  WITH CHECK ADD  CONSTRAINT [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType] FOREIGN KEY([ScheduleUnitId])
REFERENCES [dbo].[EmailRequest_Lookup_UnitType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Fail]'))
ALTER TABLE [dbo].[EmailRequest_List_Fail] CHECK CONSTRAINT [FK_EmailRequest_FailList_EmailRequest_Lookup_UnitType]
GO
/****** Object:  ForeignKey [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]    Script Date: 07/15/2011 18:37:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]'))
ALTER TABLE [dbo].[EmailRequest_List_Success]  WITH CHECK ADD  CONSTRAINT [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType] FOREIGN KEY([ScheduleUnitId])
REFERENCES [dbo].[EmailRequest_Lookup_UnitType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmailRequest_List_Success]'))
ALTER TABLE [dbo].[EmailRequest_List_Success] CHECK CONSTRAINT [FK_EmailRequest_SuccessList_EmailRequest_Lookup_UnitType]
GO
