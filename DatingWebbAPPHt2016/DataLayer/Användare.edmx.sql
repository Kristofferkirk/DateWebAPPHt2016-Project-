
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/17/2016 15:47:28
-- Generated from EDMX file: C:\Users\Kristoffer\Source\Repos\DateWebAPPHt2016-Project-\DatingWebbAPPHt2016\DataLayer\Användare.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WebAPPDatabas];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AnvändareBild]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BildSet] DROP CONSTRAINT [FK_AnvändareBild];
GO
IF OBJECT_ID(N'[dbo].[FK_AnvändareProfil]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfilSet] DROP CONSTRAINT [FK_AnvändareProfil];
GO
IF OBJECT_ID(N'[dbo].[FK_AnvändareInloggning]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InloggningSet] DROP CONSTRAINT [FK_AnvändareInloggning];
GO
IF OBJECT_ID(N'[dbo].[FK_BildProfil]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BildSet] DROP CONSTRAINT [FK_BildProfil];
GO
IF OBJECT_ID(N'[dbo].[FK_AnvändareVänlista]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AnvändareSet] DROP CONSTRAINT [FK_AnvändareVänlista];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AnvändareSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AnvändareSet];
GO
IF OBJECT_ID(N'[dbo].[InloggningSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InloggningSet];
GO
IF OBJECT_ID(N'[dbo].[BildSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BildSet];
GO
IF OBJECT_ID(N'[dbo].[ProfilSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfilSet];
GO
IF OBJECT_ID(N'[dbo].[VänlistaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VänlistaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AnvändareSet'
CREATE TABLE [dbo].[AnvändareSet] (
    [AnvändarID] int IDENTITY(1,1) NOT NULL,
    [Förnamn] nvarchar(max)  NOT NULL,
    [Efternamn] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Stad] nvarchar(max)  NOT NULL,
    [VänListID] int  NOT NULL
);
GO

-- Creating table 'InloggningSet'
CREATE TABLE [dbo].[InloggningSet] (
    [LoginID] int IDENTITY(1,1) NOT NULL,
    [AnvändareEmail] int  NOT NULL,
    [Lösenord] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BildSet'
CREATE TABLE [dbo].[BildSet] (
    [BildID] int IDENTITY(1,1) NOT NULL,
    [AnvändareId] int  NOT NULL,
    [ProfilID] int  NOT NULL
);
GO

-- Creating table 'ProfilSet'
CREATE TABLE [dbo].[ProfilSet] (
    [ProfilID] int IDENTITY(1,1) NOT NULL,
    [Intressen] nvarchar(max)  NOT NULL,
    [Söker] nvarchar(max)  NOT NULL,
    [AnvändareId] int  NOT NULL,
    [Sökbar] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VänlistaSet'
CREATE TABLE [dbo].[VänlistaSet] (
    [VänListID] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AnvändarID] in table 'AnvändareSet'
ALTER TABLE [dbo].[AnvändareSet]
ADD CONSTRAINT [PK_AnvändareSet]
    PRIMARY KEY CLUSTERED ([AnvändarID] ASC);
GO

-- Creating primary key on [LoginID] in table 'InloggningSet'
ALTER TABLE [dbo].[InloggningSet]
ADD CONSTRAINT [PK_InloggningSet]
    PRIMARY KEY CLUSTERED ([LoginID] ASC);
GO

-- Creating primary key on [BildID] in table 'BildSet'
ALTER TABLE [dbo].[BildSet]
ADD CONSTRAINT [PK_BildSet]
    PRIMARY KEY CLUSTERED ([BildID] ASC);
GO

-- Creating primary key on [ProfilID] in table 'ProfilSet'
ALTER TABLE [dbo].[ProfilSet]
ADD CONSTRAINT [PK_ProfilSet]
    PRIMARY KEY CLUSTERED ([ProfilID] ASC);
GO

-- Creating primary key on [VänListID] in table 'VänlistaSet'
ALTER TABLE [dbo].[VänlistaSet]
ADD CONSTRAINT [PK_VänlistaSet]
    PRIMARY KEY CLUSTERED ([VänListID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AnvändareId] in table 'BildSet'
ALTER TABLE [dbo].[BildSet]
ADD CONSTRAINT [FK_AnvändareBild]
    FOREIGN KEY ([AnvändareId])
    REFERENCES [dbo].[AnvändareSet]
        ([AnvändarID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareBild'
CREATE INDEX [IX_FK_AnvändareBild]
ON [dbo].[BildSet]
    ([AnvändareId]);
GO

-- Creating foreign key on [AnvändareId] in table 'ProfilSet'
ALTER TABLE [dbo].[ProfilSet]
ADD CONSTRAINT [FK_AnvändareProfil]
    FOREIGN KEY ([AnvändareId])
    REFERENCES [dbo].[AnvändareSet]
        ([AnvändarID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareProfil'
CREATE INDEX [IX_FK_AnvändareProfil]
ON [dbo].[ProfilSet]
    ([AnvändareId]);
GO

-- Creating foreign key on [AnvändareEmail] in table 'InloggningSet'
ALTER TABLE [dbo].[InloggningSet]
ADD CONSTRAINT [FK_AnvändareInloggning]
    FOREIGN KEY ([AnvändareEmail])
    REFERENCES [dbo].[AnvändareSet]
        ([AnvändarID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareInloggning'
CREATE INDEX [IX_FK_AnvändareInloggning]
ON [dbo].[InloggningSet]
    ([AnvändareEmail]);
GO

-- Creating foreign key on [ProfilID] in table 'BildSet'
ALTER TABLE [dbo].[BildSet]
ADD CONSTRAINT [FK_BildProfil]
    FOREIGN KEY ([ProfilID])
    REFERENCES [dbo].[ProfilSet]
        ([ProfilID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BildProfil'
CREATE INDEX [IX_FK_BildProfil]
ON [dbo].[BildSet]
    ([ProfilID]);
GO

-- Creating foreign key on [VänListID] in table 'AnvändareSet'
ALTER TABLE [dbo].[AnvändareSet]
ADD CONSTRAINT [FK_AnvändareVänlista]
    FOREIGN KEY ([VänListID])
    REFERENCES [dbo].[VänlistaSet]
        ([VänListID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareVänlista'
CREATE INDEX [IX_FK_AnvändareVänlista]
ON [dbo].[AnvändareSet]
    ([VänListID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------