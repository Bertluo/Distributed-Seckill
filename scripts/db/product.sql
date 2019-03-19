------------------------------------------------------
-- Export file for user JECP@10.0.0.2_31526_PRODUCT --
-- Created by Administrator on 2019/3/19, 23:41:33 ---
------------------------------------------------------

set define off
spool product.log

prompt
prompt Creating table SHOP_PRODUCT
prompt ===========================
prompt
create table JECP.SHOP_PRODUCT
(
  product_id  VARCHAR2(32) not null,
  category_id NUMBER(8),
  title       VARCHAR2(255),
  subtitle    VARCHAR2(255),
  picture_url VARCHAR2(500),
  price       NUMBER(18,2),
  stock       NUMBER(10),
  status      VARCHAR2(100),
  seller_id   VARCHAR2(255),
  create_time DATE,
  update_time DATE
)
;
comment on column JECP.SHOP_PRODUCT.category_id
  is '����ID';
comment on column JECP.SHOP_PRODUCT.title
  is '��Ʒ����';
comment on column JECP.SHOP_PRODUCT.subtitle
  is '��Ʒ������';
comment on column JECP.SHOP_PRODUCT.picture_url
  is '��ƷͼƬ��ַ';
comment on column JECP.SHOP_PRODUCT.price
  is '�۸�';
comment on column JECP.SHOP_PRODUCT.stock
  is '�������';
comment on column JECP.SHOP_PRODUCT.status
  is '��Ʒ״̬(����,�¼�,ɾ��)';
comment on column JECP.SHOP_PRODUCT.seller_id
  is '�̼�ID';
comment on column JECP.SHOP_PRODUCT.create_time
  is '����ʱ��';
comment on column JECP.SHOP_PRODUCT.update_time
  is '����ʱ��';
alter table JECP.SHOP_PRODUCT
  add primary key (PRODUCT_ID);

prompt
prompt Creating table SHOP_PRODUCT_SECKILL
prompt ===================================
prompt
create table JECP.SHOP_PRODUCT_SECKILL
(
  seckill_id    VARCHAR2(32) not null,
  product_id    VARCHAR2(32) not null,
  seckill_price NUMBER(18,2),
  seckill_stock NUMBER(8),
  seller_id     VARCHAR2(255),
  start_time    DATE,
  end_time      DATE,
  create_time   DATE,
  code_strategy VARCHAR2(100)
)
;
comment on column JECP.SHOP_PRODUCT_SECKILL.product_id
  is '��ƷID';
comment on column JECP.SHOP_PRODUCT_SECKILL.seckill_price
  is '��ɱ�۸�';
comment on column JECP.SHOP_PRODUCT_SECKILL.seckill_stock
  is '��ɱ��Ʒ���';
comment on column JECP.SHOP_PRODUCT_SECKILL.seller_id
  is '�̼�ID';
comment on column JECP.SHOP_PRODUCT_SECKILL.start_time
  is '��ɱ��ʼʱ��';
comment on column JECP.SHOP_PRODUCT_SECKILL.end_time
  is '��ɱ����ʱ��';
comment on column JECP.SHOP_PRODUCT_SECKILL.create_time
  is '������ɱʱ��';
comment on column JECP.SHOP_PRODUCT_SECKILL.code_strategy
  is '�������';
alter table JECP.SHOP_PRODUCT_SECKILL
  add primary key (SECKILL_ID);


spool off
