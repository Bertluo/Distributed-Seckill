-----------------------------------------------------
-- Export file for user JECP@10.0.0.2_31524_POINT  --
-- Created by Administrator on 2019/3/19, 23:40:38 --
-----------------------------------------------------

set define off
spool point.log

prompt
prompt Creating table ACCOUNT_POINT
prompt ============================
prompt
create table JECP.ACCOUNT_POINT
(
  id           VARCHAR2(32) not null,
  user_id      VARCHAR2(32),
  account_type VARCHAR2(32),
  total_points NUMBER(18),
  create_time  DATE,
  update_time  DATE
)
;
comment on column JECP.ACCOUNT_POINT.user_id
  is '�˻�ID';
comment on column JECP.ACCOUNT_POINT.account_type
  is '�˻�����';
comment on column JECP.ACCOUNT_POINT.total_points
  is '��������';
comment on column JECP.ACCOUNT_POINT.create_time
  is '����ʱ��';
comment on column JECP.ACCOUNT_POINT.update_time
  is '����ʱ��';
alter table JECP.ACCOUNT_POINT
  add primary key (ID);
alter table JECP.ACCOUNT_POINT
  add constraint UK_OSSH97FWFEIF93TLEGV9B3WYE unique (USER_ID);

prompt
prompt Creating table ACCOUNT_POINT_HIS
prompt ================================
prompt
create table JECP.ACCOUNT_POINT_HIS
(
  id           VARCHAR2(32) not null,
  user_id      VARCHAR2(32),
  account_type VARCHAR2(32),
  trade_amount NUMBER(18,2),
  trade_type   VARCHAR2(32),
  gtid         NUMBER(18),
  create_time  DATE,
  update_time  DATE
)
;
comment on table JECP.ACCOUNT_POINT_HIS
  is '�˻�����';
comment on column JECP.ACCOUNT_POINT_HIS.user_id
  is '�˻�ID';
comment on column JECP.ACCOUNT_POINT_HIS.account_type
  is '�˻�����';
comment on column JECP.ACCOUNT_POINT_HIS.trade_amount
  is '���׽��';
comment on column JECP.ACCOUNT_POINT_HIS.trade_type
  is '��������(�ۿ�ӿ�)';
comment on column JECP.ACCOUNT_POINT_HIS.gtid
  is 'ȫ�ֶ�����';
comment on column JECP.ACCOUNT_POINT_HIS.create_time
  is '����ʱ��';
comment on column JECP.ACCOUNT_POINT_HIS.update_time
  is '����ʱ��';
alter table JECP.ACCOUNT_POINT_HIS
  add primary key (ID);
alter table JECP.ACCOUNT_POINT_HIS
  add constraint ACCOUNT_PONIT_HIS_GTID unique (GTID);


spool off
