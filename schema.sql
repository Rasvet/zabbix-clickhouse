#SET GLOBAL validate_password.policy=LOW;
#set global validate_password.length=4;
# Used by monitoring module for connection health
DROP USER IF EXISTS  monitor@'%';
CREATE USER IF NOT EXISTS monitor@'%' IDENTIFIED WITH mysql_native_password BY 'ProxysqlMonitor#';
GRANT ALL PRIVILEGES ON meta.* TO 'monitor'@'%';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'%';
FLUSH PRIVILEGES;
