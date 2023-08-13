# reminder
a simple tool to help you quick search info in command line

# Usage

1. clone the git repository to your local
2. add following line in env
  ```
   source ~/work/tools/reminder/.profile
  ```

3. To list the existing reminder

   ```
   > reminder
    azure
    bdr
    cnp
    git
    go
    k8s
    linux
    notes
    pg
    sql
    upm
    work
   ```
4. To view on reminder (content is custommized by u)

   ```
   > reminder sql


    standby1
    ## select the pid of wal receiver in standby `kill -STOP pid` to kill in standby
    psql -tAc "SELECT pid FROM pg_stat_activity WHERE backend_type = 'walreceiver'"
    `kill -STOP pid`
    
    primary
    ## teminate wal sender in primary
    psql -tAc "SELECT pg_terminate_backend(80) FROM pg_stat_replication WHERE application_name = 'failover-delay-2'"
    ## get the number of replica
    psql -tAc "select count(*) from pg_stat_replication";
    
    ## get current lsn
    psql -tAc "SELECT pg_current_wal_lsn()";
    ## trigger checkpoint
    psql -tAc "CHECKPOINT";
    
    ## get the replay lsn of a standby2
    psql -tAc "SELECT replay_lsn FROM pg_stat_replication WHERE application_name = 'failover-delay-3'";
    
    ## continue a pid in standby1
    kill -CONT pid

   ```
5. To update the content of an existing reminder
      ```
      remindex sql
      ```

6. To add a new reminder
      ```
      touch $REMINDER/test.reminder
   
      ```
