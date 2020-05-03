
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/02/2020 21:22:48
-- Generated from EDMX file: C:\Users\Orlando\source\repos\Congelistos\CongelistosModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Congelistos];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Compra_Proveedor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor];
GO
IF OBJECT_ID(N'[dbo].[FK_Detalle_Pedido]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Detalle] DROP CONSTRAINT [FK_Detalle_Pedido];
GO
IF OBJECT_ID(N'[dbo].[FK_Detalle_Producto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Detalle] DROP CONSTRAINT [FK_Detalle_Producto];
GO
IF OBJECT_ID(N'[dbo].[FK_Materia_Prima_Compra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Materia_Prima] DROP CONSTRAINT [FK_Materia_Prima_Compra];
GO
IF OBJECT_ID(N'[dbo].[FK_Pedido_Cliente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Cliente];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cliente];
GO
IF OBJECT_ID(N'[dbo].[Compra]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Compra];
GO
IF OBJECT_ID(N'[dbo].[Detalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Detalle];
GO
IF OBJECT_ID(N'[dbo].[Materia_Prima]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Materia_Prima];
GO
IF OBJECT_ID(N'[dbo].[Pedido]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pedido];
GO
IF OBJECT_ID(N'[dbo].[Producto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Producto];
GO
IF OBJECT_ID(N'[dbo].[Proveedor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Proveedor];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cliente'
CREATE TABLE [dbo].[Cliente] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(50)  NOT NULL,
    [Apellido] nvarchar(50)  NOT NULL,
    [Telefono] nvarchar(10)  NOT NULL,
    [Direccion] nvarchar(60)  NOT NULL
);
GO

-- Creating table 'Compra'
CREATE TABLE [dbo].[Compra] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha_Compra] datetime  NOT NULL,
    [Total] decimal(19,4)  NOT NULL,
    [Descripcion] nvarchar(150)  NULL,
    [Lugar] nvarchar(50)  NULL,
    [Id_proveedor] int  NOT NULL
);
GO

-- Creating table 'Detalle'
CREATE TABLE [dbo].[Detalle] (
    [id] int  NOT NULL,
    [Id_Producto] int  NOT NULL,
    [idPedido] int  NOT NULL,
    [Cantidad] int  NOT NULL
);
GO

-- Creating table 'Materia_Prima'
CREATE TABLE [dbo].[Materia_Prima] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(50)  NOT NULL,
    [Precio] decimal(19,4)  NOT NULL,
    [Cantidad] int  NOT NULL,
    [Tipo_Granel] nchar(10)  NOT NULL,
    [Id_Compra] int  NOT NULL
);
GO

-- Creating table 'Pedido'
CREATE TABLE [dbo].[Pedido] (
    [Id] int  NOT NULL,
    [Fecha_pedido] datetime  NOT NULL,
    [Fecha_entrega] datetime  NOT NULL,
    [Total] decimal(18,2)  NOT NULL,
    [Entregado] bit  NOT NULL,
    [Observaciones] nvarchar(100)  NOT NULL,
    [Id_Cliente] int  NOT NULL,
    [SubTotal] decimal(18,2)  NOT NULL,
    [Descuento] int  NULL
);
GO

-- Creating table 'Producto'
CREATE TABLE [dbo].[Producto] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(60)  NOT NULL,
    [Precio] decimal(19,4)  NOT NULL,
    [Peso] int  NOT NULL,
    [UnidadDeMedida] nchar(10)  NOT NULL,
    [Descripcion] nvarchar(100)  NULL,
    [Stock] int  NOT NULL
);
GO

-- Creating table 'Proveedor'
CREATE TABLE [dbo].[Proveedor] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(100)  NOT NULL,
    [Telefono] nvarchar(10)  NOT NULL,
    [Direccion] nchar(10)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [PK_Cliente]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Compra'
ALTER TABLE [dbo].[Compra]
ADD CONSTRAINT [PK_Compra]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Detalle'
ALTER TABLE [dbo].[Detalle]
ADD CONSTRAINT [PK_Detalle]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Materia_Prima'
ALTER TABLE [dbo].[Materia_Prima]
ADD CONSTRAINT [PK_Materia_Prima]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [PK_Pedido]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Producto'
ALTER TABLE [dbo].[Producto]
ADD CONSTRAINT [PK_Producto]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Proveedor'
ALTER TABLE [dbo].[Proveedor]
ADD CONSTRAINT [PK_Proveedor]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id_Cliente] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [FK_Pedido_Cliente]
    FOREIGN KEY ([Id_Cliente])
    REFERENCES [dbo].[Cliente]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Pedido_Cliente'
CREATE INDEX [IX_FK_Pedido_Cliente]
ON [dbo].[Pedido]
    ([Id_Cliente]);
GO

-- Creating foreign key on [Id_proveedor] in table 'Compra'
ALTER TABLE [dbo].[Compra]
ADD CONSTRAINT [FK_Compra_Proveedor]
    FOREIGN KEY ([Id_proveedor])
    REFERENCES [dbo].[Proveedor]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Compra_Proveedor'
CREATE INDEX [IX_FK_Compra_Proveedor]
ON [dbo].[Compra]
    ([Id_proveedor]);
GO

-- Creating foreign key on [Id_Compra] in table 'Materia_Prima'
ALTER TABLE [dbo].[Materia_Prima]
ADD CONSTRAINT [FK_Materia_Prima_Compra]
    FOREIGN KEY ([Id_Compra])
    REFERENCES [dbo].[Compra]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Materia_Prima_Compra'
CREATE INDEX [IX_FK_Materia_Prima_Compra]
ON [dbo].[Materia_Prima]
    ([Id_Compra]);
GO

-- Creating foreign key on [idPedido] in table 'Detalle'
ALTER TABLE [dbo].[Detalle]
ADD CONSTRAINT [FK_Detalle_Pedido]
    FOREIGN KEY ([idPedido])
    REFERENCES [dbo].[Pedido]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Detalle_Pedido'
CREATE INDEX [IX_FK_Detalle_Pedido]
ON [dbo].[Detalle]
    ([idPedido]);
GO

-- Creating foreign key on [Id_Producto] in table 'Detalle'
ALTER TABLE [dbo].[Detalle]
ADD CONSTRAINT [FK_Detalle_Producto]
    FOREIGN KEY ([Id_Producto])
    REFERENCES [dbo].[Producto]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Detalle_Producto'
CREATE INDEX [IX_FK_Detalle_Producto]
ON [dbo].[Detalle]
    ([Id_Producto]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------