-- SQL��ʹ�õĲ�ѯ��䣨ʵ��û��ʹ�ã�

USE ΢�ŵ���ϵͳ
GO
/*CREATE TABLE ǩ������ͳ�Ʊ�
(ѧ�� varchar(20) NOT NULL,
�γ̴��� varchar(20) NOT NULL,
ʵ��ǩ������ int DEFAULT(0),
Ӧ��ǩ������ int DEFAULT(0)
)
GO
INSERT ǩ������ͳ�Ʊ�(ѧ��,�γ̴���)
SELECT ѧ��,�γ̴��� FROM ѡ�ޱ�*/

/*ALTER TABLE ѡ�ޱ�
ADD CONSTRAINT �޶����Լ�� DEFAULT('�����޶�')FOR �޶����*/
/*ALTER TABLE ǩ����
ADD CONSTRAINT ǩ�����Լ�� DEFAULT('δǩ��')FOR ǩ�����*/
/*ALTER TABLE ǩ����
ADD CONSTRAINT ǩ��ʱ��Լ�� DEFAULT(0)FOR ǩ��ʱ��*/
/*ALTER PROC log_in @ѧ���� varchar(20),@���� varchar(50)
AS
IF EXISTS(SELECT*FROM �û��� WHERE �û���=@ѧ����)
 BEGIN
   IF(@����=(SELECT ���� FROM �û��� WHERE �û���=@ѧ����))
   PRINT '��¼�ɹ�'
   ELSE PRINT '�������'
 END
 ELSE PRINT 'ѧ���Ŵ���'*/
 
/*ALTER PROC sign_in @�γ̴��� varchar(20),@ѧ�� varchar(20),@ǩ��ʱ�� smalldatetime,
 @��ʼʱ�� smalldatetime,@��ֹʱ�� smalldatetime
 AS
 IF EXISTS(SELECT*FROM ѧ���� WHERE ѧ��=@ѧ��)
 BEGIN
    IF EXISTS(SELECT*FROM �γ̱� WHERE �γ̴���=@�γ̴���)
    BEGIN
       IF(@ǩ��ʱ��>=@��ʼʱ�� AND @ǩ��ʱ��<=@��ֹʱ��)
       BEGIN
       UPDATE ǩ���� SET ǩ�����='��ǩ��' FROM ǩ���� 
       WHERE ѧ��=@ѧ�� AND �γ̴���=@�γ̴��� AND ��ʼʱ��=@��ʼʱ�� AND ��ֹʱ��=@��ֹʱ��
       PRINT 'ǩ���ɹ���'
       END
       ELSE PRINT 'ǩ��ʱ���ѹ�'
    END
    ELSE PRINT '�γ̴������'   
 END
 ELSE PRINT 'ѧ�Ŵ���'*/
/* ALTER PROC stu_inq @ѧ�� varchar(20),@�γ̴��� varchar(20)
 AS
 IF EXISTS(SELECT*FROM ѡ�ޱ� WHERE ѧ��=@ѧ�� AND �γ̴���=@�γ̴���)
 SELECT*FROM ǩ������ͳ�Ʊ� WHERE ѧ��=@ѧ�� AND �γ̴���=@�γ̴���
 ELSE PRINT '��δѡ�޸ÿγ�'*/
/*ALTER PROC rele_sign @�γ̴��� varchar(20),@��ʼʱ�� smalldatetime,
 @��ֹʱ�� smalldatetime
 AS
 INSERT ǩ���� (�γ̴���,ѧ��,��ʼʱ��,��ֹʱ��) 
 SELECT �γ̴���,ѧ��,@��ʼʱ��,@��ֹʱ��
  FROM ѡ�ޱ� WHERE �γ̴���=@�γ̴���*/
 /*ALTER PROC  teach_inq @�γ̴��� varchar(20),@��ʼʱ�� smalldatetime,@��ֹʱ�� smalldatetime
 AS
 IF EXISTS(SELECT*FROM ǩ���� WHERE �γ̴���=@�γ̴���)
SELECT*FROM ǩ������ͳ�Ʊ� WHERE �γ̴���=@�γ̴���
 ELSE PRINT '�γ̴�����������'*/
 /*CREATE PROC add_stu @ѧ�� varchar(20),@�γ̴��� varchar(20)
 AS
 INSERT ѡ�ޱ�(�γ̴���,ѧ��)VALUES(@�γ̴���,@ѧ��)*/
 /*CREATE PROC delete_stu @ѧ�� varchar(20),@�γ̴��� varchar(20)
 AS
 DELETE FROM ѡ�ޱ� WHERE ѧ��=@ѧ�� AND �γ̴���=@�γ̴���*/
/*CREATE TRIGGER Ӧ��ǩ����������
 ON ǩ���� FOR INSERT
 AS
 UPDATE ǩ������ͳ�Ʊ�
 SET Ӧ��ǩ������=Ӧ��ǩ������+1 WHERE �γ̴���=(SELECT �γ̴��� FROM inserted GROUP BY �γ̴���)*/
 /*CREATE TRIGGER ʵ��ǩ����������
 ON ǩ���� FOR UPDATE
 AS
 UPDATE ǩ������ͳ�Ʊ�
 SET ʵ��ǩ������=ʵ��ǩ������+1 
 WHERE �γ̴���=(SELECT �γ̴��� FROM inserted )
 AND ѧ��=(SELECT ѧ�� FROM inserted)*/
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
