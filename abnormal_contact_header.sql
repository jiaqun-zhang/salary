/*
 Navicat Premium Dump SQL

 Source Server         : yun_aishi
 Source Server Type    : SQL Server
 Source Server Version : 11006020 (11.00.6020)
 Source Host           : 192.168.0.141:1433
 Source Catalog        : F3Salary
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11006020 (11.00.6020)
 File Encoding         : 65001

 Date: 18/07/2025 15:03:14
*/


-- ----------------------------
-- Table structure for abnormal_contact_header
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[abnormal_contact_header]') AND type IN ('U'))
	DROP TABLE [dbo].[abnormal_contact_header]
GO

CREATE TABLE [dbo].[abnormal_contact_header] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [months] varchar(6) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [type] int  NOT NULL,
  [factory] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [dept] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [job] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_code] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_name] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [note] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [oa_id] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [state] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_id] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [file2_id] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] varchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(0)  NULL,
  [update_by] varchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_time] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[abnormal_contact_header] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'年月',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'months'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联络单类型',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工厂',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'factory'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'job'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请人工号',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'user_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'申请人姓名',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'note'
GO

EXEC sp_addextendedproperty
'MS_Description', N'oa流程id',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'oa_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'state'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件id',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'file_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'明细行生成附件id',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'file2_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常联络单主',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header'
GO


-- ----------------------------
-- Auto increment value for abnormal_contact_header
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[abnormal_contact_header]', RESEED, 81)
GO


-- ----------------------------
-- Indexes structure for table abnormal_contact_header
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_1]
ON [dbo].[abnormal_contact_header] (
  [months] ASC,
  [type] ASC
)
GO

EXEC sp_addextendedproperty
'MS_Description', N'月份加类型',
'SCHEMA', N'dbo',
'TABLE', N'abnormal_contact_header',
'INDEX', N'index_1'
GO


-- ----------------------------
-- Primary Key structure for table abnormal_contact_header
-- ----------------------------
ALTER TABLE [dbo].[abnormal_contact_header] ADD CONSTRAINT [PK__abnormal__3213E83F6306FC48] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

