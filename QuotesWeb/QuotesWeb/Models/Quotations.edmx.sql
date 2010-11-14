
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/14/2010 16:48:55
-- Generated from EDMX file: E:\Code\Web\QuotesApp\QuotesWeb\QuotesWeb\Models\Quotations.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Quotations];
GO
IF SCHEMA_ID(N'Quotations') IS NULL EXECUTE(N'CREATE SCHEMA [Quotations]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[Quotations].[Quotations]', 'U') IS NOT NULL
    DROP TABLE [Quotations].[Quotations];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Quotations'
CREATE TABLE [Quotations].[Quotations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quote] nvarchar(255)  NOT NULL,
    [Author] nvarchar(255)  NOT NULL,
    [When] nvarchar(100)  NULL,
    [LastUpdated] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Quotations'
ALTER TABLE [Quotations].[Quotations]
ADD CONSTRAINT [PK_Quotations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------