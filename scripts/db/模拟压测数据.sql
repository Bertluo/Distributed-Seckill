/*web���д�������ѹ�����ԵĲ��ż���Ա*/
truncate table taw_system_user;
truncate table taw_system_dept;
insert into taw_system_user values (sys_guid(), 'admin',  '����Ա',-999,null, 'JARUM2Ev5Hti9qj4/oY3UMowEei2s+l6RFj8AEqIrVBXpToQbiI9QEczsRUjK3aXoLNUwtNTRpdud/KuCrdnDw==',null,null,null,null,null,null,null,'admin') ;
insert into taw_system_dept values(27000000,'�ܹ�˾',-999,'�ܹ�˾',null,null,null,null,null,'����ѹ������');  
insert into taw_system_dept values(2700000000,'ѹ�ⲿ',27000000,'ѹ�ⲿ',null,null,null,null,null,'����ѹ������');  
commit; 
declare
  deptCount number; 
  userCount number; 
  deptId number;
  deptName char(100);
begin
  deptCount:=1;
  userCount := 1;
  for i in 1 .. 10 loop 
    deptName:='������'||deptCount;
    if deptCount<10 then deptId:= 27000000000+i;
    else
      deptId:= 2700000000+deptCount;
    end if;
    insert into taw_system_dept values(deptId,deptName,2700000000,deptName,null,null,null,null,deptCount,'����ѹ������'); 
    for j in 1 .. 10000 loop         
        insert into taw_system_user values 
        (sys_guid(), 'user'||userCount,  '����Ա'||userCount,deptId,deptName, 'cxCTuuDtJcUq9QJwnH8Rc2wNZXTuCvVa19hYuCX81LI0ceexAUeuDnFJZZ+FYbQdTj//IV+/Ig2JK1VMmMXgWg==',null,null,null,null,null,null,j,'admin') ;      
        userCount := userCount + 1;      
    end loop;
    commit;
    
    deptCount:=deptCount+1;
  end loop;  
end;
/ 
/*�̼ҿ��д����ʽ��û�*/
truncate table capital_account;
insert into capital_account values('844C3D5832B07788E05011AC10A3A','admin','1',0,0,sysdate,null);
/*��ҿ��д����ʽ��˻�*/
truncate table capital_account;
insert into capital_account values('844C3D5832B07788E05011AC10A3A','admin','1',1000000.00,0,sysdate,null);
declare
  userCount number; 
begin
  userCount := 1;  
    for j in 1 .. 100000 loop         
        insert into capital_account values 
        (sys_guid(), 'user'||userCount, '1',1000000,0,sysdate,null) ;      
        userCount := userCount + 1;      
    end loop;
    commit;
    
end;
/


/*���ֿ��д����˻�*/
truncate table account_point;
insert into account_point values(sys_guid(), 'admin', '1',0,sysdate,null) ;  
declare
  userCount number; 
begin
  userCount := 1;  
    for j in 1 .. 100000 loop         
        insert into account_point values 
        (sys_guid(), 'user'||userCount, '1',0,sysdate,null) ;      
        userCount := userCount + 1;      
    end loop;
    commit;    
end;
/ 