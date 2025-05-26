-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS resultados_db;

-- Crear usuario solo si no existe
CREATE USER IF NOT EXISTS 'myuser'@'%' IDENTIFIED BY 'mypassword123';
GRANT ALL PRIVILEGES ON resultados_db.* TO 'myuser'@'%';
FLUSH PRIVILEGES;

-- Usar esa base de datos
USE resultados_db;

-- Crear tabla si no existe
CREATE TABLE IF NOT EXISTS resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    a FLOAT NOT NULL,
    b FLOAT NOT NULL,
    c FLOAT NOT NULL,
    d FLOAT NOT NULL,
    resultado FLOAT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
