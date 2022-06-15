
select * from TypeOfVisitor
select * from SMSEMAILDATADOWNLOADLOG  
select * from DISTRIBUELECVISITOR order by id 
  

CREATE TABLE [SMSEMAILDATADOWNLOADLOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageNAME] [nvarchar](50) NULL,
	[USERNAME] [nvarchar](50) NULL,
	[TYPEOFMESSAGE] [nvarchar](50) NULL,
	[StatusMessage] [nvarchar](50) NULL,
	[IP] [varchar](50) NULL,
	[Entry_Date] [varchar](50) NOT NULL DEFAULT (CONVERT([varchar](30),getdate(),(104))),
	[Entry_time] [varchar](50) NOT NULL DEFAULT (CONVERT([varchar](30),getdate(),(114)))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [TypeOfVisitor]    Script Date: 9/23/2021 12:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [TypeOfVisitor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Prefix] [varchar](10) NOT NULL,
	[SMSSent] [varchar](5) NOT NULL DEFAULT ('1'),
	[EmailSent] [varchar](5) NOT NULL DEFAULT ('1')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [VISITORDATA2]    Script Date: 9/23/2021 12:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

 
   
CREATE TABLE [DISTRIBUELECVISITOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegID] [varchar](max) NOT NULL,
	[Title] [varchar](max) NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,	
	[CompanyName] [varchar](max) NULL,
	[Designation] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PostalZip] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[PhoneCountry_Code] [varchar](max) NULL,
	[PhoneCity_Code] [varchar](max) NULL,
	[Phone_number] [varchar](max) NULL,
	[Country_Code] [varchar](max) NULL,
	[Mobile_number] [varchar](max) NULL,
	[Email] [varchar](max) NULL,	
	[Website] [varchar](max) NULL,
	[Q1natureoforganisation] [varchar](max) NULL,
	[Q1othernatureoforganisation] [varchar](max) NULL,
	[Q2_Advance_Distribution_Management_System] [varchar](max) NULL,	
	[Q2_Advance_Energy_Management_System] [varchar](max) NULL,
	[Q2_Building_Solutions_ELV_Building_Management_Fire_Safety] [varchar](max) NULL,
	[Q2_Cables__Accessories] [varchar](max) NULL,
	[Q2_Cables__Communication] [varchar](max) NULL,
	[Q2_Cables__Control] [varchar](max) NULL,
	[Q2_Cables__House_wiring] [varchar](max) NULL,
	[Q2_Cables__Instrumentation] [varchar](max) NULL,
	[Q2_Cables__Power_HT_and_LT] [varchar](max) NULL,
	[Q2_Cables__Specialty] [varchar](max) NULL,
	[Q2_Capacitors__Electrolytic] [varchar](max) NULL,
	[Q2_Capacitors__Power] [varchar](max) NULL,
	[Q2_Conductors_and_Accessories] [varchar](max) NULL,
	[Q2_Control_and_Relay_and_Instrumentation_Panels] [varchar](max) NULL,
	[Q2_Design_and_Consultancy] [varchar](max) NULL,
	[Q2_Energy_Meters] [varchar](max) NULL,
	[Q2_Engineering_Projects] [varchar](max) NULL,
	[Q2_Generators_Alternators_AC_and_DC] [varchar](max) NULL,
	[Q2_Geographical_Information_System] [varchar](max) NULL,
	[Q2_Grid_Analytics] [varchar](max) NULL,
	[Q2_Industrial_Control_and_Automation_Systems] [varchar](max) NULL,
	[Q2_Instrument_Transformers_Current] [varchar](max) NULL,
	[Q2_Instrument_Transformers_CVT] [varchar](max) NULL,
	[Q2_Instrument_Transformers_Voltage] [varchar](max) NULL,
	[Q2_Instruments_Sensing_Measuring_Indicating_Testing_etc] [varchar](max) NULL,
	[Q2_Insulators_Composite] [varchar](max) NULL,
	[Q2_Insulators_Polymeric] [varchar](max) NULL,
	[Q2_Insulators_Porcelain] [varchar](max) NULL,
	[Q2_Lighting_and_Lighting_Accessories] [varchar](max) NULL,
	[Q2_Motors_AC] [varchar](max) NULL,
	[Q2_Motors_DC] [varchar](max) NULL,
	[Q2_Motors_Flame_Proof] [varchar](max) NULL,
	[Q2_Power_Electronics_UPS_Variable_Speed_AC_DC_Drives] [varchar](max) NULL,
	[Q2_SCADA] [varchar](max) NULL,
	[Q2_Stamping_and_Laminations] [varchar](max) NULL,
	[Q2_Surge_Arrestors] [varchar](max) NULL,
	[Q2_Switchgear_and_Controlgear_LV] [varchar](max) NULL,
	[Q2_Switchgear_and_Controlgear_EHV_and_HV] [varchar](max) NULL,
	[Q2_Switchgear_and_Controlgear_MV] [varchar](max) NULL,
	[Q2_TELECOM_Equipment] [varchar](max) NULL,
	[Q2_Transformers__Distribution] [varchar](max) NULL,
	[Q2_Transformers__Power] [varchar](max) NULL,
	[Q2_Transmission_Line_Accessories_and_Hardware] [varchar](max) NULL,
	[Q2_Transmission_Line_Towers] [varchar](max) NULL,
	[Q2_Winding_Wires] [varchar](max) NULL,
	[Q2_Other_Products_Please_Specify] [varchar](max) NULL,
	[IP] [varchar](max) NULL,
	[Entry_Date] [varchar](50) NOT NULL DEFAULT CONVERT(VARCHAR(25), CURRENT_TIMESTAMP, 103),
	[Entry_time] [varchar](50) NOT NULL DEFAULT CONVERT(VARCHAR(25), CURRENT_TIMESTAMP),
	[ReferenceId] [varchar](50) NULL
) ON [PRIMARY]
 
   


GO
SET ANSI_PADDING OFF
GO

 

SET IDENTITY_INSERT [TypeOfVisitor] ON 

INSERT [TypeOfVisitor] ([ID], [Category], [Prefix], [SMSSent], [EmailSent]) VALUES (1, N'VISITOR', N'DPR', N'1', N'1')

SET IDENTITY_INSERT [TypeOfVisitor] OFF

 