SET GLOBAL validate_password.policy=LOW;
set global validate_password.length=4;
# Used by monitoring module for connection health
CREATE USER IF NOT EXISTS monitor@'%' IDENTIFIED WITH mysql_native_password BY 'ProxysqlMonitor#';
GRANT ALL PRIVILEGES ON meta.* TO 'monitor'@'%';
FLUSH PRIVILEGES;
show global variables like '%password%';
