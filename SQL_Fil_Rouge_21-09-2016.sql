USE [master]
GO
 Object  Database [FIL_ROUGE]    Script Date 21092016 165308 
CREATE DATABASE [FIL_ROUGE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FIL_ROUGE', FILENAME = N'CProgram FilesMicrosoft SQL ServerMSSQL12.MSSQLSERVERMSSQLDATAFIL_ROUGE.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FIL_ROUGE_log', FILENAME = N'CProgram FilesMicrosoft SQL ServerMSSQL12.MSSQLSERVERMSSQLDATAFIL_ROUGE_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FIL_ROUGE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FIL_ROUGE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FIL_ROUGE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET ARITHABORT OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FIL_ROUGE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FIL_ROUGE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FIL_ROUGE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FIL_ROUGE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET RECOVERY FULL 
GO
ALTER DATABASE [FIL_ROUGE] SET  MULTI_USER 
GO
ALTER DATABASE [FIL_ROUGE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FIL_ROUGE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FIL_ROUGE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FIL_ROUGE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FIL_ROUGE] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FIL_ROUGE]
GO
 Object  Schema [commercial]    Script Date 21092016 165308 
CREATE SCHEMA [commercial]
GO
 Object  Schema [Marketing]    Script Date 21092016 165308 
CREATE SCHEMA [Marketing]
GO
 Object  Table [commercial].[Clients]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [commercial].[Clients](
	[ID_Client] [int] IDENTITY(1,1) NOT NULL,
	[Particulier_Professionnel] [bit] NULL,
	[Nom_Particulier] [varchar](90) NOT NULL,
	[Prenom_Particulier] [varchar](80) NOT NULL,
	[Nom_Enseigne] [varchar](25) NULL,
	[No_Siret] [float] NULL,
	[Adresse_Facturation] [varchar](150) NULL,
	[Code_Postal_Facturation] [varchar](8) NULL,
	[Ville_Facturation] [varchar](60) NULL,
	[Adresse_Livraison] [varchar](150) NOT NULL,
	[Code_Postal_Livraison] [varchar](8) NOT NULL,
	[Ville_Livraison] [varchar](60) NOT NULL,
	[No_Telephone_Client] [varchar](16) NOT NULL,
	[No_Fax_Client] [varchar](16) NULL,
	[Mail_Client] [varchar](80) NOT NULL,
	[Condition_Reglement_Particulier] [varchar](25) NULL,
	[Condition_Reglement_Professionel] [varchar](25) NULL,
	[Remise] [int] NULL,
	[Coefficient] [int] NULL,
	[CompAdresLiv] [varchar](80) NULL,
	[CompAdresFact] [varchar](80) NULL,
	[Tel_Portable] [varchar](16) NULL,
	[Civilite] [bit] NULL,
	[Statut] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [commercial].[Commande]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [commercial].[Commande](
	[ID_Commande] [int] IDENTITY(1,1) NOT NULL,
	[Montant_a_regler] [numeric](10, 2) NOT NULL,
	[Date_De_Facturation] [datetime] NOT NULL,
	[Mode_De_Paiement] [varchar](25) NOT NULL,
	[Montant_HT] [numeric](10, 2) NOT NULL,
	[Date_Reglement] [datetime] NOT NULL,
	[Montant_Regle] [numeric](10, 2) NOT NULL,
	[TVA] [int] NOT NULL,
	[Date_Commande] [datetime] NOT NULL DEFAULT (getdate()),
	[ID_Client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Commande] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [commercial].[Commercial]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [commercial].[Commercial](
	[ID_Commercial] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Commercial] [varchar](25) NOT NULL,
	[Prenom_Commercial] [varchar](25) NOT NULL,
	[No_Telephone_Commercial] [int] NOT NULL,
	[Commercial_Particulier] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Commercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [commercial].[Comprend]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [commercial].[Comprend](
	[Quantite_Livre] [int] NULL,
	[ID_Article] [int] NOT NULL,
	[ID_Bon_Livraison] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Article] ASC,
	[ID_Bon_Livraison] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [commercial].[Contient]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [commercial].[Contient](
	[Quantite_Article] [int] NOT NULL,
	[Prix_De_Vente_HT] [numeric](8, 2) NOT NULL,
	[ID_Commande] [int] NOT NULL,
	[ID_Article] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Commande] ASC,
	[ID_Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [commercial].[Livraison]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [commercial].[Livraison](
	[ID_Bon_Livraison] [int] IDENTITY(1,1) NOT NULL,
	[Date_Expedition] [date] NULL DEFAULT (NULL),
	[ID_Commande] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Bon_Livraison] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [dbo].[Delivre]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivre](
	[Date_Livraison] [date] NULL DEFAULT (NULL),
	[ID_Client] [int] NOT NULL,
	[ID_Bon_Livraison] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC,
	[ID_Bon_Livraison] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [dbo].[Gere]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gere](
	[ID_Client] [int] NOT NULL,
	[ID_Commercial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC,
	[ID_Commercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [Marketing].[Appartient_a]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Marketing].[Appartient_a](
	[ID_Article] [int] NOT NULL,
	[Code_Famille] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Article] ASC,
	[Code_Famille] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
 Object  Table [Marketing].[Article]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Marketing].[Article](
	[ID_Article] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Article] [varchar](50) NOT NULL,
	[Marque_Article] [varchar](50) NOT NULL,
	[Libelle_Court] [varchar](50) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[Reference_Fournisseur] [int] NOT NULL,
	[Prix_Vente_HT] [numeric](8, 2) NOT NULL,
	[Image_Article] [varbinary](max) NULL,
	[Stock_Article] [int] NULL,
	[Prix_Achat] [numeric](8, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [Marketing].[Fournisseur]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Marketing].[Fournisseur](
	[ID_Fournisseur] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Fournisseur] [varchar](50) NOT NULL,
	[Nom_Contact_Fournisseur] [varchar](50) NULL,
	[Adresse_Fournisseur] [varchar](150) NOT NULL,
	[Code_Postal_Forunisseur] [varchar](8) NOT NULL,
	[Ville_Forunisseur] [varchar](50) NOT NULL,
	[No_Telephone_Fournisseur] [varchar](16) NULL,
	[No_Fax_Fournisseur] [varchar](16) NULL,
	[Mail_Fournisseur] [varchar](80) NOT NULL,
	[Importateur] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Fournisseur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [Marketing].[Sous_Rubrique]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Marketing].[Sous_Rubrique](
	[Code_Famille] [int] NOT NULL,
	[Nom_Rubrique] [varchar](25) NOT NULL,
	[Code_Famille_1] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code_Famille] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
 Object  Table [Marketing].[Vend]    Script Date 21092016 165308 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Marketing].[Vend](
	[Quantite_Fournisseur] [int] NOT NULL,
	[No_Bon_Livraison] [int] NOT NULL,
	[Date_Livraison] [date] NULL DEFAULT (NULL),
	[Prix_Achat_Fournisseur] [numeric](8, 2) NOT NULL,
	[ID_Fournisseur] [int] NOT NULL,
	[ID_Article] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Fournisseur] ASC,
	[ID_Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
 Object  Index [Nom_Prenom_Client]    Script Date 21092016 165308 
CREATE NONCLUSTERED INDEX [Nom_Prenom_Client] ON [commercial].[Clients]
(
	[Nom_Particulier] ASC,
	[Prenom_Particulier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
 Object  Index [Nom_du_Commercial]    Script Date 21092016 165308 
CREATE NONCLUSTERED INDEX [Nom_du_Commercial] ON [commercial].[Commercial]
(
	[Nom_Commercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
 Object  Index [Nom_Marque_Article]    Script Date 21092016 165308 
CREATE NONCLUSTERED INDEX [Nom_Marque_Article] ON [Marketing].[Article]
(
	[Nom_Article] ASC,
	[Marque_Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
 Object  Index [Nom_Du_Fournisseur]    Script Date 21092016 165308 
CREATE NONCLUSTERED INDEX [Nom_Du_Fournisseur] ON [Marketing].[Fournisseur]
(
	[Nom_Fournisseur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [commercial].[Commande]  WITH CHECK ADD FOREIGN KEY([ID_Client])
REFERENCES [commercial].[Clients] ([ID_Client])
GO
ALTER TABLE [commercial].[Comprend]  WITH CHECK ADD FOREIGN KEY([ID_Article])
REFERENCES [Marketing].[Article] ([ID_Article])
GO
ALTER TABLE [commercial].[Comprend]  WITH CHECK ADD FOREIGN KEY([ID_Bon_Livraison])
REFERENCES [commercial].[Livraison] ([ID_Bon_Livraison])
GO
ALTER TABLE [commercial].[Contient]  WITH CHECK ADD FOREIGN KEY([ID_Article])
REFERENCES [Marketing].[Article] ([ID_Article])
GO
ALTER TABLE [commercial].[Contient]  WITH CHECK ADD FOREIGN KEY([ID_Commande])
REFERENCES [commercial].[Commande] ([ID_Commande])
GO
ALTER TABLE [commercial].[Livraison]  WITH CHECK ADD FOREIGN KEY([ID_Commande])
REFERENCES [commercial].[Commande] ([ID_Commande])
GO
ALTER TABLE [dbo].[Delivre]  WITH CHECK ADD FOREIGN KEY([ID_Bon_Livraison])
REFERENCES [commercial].[Livraison] ([ID_Bon_Livraison])
GO
ALTER TABLE [dbo].[Delivre]  WITH CHECK ADD FOREIGN KEY([ID_Client])
REFERENCES [commercial].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[Gere]  WITH CHECK ADD FOREIGN KEY([ID_Client])
REFERENCES [commercial].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[Gere]  WITH CHECK ADD FOREIGN KEY([ID_Commercial])
REFERENCES [commercial].[Commercial] ([ID_Commercial])
GO
ALTER TABLE [Marketing].[Appartient_a]  WITH CHECK ADD FOREIGN KEY([Code_Famille])
REFERENCES [Marketing].[Sous_Rubrique] ([Code_Famille])
GO
ALTER TABLE [Marketing].[Appartient_a]  WITH CHECK ADD FOREIGN KEY([ID_Article])
REFERENCES [Marketing].[Article] ([ID_Article])
GO
ALTER TABLE [Marketing].[Sous_Rubrique]  WITH CHECK ADD FOREIGN KEY([Code_Famille_1])
REFERENCES [Marketing].[Sous_Rubrique] ([Code_Famille])
GO
ALTER TABLE [Marketing].[Vend]  WITH CHECK ADD FOREIGN KEY([ID_Article])
REFERENCES [Marketing].[Article] ([ID_Article])
GO
ALTER TABLE [Marketing].[Vend]  WITH CHECK ADD FOREIGN KEY([ID_Fournisseur])
REFERENCES [Marketing].[Fournisseur] ([ID_Fournisseur])
GO
USE [master]
GO
ALTER DATABASE [FIL_ROUGE] SET  READ_WRITE 
GO
