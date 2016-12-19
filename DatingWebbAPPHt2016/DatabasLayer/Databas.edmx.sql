
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/17/2016 16:14:08
-- Generated from EDMX file: C:\Users\Kristoffer\Source\Repos\DateWebAPPHt2016-Project-\DatingWebbAPPHt2016\DatabasLayer\Databas.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DatabasProjekt];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AnvändareSet'
CREATE TABLE [dbo].[AnvändareSet] (
    [AnvändarID] int IDENTITY(1,1) NOT NULL,
    [Förnamn] nvarchar(max)  NOT NULL,
    [Efternamn] nvarchar(max)  NOT NULL,
    [Stad] nvarchar(max)  NOT NULL,
    [BildID] int  NULL,
    [PersNR] nvarchar(max)  NOT NULL,
    [Vänner_Id] int  NULL
);
GO

-- Creating table 'BildSet'
CREATE TABLE [dbo].[BildSet] (
    [BildID] int IDENTITY(1,1) NOT NULL,
    [File] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VännerSet'
CREATE TABLE [dbo].[VännerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProfilSet'
CREATE TABLE [dbo].[ProfilSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Intressen] nvarchar(max)  NOT NULL,
    [Söker] nvarchar(max)  NOT NULL,
    [Sökbar] nvarchar(max)  NOT NULL,
    [AnvändarID] int  NOT NULL,
    [BildID] int  NULL
);
GO

-- Creating table 'InloggningSet'
CREATE TABLE [dbo].[InloggningSet] (
    [LoginID] int IDENTITY(1,1) NOT NULL,
    [AnvändareEmail] nvarchar(max)  NOT NULL,
    [Lösenord] nvarchar(max)  NOT NULL,
    [AnvändarID] int  NOT NULL
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

-- Creating primary key on [BildID] in table 'BildSet'
ALTER TABLE [dbo].[BildSet]
ADD CONSTRAINT [PK_BildSet]
    PRIMARY KEY CLUSTERED ([BildID] ASC);
GO

-- Creating primary key on [Id] in table 'VännerSet'
ALTER TABLE [dbo].[VännerSet]
ADD CONSTRAINT [PK_VännerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProfilSet'
ALTER TABLE [dbo].[ProfilSet]
ADD CONSTRAINT [PK_ProfilSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginID] in table 'InloggningSet'
ALTER TABLE [dbo].[InloggningSet]
ADD CONSTRAINT [PK_InloggningSet]
    PRIMARY KEY CLUSTERED ([LoginID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AnvändarID] in table 'ProfilSet'
ALTER TABLE [dbo].[ProfilSet]
ADD CONSTRAINT [FK_AnvändareProfil]
    FOREIGN KEY ([AnvändarID])
    REFERENCES [dbo].[AnvändareSet]
        ([AnvändarID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareProfil'
CREATE INDEX [IX_FK_AnvändareProfil]
ON [dbo].[ProfilSet]
    ([AnvändarID]);
GO

-- Creating foreign key on [AnvändarID] in table 'InloggningSet'
ALTER TABLE [dbo].[InloggningSet]
ADD CONSTRAINT [FK_AnvändareInloggning]
    FOREIGN KEY ([AnvändarID])
    REFERENCES [dbo].[AnvändareSet]
        ([AnvändarID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareInloggning'
CREATE INDEX [IX_FK_AnvändareInloggning]
ON [dbo].[InloggningSet]
    ([AnvändarID]);
GO

-- Creating foreign key on [Vänner_Id] in table 'AnvändareSet'
ALTER TABLE [dbo].[AnvändareSet]
ADD CONSTRAINT [FK_AnvändareVänner]
    FOREIGN KEY ([Vänner_Id])
    REFERENCES [dbo].[VännerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AnvändareVänner'
CREATE INDEX [IX_FK_AnvändareVänner]
ON [dbo].[AnvändareSet]
    ([Vänner_Id]);
GO

-- Creating foreign key on [BildID] in table 'ProfilSet'
ALTER TABLE [dbo].[ProfilSet]
ADD CONSTRAINT [FK_BildProfil]
    FOREIGN KEY ([BildID])
    REFERENCES [dbo].[BildSet]
        ([BildID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BildProfil'
CREATE INDEX [IX_FK_BildProfil]
ON [dbo].[ProfilSet]
    ([BildID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------