/******		FIL ROUGE		********/

Create Database FIL_ROUGE
go

USE Fil_rouge
go

/********** CLIENTS ***********/
Create schema commercial
CREATE TABLE Clients(
	ID_Client                        INT IDENTITY (1,1) PRIMARY KEY,
	Particulier_Professionnel        bit  NOT NULL,
	Nom_Particulier                  VARCHAR(50) NOT NULL,
	Prenom_Particulier               VARCHAR(50) NOT NULL,
	Nom_Enseigne                     VARCHAR(25) NOT NULL,
	No_Siret                         INT  NOT NULL,
	Adresse_Facturation              VARCHAR(150),
	Code_Postal_Facturation          VARCHAR (8),
	Ville_Facturation                VARCHAR(60),
	Adresse_Livraison                VARCHAR(150) NOT NULL,
	Code_Postal_Livraison            VARCHAR (8) NOT NULL,
	Ville_Livraison                  VARCHAR(60) NOT NULL,
	No_Telephone_Client              INT NOT NULL,
	No_Fax_Client                    INT,
	Mail_Client                      VARCHAR(80) NOT NULL,
	Condition_Reglement_Particulier  VARCHAR(25) NOT NULL,
	Condition_Reglement_Professionel VARCHAR(25) NOT NULL,
	Remise                           INT  NOT NULL,
	Coefficient                      INT  NOT NULL
)
go
/********** Article ***********/

CREATE TABLE Article(
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
/********** Fournisseurs ***********/

CREATE TABLE Fournisseur(
	ID_Fournisseur           INT IDENTITY (1,1) PRIMARY KEY,
	Nom_Fournisseur          VARCHAR(50) NOT NULL,
	Nom_Contact_Fournisseur  VARCHAR(50) NOT NULL,
	Adresse_Fournisseur      VARCHAR(150) NOT NULL,
	Code_Postal_Forunisseur  VARCHAR (8) NOT NULL,
	Ville_Forunisseur        VARCHAR(50) NOT NULL,
	No_Telephone_Fournisseur INT NOT NULL,
	No_Fax_Fournisseur       INT NOT NULL,
	Mail_Fournisseur         VARCHAR(80) NOT NULL,
	Importateur              bit,
)
go
/********** Commercial ***********/

CREATE TABLE Commercial(
	ID_Commercial           INT IDENTITY (1,1) PRIMARY KEY,
	Nom_Commercial          VARCHAR(25) NOT NULL,
	Prenom_Commercial       VARCHAR(25) NOT NULL,
	No_Telephone_Commercial INT NOT NULL,
	Commercial_Particulier  bit
)
go
/********** Commande ***********/

CREATE TABLE Commande(
	ID_Commande         INT IDENTITY (1,1) PRIMARY KEY,
	Montant_a_regler    NUMERIC (10,2) NOT NULL,
	Date_De_Facturation DATETIME NOT NULL,
	Mode_De_Paiement    VARCHAR (25) NOT NULL,
	Montant_HT          INT  NOT NULL,
	Date_Reglement      DATETIME NOT NULL,
	Montant_Regle       INT  NOT NULL,
	TVA                 INT  NOT NULL,
	Date_Commande       DATETIME NOT NULL DEFAULT Getdate(),
	ID_Client           INT NOT NULL references Clients(ID_CLient),
	Montant_Regle_Paye  INT  NOT NULL,
	Date_Reglement_Paye DATETIME DEFAULT GETDATE()
	)	
/********** Livraison ***********/
CREATE TABLE Livraison(
	ID_Bon_Livraison INT IDENTITY (1,1) PRIMARY KEY,
	Date_Expedition  DATETIME NOT NULL,
	ID_Commande      INT NOT NULL references Commande(ID_Commande)
)
go
/********** Rubrique ***********/

Create Table Sous_Rubrique(
	Code_Famille   INT  PRIMARY KEY,
	Nom_Rubrique   VARCHAR (25) NOT NULL,
	Code_Famille_1 INT references Sous_Rubrique(Code_Famille)
	)	
go
/********** Appartient ***********/

CREATE TABLE Appartient_a(
	ID_Article   INT  NOT NULL references Article(ID_Article),
	Code_Famille INT  NOT NULL references Sous_Rubrique(Code_Famille),
	PRIMARY KEY  (ID_Article,Code_Famille)
)
go
/********** Contient ***********/

CREATE TABLE Contient(
	Quantite_Article INT NOT NULL,
	Prix_De_Vente_HT NUMERIC(8,2) NOT NULL,
	ID_Commande      INT  NOT NULL references Commande(ID_Commande),
	ID_Article       INT  NOT NULL references Article(ID_Article),
	PRIMARY KEY  (ID_Commande,ID_Article)
)
go
/********** Vend ***********/

CREATE TABLE Vend(
	Quantite_Fournisseur   INT NOT NULL,
	No_Bon_Livraison       INT NOT NULL,
	Date_Livraison         DATETIME NOT NULL,
	Prix_Achat_Fournisseur NUMERIC(8,2) NOT NULL,
	ID_Fournisseur         INT  NOT NULL references Fournisseur(ID_Fournisseur),
	ID_Article             INT  NOT NULL references Article(ID_Article),
	PRIMARY KEY (ID_Fournisseur,ID_Article)
)
go
/********** Gère ***********/

CREATE TABLE Gere(
	ID_Client     INT  NOT NULL references Clients(ID_CLient),
	ID_Commercial INT  NOT NULL references Commercial(ID_commercial),
	PRIMARY KEY (ID_Client,ID_Commercial)
)
go
/********** Comprend ***********/

CREATE TABLE Comprend(
	Quantite_Livre   INT,
	ID_Article       INT  NOT NULL references Article(ID_Article),
	ID_Bon_Livraison INT  NOT NULL references Livraison(ID_Bon_Livraison)
	PRIMARY KEY (ID_Article,ID_Bon_Livraison)
)
go
/********** Délivre ***********/

CREATE TABLE Delivre(
	Date_Livraison   DATETIME,
	ID_Client        INT  NOT NULL references Clients(ID_CLient),
	ID_Bon_Livraison INT  NOT NULL references Livraison(ID_Bon_Livraison),
	PRIMARY KEY  (ID_Client,ID_Bon_Livraison)
)
go