create table CUSTOMER_RISK_RATING_PB
(
  ETL_DATE              VARCHAR2(6),
  STATUS                VARCHAR2(2),
  DATA_FLAG             VARCHAR2(64),
  CUSTOMER_BRANCH       VARCHAR2(20),
  CUSTOMER_SERIAL       VARCHAR2(64),
  OVERALL_RISK_RATING   VARCHAR2(200),
  LAST_RISK_RATING_DATE VARCHAR2(20)
);
comment on table CUSTOMER_RISK_RATING_PB
  is 'PB风险等级表';
comment on column CUSTOMER_RISK_RATING_PB.ETL_DATE
  is '上传月份';
comment on column CUSTOMER_RISK_RATING_PB.STATUS
  is '数据状态';
comment on column CUSTOMER_RISK_RATING_PB.DATA_FLAG
  is '数据标示';
comment on column CUSTOMER_RISK_RATING_PB.CUSTOMER_BRANCH
  is '客户分行';
comment on column CUSTOMER_RISK_RATING_PB.CUSTOMER_SERIAL
  is '客户系列';
comment on column CUSTOMER_RISK_RATING_PB.OVERALL_RISK_RATING
  is '综合风险评级';
comment on column CUSTOMER_RISK_RATING_PB.LAST_RISK_RATING_DATE
  is '最后风险评级日期';  
  
  
create table CUSTOMER_RISK_RATING_RBWM
(
   ETL_DATE               VARCHAR2(6),
   STATUS                 VARCHAR2(2),
   DATA_FLAG              VARCHAR2(64),
   CUSTOMER_NUMBER        VARCHAR2(64),
   RISK_RATING            VARCHAR2(64),
   APPROVAL_CANCEL_DATE   VARCHAR2(64),
   REVIEW_STATUS          VARCHAR2(100)
);
comment on table CUSTOMER_RISK_RATING_RBWM
  is 'RBWM风险等级表';
comment on column CUSTOMER_RISK_RATING_RBWM.ETL_DATE
  is '上传月份';
comment on column CUSTOMER_RISK_RATING_RBWM.STATUS
  is '数据状态';
comment on column CUSTOMER_RISK_RATING_RBWM.DATA_FLAG
  is '数据标示';
comment on column CUSTOMER_RISK_RATING_RBWM.CUSTOMER_NUMBER
  is '客户编号';  
comment on column CUSTOMER_RISK_RATING_RBWM.RISK_RATING
  is '风险评估';
comment on column CUSTOMER_RISK_RATING_RBWM.APPROVAL_CANCEL_DATE
  is '批准取消日期'; 
comment on column CUSTOMER_RISK_RATING_RBWM.REVIEW_STATUS
  is '检查状态';
 
  
  
--菜单脚本
insert into FUNCTION_INFO (FUNCID, FUNCNAME, PAGEPATH, LOCATION, ISDIRECTORY, LASTDIRECTORY, SHOWSEQ, FUNC_CLASS, FUNC_TYPE, WORKFLOW_FLAG, UP_FUNC_CODE, FUNC_DESC, STATUS, EFFECT_DATE, EXPIRE_DATE, TIMESTAMPS, MISCFLGS, MISC, ICON_CLS)
values ('19', 'Risk Rating上传/审核', null, 2, 1, '0', 8, null, '0', null, null, null, '1', null, null, null, null, null, null);
insert into FUNCTION_INFO (FUNCID, FUNCNAME, PAGEPATH, LOCATION, ISDIRECTORY, LASTDIRECTORY, SHOWSEQ, FUNC_CLASS, FUNC_TYPE, WORKFLOW_FLAG, UP_FUNC_CODE, FUNC_DESC, STATUS, EFFECT_DATE, EXPIRE_DATE, TIMESTAMPS, MISCFLGS, MISC, ICON_CLS)
values ('1901', 'Risk Rating上传', '/fpages/export/ftl/UploadfilesFor300.jsp', 2, 0, '19', 1, '1', '1', null, null, null, '1', null, null, null, null, null, null);
insert into FUNCTION_INFO (FUNCID, FUNCNAME, PAGEPATH, LOCATION, ISDIRECTORY, LASTDIRECTORY, SHOWSEQ, FUNC_CLASS, FUNC_TYPE, WORKFLOW_FLAG, UP_FUNC_CODE, FUNC_DESC, STATUS, EFFECT_DATE, EXPIRE_DATE, TIMESTAMPS, MISCFLGS, MISC, ICON_CLS)
values ('1902', 'Risk Rating审核', '/fpages/export/ftl/CheckfilesFor300.ftl', 2, 0, '19', 2, '1', '1', null, null, null, '1', null, null, null, null, null, null);
commit;

