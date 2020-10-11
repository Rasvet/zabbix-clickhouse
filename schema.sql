
# Used by monitoring module for connection health
CREATE USER IF NOT EXISTS monitor@'%' IDENTIFIED BY '"ProxysqlMonitor#';
GRANT ALL PRIVILEGES ON meta.* TO 'monitor'@'%';
FLUSH PRIVILEGES;
