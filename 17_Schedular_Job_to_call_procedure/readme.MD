# Schedule or job in 11g #
```sql
BEGIN
  SYS.DBMS_SCHEDULER.DROP_JOB
    (job_name  => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB');
END;
/

BEGIN
  SYS.DBMS_SCHEDULER.CREATE_JOB
    (
       job_name        => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
      ,start_date      => TO_TIMESTAMP_TZ('2019/12/19 23:23:32.302000 -07:00','yyyy/mm/dd hh24:mi:ss.ff tzr')
      ,repeat_interval => 'FREQ=DAILY;INTERVAL=1'
      ,end_date        => NULL
      ,job_class       => 'DEFAULT_JOB_CLASS'
      ,job_type        => 'PLSQL_BLOCK'
      ,job_action      => 'RAJ.change_department_manager;'
      ,comments        => NULL
    );
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'RESTARTABLE'
     ,value     => FALSE);
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'LOGGING_LEVEL'
     ,value     => SYS.DBMS_SCHEDULER.LOGGING_OFF);
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE_NULL
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'MAX_FAILURES');
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE_NULL
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'MAX_RUNS');
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'STOP_ON_WINDOW_CLOSE'
     ,value     => FALSE);
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'JOB_PRIORITY'
     ,value     => 3);
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE_NULL
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'SCHEDULE_LIMIT');
  SYS.DBMS_SCHEDULER.SET_ATTRIBUTE
    ( name      => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB'
     ,attribute => 'AUTO_DROP'
     ,value     => TRUE);

  SYS.DBMS_SCHEDULER.ENABLE
    (name                  => 'RAJ.CHANGE_DEPARTMENT_MANAGER_JOB');
END;
/
```