USE [dheltassys]
GO
/****** Object:  Table [dbo].[company]    Script Date: 02/04/2014 16:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[company_id] [int] NOT NULL,
	[company_name] [varchar](50) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[ip_address] [varchar](20) NOT NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[position]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[position](
	[position_id] [int] NOT NULL,
	[position_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[offenseType]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offenseType](
	[offense_type_id] [int] NOT NULL,
	[offense_type] [nvarchar](50) NOT NULL,
	[offense_info] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_offenseType] PRIMARY KEY CLUSTERED 
(
	[offense_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leaveType]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[leaveType](
	[leave_type_id] [int] NOT NULL,
	[leave_type] [varchar](50) NOT NULL,
	[leave_info] [varchar](50) NOT NULL,
 CONSTRAINT [PK_leaveType] PRIMARY KEY CLUSTERED 
(
	[leave_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift](
	[shift_id] [int] NOT NULL,
	[shift_type] [varchar](50) NULL,
	[shift_info] [varchar](50) NULL,
	[from_time] [time](7) NULL,
	[to_time] [time](7) NULL,
 CONSTRAINT [PK_shift] PRIMARY KEY CLUSTERED 
(
	[shift_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[companyTerminal]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companyTerminal](
	[terminal_id] [int] NOT NULL,
	[company_id] [int] NULL,
	[terminal] [varchar](10) NULL,
 CONSTRAINT [PK_companyTerminal] PRIMARY KEY CLUSTERED 
(
	[terminal_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[emp_id] [int] NOT NULL,
	[password] [nvarchar](15) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NOT NULL,
	[position_id] [int] NOT NULL,
	[company_id] [int] NOT NULL,
	[email_address] [varchar](50) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[primary_contact_number] [numeric](18, 0) NOT NULL,
	[alternative_contact_number] [numeric](18, 0) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[birthdate] [date] NOT NULL,
	[sss_number] [int] NOT NULL,
	[philhealth_number] [int] NOT NULL,
	[biometric_code] [int] NOT NULL,
	[employee_status] [bit] NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[benefit]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[benefit](
	[benefit_id] [int] NOT NULL,
	[benefit_type] [varchar](50) NULL,
	[benefit_info] [varchar](50) NULL,
	[company_id] [int] NULL,
 CONSTRAINT [PK_benefit] PRIMARY KEY CLUSTERED 
(
	[benefit_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[auditTrail]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auditTrail](
	[emp_audit_trail] [int] NOT NULL,
	[emp_id] [int] NULL,
	[process] [nvarchar](50) NULL,
	[date] [date] NULL,
	[time_triggered] [time](7) NULL,
 CONSTRAINT [PK_auditTrail] PRIMARY KEY CLUSTERED 
(
	[emp_audit_trail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[allowableLeave]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allowableLeave](
	[allowable_leave_id] [int] NOT NULL,
	[emp_id] [int] NULL,
	[leave_type_id] [int] NULL,
	[allowable_leave] [numeric](18, 0) NULL,
 CONSTRAINT [PK_allowableLeave] PRIMARY KEY CLUSTERED 
(
	[allowable_leave_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] NOT NULL,
	[admin_emp_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leaveRequest]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leaveRequest](
	[leave_req_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[leave_type_id] [int] NOT NULL,
	[date_from] [date] NOT NULL,
	[date_to] [date] NOT NULL,
	[reason] [nvarchar](100) NULL,
	[admin_emp_id] [int] NULL,
	[request_status] [bit] NULL,
 CONSTRAINT [PK_leaveRequest] PRIMARY KEY CLUSTERED 
(
	[leave_req_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evaluation]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[evaluation](
	[evaluation_id] [int] NOT NULL,
	[hr_emp_id] [int] NOT NULL,
	[questions] [varchar](100) NOT NULL,
 CONSTRAINT [PK_evaluation] PRIMARY KEY CLUSTERED 
(
	[evaluation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empTransfer]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empTransfer](
	[transfer_id] [int] NOT NULL,
	[emp_transfer_id] [int] NOT NULL,
	[date_transfer] [date] NOT NULL,
	[company_transfer_id] [int] NOT NULL,
	[admin_emp_id] [int] NOT NULL,
	[status] [varbinary](50) NOT NULL,
	[decision] [bit] NOT NULL,
 CONSTRAINT [PK_empTransfer] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empShift]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empShift](
	[emp_shift_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[shift_id] [int] NOT NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NOT NULL,
 CONSTRAINT [PK_empShift] PRIMARY KEY CLUSTERED 
(
	[emp_shift_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empOffense]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empOffense](
	[offense_emp_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[offense_type_id] [int] NOT NULL,
	[filed_emp_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[statement] [varchar](100) NOT NULL,
	[evaluee_admin_id] [int] NOT NULL,
	[decision] [bit] NOT NULL,
 CONSTRAINT [PK_empOffense] PRIMARY KEY CLUSTERED 
(
	[offense_emp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empBenefit]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empBenefit](
	[emp_benefit_id] [int] NOT NULL,
	[emp_id] [int] NULL,
	[benefit_id] [int] NULL,
	[date_acquired] [date] NULL,
 CONSTRAINT [PK_empBenefit] PRIMARY KEY CLUSTERED 
(
	[emp_benefit_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empAttendance]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empAttendance](
	[attendance_id] [int] NOT NULL,
	[emp_id] [int] NULL,
	[time_in] [time](7) NULL,
	[terminal_in_id] [int] NULL,
	[time_out] [time](7) NULL,
	[terminal_out_id] [int] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_empAttendance] PRIMARY KEY CLUSTERED 
(
	[attendance_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dependent]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dependent](
	[dependent_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[dependent_name] [varchar](50) NULL,
	[contact_number] [numeric](18, 0) NULL,
	[relation] [varchar](50) NULL,
 CONSTRAINT [PK_dependent] PRIMARY KEY CLUSTERED 
(
	[dependent_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proof]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proof](
	[proof_id] [int] NOT NULL,
	[offense_emp_id] [int] NOT NULL,
	[proof] [image] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_proof] PRIMARY KEY CLUSTERED 
(
	[proof_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empEval]    Script Date: 02/04/2014 16:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empEval](
	[emp_eval_id] [int] NOT NULL,
	[evaluation_id] [int] NOT NULL,
	[evaluated_emp_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[answer_type] [int] NOT NULL,
	[ratings] [bit] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_empEval] PRIMARY KEY CLUSTERED 
(
	[emp_eval_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_companyTerminal_company]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[companyTerminal]  WITH CHECK ADD  CONSTRAINT [FK_companyTerminal_company] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([company_id])
GO
ALTER TABLE [dbo].[companyTerminal] CHECK CONSTRAINT [FK_companyTerminal_company]
GO
/****** Object:  ForeignKey [FK_employee_company]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_company] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([company_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_company]
GO
/****** Object:  ForeignKey [FK_employee_position]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_position] FOREIGN KEY([position_id])
REFERENCES [dbo].[position] ([position_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_position]
GO
/****** Object:  ForeignKey [FK_benefit_company]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[benefit]  WITH CHECK ADD  CONSTRAINT [FK_benefit_company] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([company_id])
GO
ALTER TABLE [dbo].[benefit] CHECK CONSTRAINT [FK_benefit_company]
GO
/****** Object:  ForeignKey [FK_auditTrail_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[auditTrail]  WITH CHECK ADD  CONSTRAINT [FK_auditTrail_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[auditTrail] CHECK CONSTRAINT [FK_auditTrail_employee]
GO
/****** Object:  ForeignKey [FK_allowableLeave_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[allowableLeave]  WITH CHECK ADD  CONSTRAINT [FK_allowableLeave_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[allowableLeave] CHECK CONSTRAINT [FK_allowableLeave_employee]
GO
/****** Object:  ForeignKey [FK_allowableLeave_leaveType]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[allowableLeave]  WITH CHECK ADD  CONSTRAINT [FK_allowableLeave_leaveType] FOREIGN KEY([leave_type_id])
REFERENCES [dbo].[leaveType] ([leave_type_id])
GO
ALTER TABLE [dbo].[allowableLeave] CHECK CONSTRAINT [FK_allowableLeave_leaveType]
GO
/****** Object:  ForeignKey [FK_admin_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[admin]  WITH CHECK ADD  CONSTRAINT [FK_admin_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[admin] CHECK CONSTRAINT [FK_admin_employee]
GO
/****** Object:  ForeignKey [FK_leaveRequest_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[leaveRequest]  WITH CHECK ADD  CONSTRAINT [FK_leaveRequest_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[leaveRequest] CHECK CONSTRAINT [FK_leaveRequest_employee]
GO
/****** Object:  ForeignKey [FK_leaveRequest_leaveType]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[leaveRequest]  WITH CHECK ADD  CONSTRAINT [FK_leaveRequest_leaveType] FOREIGN KEY([leave_type_id])
REFERENCES [dbo].[leaveType] ([leave_type_id])
GO
ALTER TABLE [dbo].[leaveRequest] CHECK CONSTRAINT [FK_leaveRequest_leaveType]
GO
/****** Object:  ForeignKey [FK_evaluation_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[evaluation]  WITH CHECK ADD  CONSTRAINT [FK_evaluation_employee] FOREIGN KEY([hr_emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[evaluation] CHECK CONSTRAINT [FK_evaluation_employee]
GO
/****** Object:  ForeignKey [FK_empTransfer_company]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empTransfer]  WITH CHECK ADD  CONSTRAINT [FK_empTransfer_company] FOREIGN KEY([company_transfer_id])
REFERENCES [dbo].[company] ([company_id])
GO
ALTER TABLE [dbo].[empTransfer] CHECK CONSTRAINT [FK_empTransfer_company]
GO
/****** Object:  ForeignKey [FK_empTransfer_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empTransfer]  WITH CHECK ADD  CONSTRAINT [FK_empTransfer_employee] FOREIGN KEY([emp_transfer_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empTransfer] CHECK CONSTRAINT [FK_empTransfer_employee]
GO
/****** Object:  ForeignKey [FK_empTransfer_employee1]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empTransfer]  WITH CHECK ADD  CONSTRAINT [FK_empTransfer_employee1] FOREIGN KEY([admin_emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empTransfer] CHECK CONSTRAINT [FK_empTransfer_employee1]
GO
/****** Object:  ForeignKey [FK_empShift_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empShift]  WITH CHECK ADD  CONSTRAINT [FK_empShift_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empShift] CHECK CONSTRAINT [FK_empShift_employee]
GO
/****** Object:  ForeignKey [FK_empShift_shift]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empShift]  WITH CHECK ADD  CONSTRAINT [FK_empShift_shift] FOREIGN KEY([shift_id])
REFERENCES [dbo].[shift] ([shift_id])
GO
ALTER TABLE [dbo].[empShift] CHECK CONSTRAINT [FK_empShift_shift]
GO
/****** Object:  ForeignKey [FK_empOffense_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empOffense]  WITH CHECK ADD  CONSTRAINT [FK_empOffense_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empOffense] CHECK CONSTRAINT [FK_empOffense_employee]
GO
/****** Object:  ForeignKey [FK_empOffense_employee1]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empOffense]  WITH CHECK ADD  CONSTRAINT [FK_empOffense_employee1] FOREIGN KEY([filed_emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empOffense] CHECK CONSTRAINT [FK_empOffense_employee1]
GO
/****** Object:  ForeignKey [FK_empOffense_offenseType]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empOffense]  WITH CHECK ADD  CONSTRAINT [FK_empOffense_offenseType] FOREIGN KEY([offense_type_id])
REFERENCES [dbo].[offenseType] ([offense_type_id])
GO
ALTER TABLE [dbo].[empOffense] CHECK CONSTRAINT [FK_empOffense_offenseType]
GO
/****** Object:  ForeignKey [FK_empBenefit_benefit]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empBenefit]  WITH CHECK ADD  CONSTRAINT [FK_empBenefit_benefit] FOREIGN KEY([benefit_id])
REFERENCES [dbo].[benefit] ([benefit_id])
GO
ALTER TABLE [dbo].[empBenefit] CHECK CONSTRAINT [FK_empBenefit_benefit]
GO
/****** Object:  ForeignKey [FK_empBenefit_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empBenefit]  WITH CHECK ADD  CONSTRAINT [FK_empBenefit_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empBenefit] CHECK CONSTRAINT [FK_empBenefit_employee]
GO
/****** Object:  ForeignKey [FK_empAttendance_companyTerminal]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empAttendance]  WITH CHECK ADD  CONSTRAINT [FK_empAttendance_companyTerminal] FOREIGN KEY([terminal_in_id])
REFERENCES [dbo].[companyTerminal] ([terminal_id])
GO
ALTER TABLE [dbo].[empAttendance] CHECK CONSTRAINT [FK_empAttendance_companyTerminal]
GO
/****** Object:  ForeignKey [FK_empAttendance_companyTerminal1]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empAttendance]  WITH CHECK ADD  CONSTRAINT [FK_empAttendance_companyTerminal1] FOREIGN KEY([terminal_out_id])
REFERENCES [dbo].[companyTerminal] ([terminal_id])
GO
ALTER TABLE [dbo].[empAttendance] CHECK CONSTRAINT [FK_empAttendance_companyTerminal1]
GO
/****** Object:  ForeignKey [FK_empAttendance_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empAttendance]  WITH CHECK ADD  CONSTRAINT [FK_empAttendance_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empAttendance] CHECK CONSTRAINT [FK_empAttendance_employee]
GO
/****** Object:  ForeignKey [FK_dependent_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[dependent]  WITH CHECK ADD  CONSTRAINT [FK_dependent_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[dependent] CHECK CONSTRAINT [FK_dependent_employee]
GO
/****** Object:  ForeignKey [FK_proof_empOffense]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[proof]  WITH CHECK ADD  CONSTRAINT [FK_proof_empOffense] FOREIGN KEY([offense_emp_id])
REFERENCES [dbo].[empOffense] ([offense_emp_id])
GO
ALTER TABLE [dbo].[proof] CHECK CONSTRAINT [FK_proof_empOffense]
GO
/****** Object:  ForeignKey [FK_empEval_employee]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empEval]  WITH CHECK ADD  CONSTRAINT [FK_empEval_employee] FOREIGN KEY([emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empEval] CHECK CONSTRAINT [FK_empEval_employee]
GO
/****** Object:  ForeignKey [FK_empEval_employee1]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empEval]  WITH CHECK ADD  CONSTRAINT [FK_empEval_employee1] FOREIGN KEY([evaluated_emp_id])
REFERENCES [dbo].[employee] ([emp_id])
GO
ALTER TABLE [dbo].[empEval] CHECK CONSTRAINT [FK_empEval_employee1]
GO
/****** Object:  ForeignKey [FK_empEval_evaluation]    Script Date: 02/04/2014 16:03:16 ******/
ALTER TABLE [dbo].[empEval]  WITH CHECK ADD  CONSTRAINT [FK_empEval_evaluation] FOREIGN KEY([evaluation_id])
REFERENCES [dbo].[evaluation] ([evaluation_id])
GO
ALTER TABLE [dbo].[empEval] CHECK CONSTRAINT [FK_empEval_evaluation]
GO
