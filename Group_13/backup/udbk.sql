SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aadhar_num](
	[enroll_id] [bigint] NOT NULL,
	[aadhar_num] [bigint] NOT NULL,
 CONSTRAINT [PK_aadhar_num] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [complaint_status](
	[complaint_id] [int] NOT NULL,
	[reply] [text] NOT NULL,
	[status] [text] NOT NULL,
 CONSTRAINT [PK_complaint_status] PRIMARY KEY CLUSTERED 
(
	[complaint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [complaints](
	[complaint_id] [int] NOT NULL,
	[aadhar_num] [bigint] NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [bigint] NOT NULL,
	[pincode] [int] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[category] [int] NOT NULL,
	[remarks] [text] NOT NULL,
 CONSTRAINT [PK_complaints] PRIMARY KEY CLUSTERED 
(
	[complaint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [details](
	[aadhar_num] [bigint] NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NULL,
	[last_name] [varchar](50) NOT NULL,
	[gender] [varchar](5) NOT NULL,
	[father_name] [varchar](100) NOT NULL,
	[mother_name] [varchar](100) NULL,
	[date_of_birth] [date] NOT NULL,
	[birthplace] [varchar](50) NULL,
	[phone] [bigint] NOT NULL,
	[email] [varchar](100) NULL,
	[res_address] [varchar](100) NOT NULL,
	[pincode] [int] NOT NULL,
 CONSTRAINT [PK_details] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [document](
	[aadhar_num] [bigint] NOT NULL,
	[proof_type] [varchar](50) NOT NULL,
	[document] [varchar](200) NOT NULL,
 CONSTRAINT [PK_document] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [enroll_centre](
	[centre_id] [int] NOT NULL,
	[centre_name] [varchar](50) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[pincode] [int] NOT NULL,
 CONSTRAINT [PK_enroll_centre] PRIMARY KEY CLUSTERED 
(
	[centre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [enrolled](
	[aadhar_num] [bigint] NOT NULL,
	[enroll_id] [bigint] NOT NULL,
	[enroll_time] [datetime] NOT NULL,
	[enroll_loc] [int] NOT NULL,
 CONSTRAINT [PK_enrolled] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [otp](
	[aadhar_num] [bigint] NOT NULL,
	[otp] [int] NOT NULL,
 CONSTRAINT [PK_otp] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pincodes](
	[pincode] [int] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[district] [varchar](50) NOT NULL,
	[state] [int] NOT NULL,
	[country] [varchar](50) NOT NULL,
 CONSTRAINT [PK_pincodes] PRIMARY KEY CLUSTERED 
(
	[pincode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [service_needs](
	[service_id] [int] NOT NULL,
	[what_to] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [services](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [states](
	[state] [varchar](50) NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_states] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [update_history](
	[aadhar_num] [bigint] NOT NULL,
	[enroll_id] [bigint] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[mobile] [bigint] NOT NULL,
	[email] [varchar](100) NULL,
	[date_of_birth] [date] NOT NULL,
	[gender] [varchar](5) NOT NULL,
	[date_of_update] [date] NOT NULL,
	[address] [text] NOT NULL,
	[pincode] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [update_req](
	[aadhar_num] [bigint] NOT NULL,
	[C/O] [varchar](50) NOT NULL,
	[House] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[Landmark] [varchar](50) NOT NULL,
	[Area] [varchar](50) NOT NULL,
	[pincode] [int] NOT NULL,
 CONSTRAINT [PK_update_req] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [update_status](
	[aadhar_num] [bigint] NOT NULL,
	[address_status] [text] NOT NULL,
 CONSTRAINT [PK_update_status] PRIMARY KEY CLUSTERED 
(
	[aadhar_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [complaint_status]  WITH CHECK ADD  CONSTRAINT [FK_complaint_status_complaints] FOREIGN KEY([complaint_id])
REFERENCES [complaints] ([complaint_id])
GO
ALTER TABLE [complaint_status] CHECK CONSTRAINT [FK_complaint_status_complaints]
GO
ALTER TABLE [complaints]  WITH CHECK ADD  CONSTRAINT [FK_complaints_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [complaints] CHECK CONSTRAINT [FK_complaints_aadhar_num]
GO
ALTER TABLE [details]  WITH CHECK ADD  CONSTRAINT [FK_details_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [details] CHECK CONSTRAINT [FK_details_aadhar_num]
GO
ALTER TABLE [details]  WITH CHECK ADD  CONSTRAINT [FK_details_pincodes] FOREIGN KEY([pincode])
REFERENCES [pincodes] ([pincode])
GO
ALTER TABLE [details] CHECK CONSTRAINT [FK_details_pincodes]
GO
ALTER TABLE [document]  WITH CHECK ADD  CONSTRAINT [FK_document_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [document] CHECK CONSTRAINT [FK_document_aadhar_num]
GO
ALTER TABLE [enroll_centre]  WITH CHECK ADD  CONSTRAINT [FK_enroll_centre_pincodes] FOREIGN KEY([pincode])
REFERENCES [pincodes] ([pincode])
GO
ALTER TABLE [enroll_centre] CHECK CONSTRAINT [FK_enroll_centre_pincodes]
GO
ALTER TABLE [enrolled]  WITH CHECK ADD  CONSTRAINT [FK_enrolled_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [enrolled] CHECK CONSTRAINT [FK_enrolled_aadhar_num]
GO
ALTER TABLE [enrolled]  WITH CHECK ADD  CONSTRAINT [FK_enrolled_enroll_centre] FOREIGN KEY([enroll_loc])
REFERENCES [enroll_centre] ([centre_id])
GO
ALTER TABLE [enrolled] CHECK CONSTRAINT [FK_enrolled_enroll_centre]
GO
ALTER TABLE [otp]  WITH CHECK ADD  CONSTRAINT [FK_otp_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [otp] CHECK CONSTRAINT [FK_otp_aadhar_num]
GO
ALTER TABLE [pincodes]  WITH CHECK ADD  CONSTRAINT [FK_pincodes_states] FOREIGN KEY([state])
REFERENCES [states] ([id])
GO
ALTER TABLE [pincodes] CHECK CONSTRAINT [FK_pincodes_states]
GO
ALTER TABLE [service_needs]  WITH CHECK ADD  CONSTRAINT [FK_service_needs_services] FOREIGN KEY([service_id])
REFERENCES [services] ([id])
GO
ALTER TABLE [service_needs] CHECK CONSTRAINT [FK_service_needs_services]
GO
ALTER TABLE [update_history]  WITH CHECK ADD  CONSTRAINT [FK_update-history_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [update_history] CHECK CONSTRAINT [FK_update-history_aadhar_num]
GO
ALTER TABLE [update_history]  WITH CHECK ADD  CONSTRAINT [FK_update-history_pincodes] FOREIGN KEY([pincode])
REFERENCES [pincodes] ([pincode])
GO
ALTER TABLE [update_history] CHECK CONSTRAINT [FK_update-history_pincodes]
GO
ALTER TABLE [update_req]  WITH CHECK ADD  CONSTRAINT [FK_update_req_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [update_req] CHECK CONSTRAINT [FK_update_req_aadhar_num]
GO
ALTER TABLE [update_req]  WITH CHECK ADD  CONSTRAINT [FK_update_req_pincodes] FOREIGN KEY([pincode])
REFERENCES [pincodes] ([pincode])
GO
ALTER TABLE [update_req] CHECK CONSTRAINT [FK_update_req_pincodes]
GO
ALTER TABLE [update_status]  WITH CHECK ADD  CONSTRAINT [FK_update_status_aadhar_num] FOREIGN KEY([aadhar_num])
REFERENCES [aadhar_num] ([aadhar_num])
GO
ALTER TABLE [update_status] CHECK CONSTRAINT [FK_update_status_aadhar_num]
GO