--TB_TABLEINFO_300脚本
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_PB', 'CUSTOMER_RISK_RATING_PB', 'CUSTOMER_BRANCH', null, null, null, null, 1, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_PB', 'CUSTOMER_RISK_RATING_PB', 'CUSTOMER_SERIAL', null, null, null, null, 2, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_PB', 'CUSTOMER_RISK_RATING_PB', 'OVERALL_RISK_RATING', null, null, null, null, 3, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_PB', 'CUSTOMER_RISK_RATING_PB', 'LAST_RISK_RATING_DATE', null, null, null, null, 4, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_RBWM', 'CUSTOMER_RISK_RATING_RBWM', 'CUSTOMER_NUMBER', null, null, null, null, 1, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_RBWM', 'CUSTOMER_RISK_RATING_RBWM', 'RISK_RATING', null, null, null, null, 2, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_RBWM', 'CUSTOMER_RISK_RATING_RBWM', 'APPROVAL_CANCEL_DATE', null, null, null, null, 3, null, null, null, null);
insert into TB_TABLEINFO_300 (FILE_NAME, TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, COMMENTS, DATA_DIC, ORDNUM, TWO_SEVEN, IS_NOT_NULL, IS_NOT_PK, IS_ONLY)
values ('CUSTOMER_RISK_RATING_RBWM', 'CUSTOMER_RISK_RATING_RBWM', 'REVIEW_STATUS', null, null, null, null, 4, null, null, null, null);
commit;

comment on table import_file is '联网核查审核信息表';

create table UPLOAD_FILE_300
(
  ID            VARCHAR2(32),
  FILE_NAME     VARCHAR2(64),
  DATA_NUM      NUMBER(8),
  FILE_TIME     VARCHAR2(6),
  UPLOAD_PERSON VARCHAR2(20),
  UPLOAD_TIME   DATE,
  CHECK_PERSON  VARCHAR2(20),
  CHECK_TIME    DATE,
  UPDATE_PERSON VARCHAR2(20),
  UPDATE_TIME   DATE,
  DEPARTMENT    VARCHAR2(20),
  CHECK_STATUS  VARCHAR2(2),
  CHECK_MESSAGE VARCHAR2(200),
  TABLE_NAME    VARCHAR2(40),
  AREA          VARCHAR2(20),
  FILLER1       VARCHAR2(64),
  FILLER2       VARCHAR2(64),
  FILLER3       VARCHAR2(64)
)
comment on table UPLOAD_FILE_300 is '300号文审核信息表';
-- Add comments to the columns 
comment on column UPLOAD_FILE_300.ID
  is '记录主键';
comment on column UPLOAD_FILE_300.FILE_NAME
  is '文件名';
comment on column UPLOAD_FILE_300.DATA_NUM
  is '数据量';
comment on column UPLOAD_FILE_300.FILE_TIME
  is '文件日期';
comment on column UPLOAD_FILE_300.UPLOAD_PERSON
  is '上传人';
comment on column UPLOAD_FILE_300.UPLOAD_TIME
  is '上传时间';
comment on column UPLOAD_FILE_300.CHECK_PERSON
  is '审核人';
comment on column UPLOAD_FILE_300.CHECK_TIME
  is '审核时间';
comment on column UPLOAD_FILE_300.UPDATE_PERSON
  is '更新人';
comment on column UPLOAD_FILE_300.UPDATE_TIME
  is '更新时间';
comment on column UPLOAD_FILE_300.DEPARTMENT
  is '部门';
comment on column UPLOAD_FILE_300.CHECK_STATUS
  is '审核状态';
comment on column UPLOAD_FILE_300.CHECK_MESSAGE
  is '审核信息';
comment on column UPLOAD_FILE_300.TABLE_NAME
  is '对应表名';
comment on column UPLOAD_FILE_300.AREA
  is '区域';
comment on column UPLOAD_FILE_300.FILLER1
  is '备用字段一';
comment on column UPLOAD_FILE_300.FILLER2
  is '备用字段二';
comment on column UPLOAD_FILE_300.FILLER3
  is '备用字段三';

-----系统配置表
insert into SYS_PARAMS (PARAMGROUP_ID, PARAM_ID, PARAM_VAL, PARAM_NAME, MEMO, ST, IS_LOCK, IS_DEL, CRT_DT, LAST_UPD_TMS, LAST_UPD_OPER)
values ('DEPARTMENT', '300_PB', 'CUSTOMER_RISK_RATING_PB', 'PB部门上传文件', null, '4', 'F', 'F', null, null, null);
insert into SYS_PARAMS (PARAMGROUP_ID, PARAM_ID, PARAM_VAL, PARAM_NAME, MEMO, ST, IS_LOCK, IS_DEL, CRT_DT, LAST_UPD_TMS, LAST_UPD_OPER)
values ('DEPARTMENT', '300_RBWM', 'CUSTOMER_RISK_RATING_RBWM', 'RBWM部门上传文件', null, '4', 'F', 'F', null, null, null);