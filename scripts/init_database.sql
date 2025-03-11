USE master;
GO

-- Vérifier si la base de données existe et la supprimer
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END
GO

-- Création de la base de données
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Création des schémas
CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
