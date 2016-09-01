/******		FIL ROUGE		********/
--drop Database FIL_ROUGE
Create Database FIL_ROUGE
go

USE Fil_rouge
go

/********** CLIENTS ***********/
Create schema commercial
CREATE TABLE commercial.Clients(
	ID_Client                        INT IDENTITY (1,1) PRIMARY KEY,
	Particulier_Professionnel        bit,
	Nom_Particulier                  VARCHAR(90) NOT NULL,
	Prenom_Particulier               VARCHAR(80) NOT NULL,
	Nom_Enseigne                     VARCHAR(25),
	No_Siret                         FLoat,
	Adresse_Facturation              VARCHAR(150),
	Code_Postal_Facturation          VARCHAR (8),
	Ville_Facturation                VARCHAR(60),
	Adresse_Livraison                VARCHAR(150) NOT NULL,
	Code_Postal_Livraison            VARCHAR(8) NOT NULL,
	Ville_Livraison                  VARCHAR(60) NOT NULL,
	No_Telephone_Client              Varchar(16) NOT NULL,
	No_Fax_Client                    Varchar(16),
	Mail_Client                      VARCHAR(80) NOT NULL,
	Condition_Reglement_Particulier  VARCHAR(25),
	Condition_Reglement_Professionel VARCHAR(25),
	Remise                           INT,
	Coefficient                      INT
)
go
Create index Nom_Prenom_Client on commercial.Clients (Nom_Particulier, Prenom_Particulier)
go
/********** Article ***********/
Create schema Marketing
CREATE TABLE Marketing.Article(
	ID_Article            INT IDENTITY (1,1) PRIMARY KEY,
	Nom_Article           VARCHAR(50) NOT NULL,
	Marque_Article        VARCHAR(50) NOT NULL,
	Libelle_Court         VARCHAR(50) NOT NULL,
	Description           VARCHAR(200)NOT NULL,
	Reference_Fournisseur INT NOT NULL,
	Prix_Vente_HT         NUMERIC(8,2) NOT NULL,
	Image_Article         VARBINARY(MAX),
	Stock_Article         INT,
	Prix_Achat            numeric(8,2) NOT NULL
)
go
Create index Nom_Marque_Article on Marketing.Article (Nom_Article, Marque_Article)
go
/********** Fournisseurs ***********/

CREATE TABLE Marketing.Fournisseur(
	ID_Fournisseur           INT IDENTITY (1,1) PRIMARY KEY,
	Nom_Fournisseur          VARCHAR(50) NOT NULL,
	Nom_Contact_Fournisseur  VARCHAR(50),
	Adresse_Fournisseur      VARCHAR(150) NOT NULL,
	Code_Postal_Forunisseur  VARCHAR (8) NOT NULL,
	Ville_Forunisseur        VARCHAR(50) NOT NULL,
	No_Telephone_Fournisseur Varchar(16),
	No_Fax_Fournisseur       Varchar(16),
	Mail_Fournisseur         VARCHAR(80) NOT NULL,
	Importateur              bit,
)
go
Create index Nom_Du_Fournisseur on Marketing.Fournisseur (Nom_Fournisseur)
go
/********** Commercial ***********/

CREATE TABLE commercial.Commercial(
	ID_Commercial           INT IDENTITY (1,1) PRIMARY KEY,
	Nom_Commercial          VARCHAR(25) NOT NULL,
	Prenom_Commercial       VARCHAR(25) NOT NULL,
	No_Telephone_Commercial INT NOT NULL,
	Commercial_Particulier  bit
)
go
Create index Nom_du_Commercial on commercial.commercial (Nom_Commercial)
go
/********** Commande ***********/

CREATE TABLE commercial.Commande(
	ID_Commande         INT IDENTITY (1,1) PRIMARY KEY,
	Montant_a_regler    NUMERIC (10,2) NOT NULL,
	Date_De_Facturation DATETIME NOT NULL,
	Mode_De_Paiement    VARCHAR (25) NOT NULL,
	Montant_HT          NUMERIC (10,2) NOT NULL,
	Date_Reglement      DATETIME NOT NULL,
	Montant_Regle       NUMERIC (10,2)  NOT NULL,
	TVA                 INT  NOT NULL,
	Date_Commande       DATETIME NOT NULL DEFAULT Getdate(),
	ID_Client           INT NOT NULL references commercial.Clients(ID_CLient)
	)	
/********** Livraison ***********/
CREATE TABLE commercial.Livraison(
	ID_Bon_Livraison INT IDENTITY (1,1) PRIMARY KEY,
	Date_Expedition  DATE Default NULL,
	ID_Commande      INT NOT NULL references commercial.Commande(ID_Commande)
)
go
/********** Rubrique ***********/
Create Table Marketing.Sous_Rubrique(
	Code_Famille   INT  PRIMARY KEY,
	Nom_Rubrique   VARCHAR (25) NOT NULL,
	Code_Famille_1 INT references Marketing.Sous_Rubrique(Code_Famille)
	)	
go
/********** Appartient ***********/
CREATE TABLE Marketing.Appartient_a(
	ID_Article   INT  NOT NULL references Marketing.Article(ID_Article),
	Code_Famille INT  NOT NULL references Marketing.Sous_Rubrique(Code_Famille),
	PRIMARY KEY  (ID_Article,Code_Famille)
)
go
/********** Contient ***********/

CREATE TABLE commercial.Contient(
	Quantite_Article INT NOT NULL,
	Prix_De_Vente_HT NUMERIC(8,2) NOT NULL,
	ID_Commande      INT  NOT NULL references commercial.Commande(ID_Commande),
	ID_Article       INT  NOT NULL references Marketing.Article(ID_Article),
	PRIMARY KEY  (ID_Commande,ID_Article)
)
go
/********** Vend ***********/
CREATE TABLE Marketing.Vend(
	Quantite_Fournisseur   INT NOT NULL,
	No_Bon_Livraison       INT NOT NULL,
	Date_Livraison         DATE NULL Default Null,
	Prix_Achat_Fournisseur NUMERIC(8,2) NOT NULL,
	ID_Fournisseur         INT  NOT NULL references Marketing.Fournisseur(ID_Fournisseur),
	ID_Article             INT  NOT NULL references Marketing.Article(ID_Article),
	PRIMARY KEY (ID_Fournisseur,ID_Article)
)
go
/********** Gère ***********/

CREATE TABLE Gere(
	ID_Client     INT  NOT NULL references commercial.Clients(ID_CLient),
	ID_Commercial INT  NOT NULL references commercial.Commercial(ID_commercial),
	PRIMARY KEY (ID_Client,ID_Commercial)
)
go
/********** Comprend ***********/

CREATE TABLE commercial.Comprend(
	Quantite_Livre   INT,
	ID_Article       INT  NOT NULL references Marketing.Article(ID_Article),
	ID_Bon_Livraison INT  NOT NULL references commercial.Livraison(ID_Bon_Livraison)
	PRIMARY KEY (ID_Article,ID_Bon_Livraison)
)
go
/********** Délivre ***********/

CREATE TABLE Delivre(
	Date_Livraison   DATE null Default Null,
	ID_Client        INT  NOT NULL references commercial.Clients(ID_CLient),
	ID_Bon_Livraison INT  NOT NULL references commercial.Livraison(ID_Bon_Livraison),
	PRIMARY KEY  (ID_Client,ID_Bon_Livraison)
)
go