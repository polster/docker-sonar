# mysql -u root -p

-- Create a new sonar database
CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Create a local and a remote user
CREATE USER sonar@localhost IDENTIFIED BY 'password';
CREATE USER sonar@'%' IDENTIFIED BY 'password';

-- Grant users permissions
GRANT ALL ON sonar.* TO sonar@localhost;
GRANT ALL ON sonar.* TO sonar@'%';

-- Flush privileges
FLUSH PRIVILEGES;
