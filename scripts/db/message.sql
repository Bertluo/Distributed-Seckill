------------------------------------------------------
-- Export file for user JECP@10.0.0.2_31525_MESSAGE --
-- Created by Administrator on 2019/3/19, 23:41:09 ---
------------------------------------------------------

set define off
spool message.log

prompt
prompt Creating table RELIABLE_MESSAGE
prompt ===============================
prompt
create table JECP.RELIABLE_MESSAGE
(
  id                    VARCHAR2(32) not null,
  creater               VARCHAR2(100),
  editor                VARCHAR2(100),
  create_time           DATE,
  last_update_time      DATE,
  message_key           VARCHAR2(50),
  message_body          CLOB,
  message_data_type     VARCHAR2(32),
  confirm_timeout_queue VARCHAR2(50),
  consumer_queue        VARCHAR2(50),
  check_producer_times  NUMBER(5),
  resend_times          NUMBER(5),
  already_dead          NUMBER(5),
  status                VARCHAR2(32),
  deleted               NUMBER(5)
)
;
comment on column JECP.RELIABLE_MESSAGE.creater
  is '������';
comment on column JECP.RELIABLE_MESSAGE.editor
  is '�޸���';
comment on column JECP.RELIABLE_MESSAGE.create_time
  is '����ʱ��';
comment on column JECP.RELIABLE_MESSAGE.last_update_time
  is '������ʱ��';
comment on column JECP.RELIABLE_MESSAGE.message_key
  is '��ϢID';
comment on column JECP.RELIABLE_MESSAGE.message_body
  is '��Ϣ����';
comment on column JECP.RELIABLE_MESSAGE.message_data_type
  is '��������';
comment on column JECP.RELIABLE_MESSAGE.confirm_timeout_queue
  is 'ȷ�ϳ�ʱ����';
comment on column JECP.RELIABLE_MESSAGE.consumer_queue
  is '�����߶���';
comment on column JECP.RELIABLE_MESSAGE.check_producer_times
  is '�ز����';
comment on column JECP.RELIABLE_MESSAGE.resend_times
  is '�ط�����';
comment on column JECP.RELIABLE_MESSAGE.already_dead
  is '��Ϣ�Ƿ�����';
comment on column JECP.RELIABLE_MESSAGE.status
  is '��Ϣ״̬';
comment on column JECP.RELIABLE_MESSAGE.deleted
  is 'ɾ�����';
alter table JECP.RELIABLE_MESSAGE
  add primary key (ID);
alter table JECP.RELIABLE_MESSAGE
  add constraint UK_O5UINT6HJDVER9OSDXADKDGPA unique (MESSAGE_KEY);

prompt
prompt Creating table RELIABLE_MESSAGE_DELETED
prompt =======================================
prompt
create table JECP.RELIABLE_MESSAGE_DELETED
(
  id                    VARCHAR2(32) not null,
  creater               VARCHAR2(100),
  editor                VARCHAR2(100),
  create_time           DATE,
  last_update_time      DATE,
  message_key           VARCHAR2(50),
  message_body          CLOB,
  message_data_type     VARCHAR2(32),
  confirm_timeout_queue VARCHAR2(50),
  consumer_queue        VARCHAR2(50),
  check_producer_times  NUMBER(5),
  resend_times          NUMBER(5),
  already_dead          NUMBER(5),
  status                VARCHAR2(32),
  deleted               NUMBER(5)
)
;
comment on column JECP.RELIABLE_MESSAGE_DELETED.creater
  is '������';
comment on column JECP.RELIABLE_MESSAGE_DELETED.editor
  is '�޸���';
comment on column JECP.RELIABLE_MESSAGE_DELETED.create_time
  is '����ʱ��';
comment on column JECP.RELIABLE_MESSAGE_DELETED.last_update_time
  is '������ʱ��';
comment on column JECP.RELIABLE_MESSAGE_DELETED.message_key
  is '��ϢID';
comment on column JECP.RELIABLE_MESSAGE_DELETED.message_body
  is '��Ϣ����';
comment on column JECP.RELIABLE_MESSAGE_DELETED.message_data_type
  is '��������';
comment on column JECP.RELIABLE_MESSAGE_DELETED.confirm_timeout_queue
  is 'ȷ�ϳ�ʱ����';
comment on column JECP.RELIABLE_MESSAGE_DELETED.consumer_queue
  is '�����߶���';
comment on column JECP.RELIABLE_MESSAGE_DELETED.check_producer_times
  is '�ز����';
comment on column JECP.RELIABLE_MESSAGE_DELETED.resend_times
  is '�ط�����';
comment on column JECP.RELIABLE_MESSAGE_DELETED.already_dead
  is '��Ϣ�Ƿ�����';
comment on column JECP.RELIABLE_MESSAGE_DELETED.status
  is '��Ϣ״̬';
comment on column JECP.RELIABLE_MESSAGE_DELETED.deleted
  is 'ɾ�����';
alter table JECP.RELIABLE_MESSAGE_DELETED
  add primary key (ID);
alter table JECP.RELIABLE_MESSAGE_DELETED
  add constraint UK_SXOEVXM9CIDRUBBME8XOGAN0A unique (MESSAGE_KEY);


spool off
