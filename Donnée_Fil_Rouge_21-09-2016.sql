set dateformat ymd
USE [FIL_ROUGE]
GO
SET IDENTITY_INSERT [commercial].[Clients] ON 

GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (1, 0, N'Michelet', N'Pierre', NULL, NULL, NULL, NULL, NULL, N'12 rue du haut', N'62100', N'Tataouine', N'0322121314', NULL, N'machin@machin.com', N'Paiement immédiat', NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Inactif   ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (2, 1, N'Pointcarré', N'Marie', N'Discobal', 1012211456, N'55 rue d''en face', N'52114', N'labas', N'7 avenue d''ici', N'75000', N'', N'0122555657', N'0122555658', N'machin@discobal.fr', NULL, N'Paiement différé', 2, NULL, N'', N'', N'', 0, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (3, 1, N'Leclerc', N'Antoine', N'Facila', 222554548, NULL, NULL, NULL, N'55 boulevard LALA', N'80200', N'flixecourt', N'0321222324', NULL, N'bidul@facila.net', NULL, N'Paiement différé', 1, 2, NULL, NULL, NULL, 1, N'Inactif   ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (4, 0, N'Roussent', N'Roger', NULL, NULL, N'22 rue vla les flics', N'91111', N'SOS', N'24 rue de labas', N'46123', N'parici', N'0685888888', NULL, N'alainjean@jj.fr', N'Paiement immédiat', NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (5, 0, N'Marc', N'Antoine', N'', NULL, N'', N'', N'', N'35 rue de paris', N'80000', N'', N'0122553366', N'', N'Marc@antoine.fr', N'Paiement immédiat', NULL, NULL, NULL, N'', N'', N'', 1, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (6, 0, N'Patre', N'Cléo', NULL, NULL, NULL, NULL, NULL, N'58 place de  beauvais', N'60175', N'Roye', N'0366998855', NULL, N'Cléo@patre.fr', N'Paiement immédiat', NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (7, 1, N'César', N'Jules', N'Roma', 284818941, N'', N'', N'', N'20 place d''Italie', N'75015', N'', N'0244556622', N'', N'Jules@cesar.it', NULL, N'Paiement différé', 2, NULL, N'', N'', N'', 1, N'Inactif   ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (8, 0, N'sefsdf', N'dhdhdhdh', N'', NULL, N'hdhd vbbrd', N'646464', N'46464', N'', N'', N'', N'76351', N'1234869', N'seefzsf@dgd', NULL, NULL, NULL, 2, N'', N're ee edrf', N'69297', 0, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (9, 0, N'sefsdf', N'dhdhdhdh', N'', NULL, N'hdhd vbbrd', N'646464', N'46464', N'', N'', N'', N'76351', N'1234869', N'seefzsf@dgd', NULL, NULL, NULL, 2, N'', N're ee edrf', N'69297', 0, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (10, 0, N'Fourre', N'Brigitte', N'', NULL, N'', N'80000', N'Amiens', N'', N'', N'', N'0322556699', N'', N'brigitte.four@amiens.fr', NULL, NULL, NULL, 0, N'', N'', N'', 0, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (11, 0, N'Gest', N'alain', N'', NULL, N'fqfsqfqsfs', N'45554', N'zfezuihi', N'', N'', N'', N'84864564', N'4845', N'jhuipj@uihuih', NULL, NULL, NULL, 1, N'', N'HHJUIH', N'87484', 0, N'Actif     ')
GO
INSERT [commercial].[Clients] ([ID_Client], [Particulier_Professionnel], [Nom_Particulier], [Prenom_Particulier], [Nom_Enseigne], [No_Siret], [Adresse_Facturation], [Code_Postal_Facturation], [Ville_Facturation], [Adresse_Livraison], [Code_Postal_Livraison], [Ville_Livraison], [No_Telephone_Client], [No_Fax_Client], [Mail_Client], [Condition_Reglement_Particulier], [Condition_Reglement_Professionel], [Remise], [Coefficient], [CompAdresLiv], [CompAdresFact], [Tel_Portable], [Civilite], [Statut]) VALUES (12, 0, N'Rose', N'Marie', N'', NULL, N'uzfhuiopfh', N'6546', N'uiy_cyh', N'', N'', N'', N'45646456466', N'54646', N'hijuhf@johoui', NULL, NULL, NULL, 1, N'', N'uihfuih', N'64646456', 0, N'Actif     ')
GO
SET IDENTITY_INSERT [commercial].[Clients] OFF
GO
SET IDENTITY_INSERT [commercial].[Commande] ON 

GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (1, CAST(120.00 AS Numeric(10, 2)), CAST(N'2014-01-11 00:00:00.000' AS DateTime), N'Carte Bleue', CAST(100.00 AS Numeric(10, 2)), CAST(N'2014-01-10 00:00:00.000' AS DateTime), CAST(120.00 AS Numeric(10, 2)), 20, CAST(N'2014-01-10 00:00:00.000' AS DateTime), 1)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (2, CAST(80.00 AS Numeric(10, 2)), CAST(N'2014-05-06 00:00:00.000' AS DateTime), N'chèque', CAST(80.00 AS Numeric(10, 2)), CAST(N'2014-06-05 00:00:00.000' AS DateTime), CAST(80.00 AS Numeric(10, 2)), 0, CAST(N'2014-05-05 00:00:00.000' AS DateTime), 2)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (3, CAST(399.00 AS Numeric(10, 2)), CAST(N'2014-06-20 00:00:00.000' AS DateTime), N'Virement', CAST(399.00 AS Numeric(10, 2)), CAST(N'2014-07-20 00:00:00.000' AS DateTime), CAST(399.00 AS Numeric(10, 2)), 0, CAST(N'2014-06-19 00:00:00.000' AS DateTime), 3)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (4, CAST(1718.40 AS Numeric(10, 2)), CAST(N'2014-08-29 00:00:00.000' AS DateTime), N'Carte Bleue', CAST(1432.00 AS Numeric(10, 2)), CAST(N'2014-08-28 00:00:00.000' AS DateTime), CAST(1718.40 AS Numeric(10, 2)), 20, CAST(N'2014-08-28 00:00:00.000' AS DateTime), 4)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (5, CAST(6.00 AS Numeric(10, 2)), CAST(N'2014-12-01 00:00:00.000' AS DateTime), N'Paypal', CAST(5.00 AS Numeric(10, 2)), CAST(N'2014-11-30 00:00:00.000' AS DateTime), CAST(6.00 AS Numeric(10, 2)), 20, CAST(N'2014-11-30 00:00:00.000' AS DateTime), 5)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (6, CAST(7401.60 AS Numeric(10, 2)), CAST(N'2014-12-21 00:00:00.000' AS DateTime), N'E-Carte bleue', CAST(6168.00 AS Numeric(10, 2)), CAST(N'2014-12-20 00:00:00.000' AS DateTime), CAST(7401.60 AS Numeric(10, 2)), 20, CAST(N'2014-12-20 00:00:00.000' AS DateTime), 6)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (7, CAST(1180.00 AS Numeric(10, 2)), CAST(N'2014-12-22 00:00:00.000' AS DateTime), N'Virement', CAST(1180.00 AS Numeric(10, 2)), CAST(N'2015-01-22 00:00:00.000' AS DateTime), CAST(1180.00 AS Numeric(10, 2)), 0, CAST(N'2014-12-21 00:00:00.000' AS DateTime), 7)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (8, CAST(156.25 AS Numeric(10, 2)), CAST(N'2015-01-06 00:00:00.000' AS DateTime), N'Virement', CAST(156.00 AS Numeric(10, 2)), CAST(N'2015-02-01 00:00:00.000' AS DateTime), CAST(156.25 AS Numeric(10, 2)), 0, CAST(N'2015-01-05 00:00:00.000' AS DateTime), 2)
GO
INSERT [commercial].[Commande] ([ID_Commande], [Montant_a_regler], [Date_De_Facturation], [Mode_De_Paiement], [Montant_HT], [Date_Reglement], [Montant_Regle], [TVA], [Date_Commande], [ID_Client]) VALUES (9, CAST(103.00 AS Numeric(10, 2)), CAST(N'2015-09-07 00:00:00.000' AS DateTime), N'Chèque', CAST(103.00 AS Numeric(10, 2)), CAST(N'2015-10-01 00:00:00.000' AS DateTime), CAST(0.00 AS Numeric(10, 2)), 0, CAST(N'2015-09-06 00:00:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [commercial].[Commande] OFF
GO
SET IDENTITY_INSERT [commercial].[Commercial] ON 

GO
INSERT [commercial].[Commercial] ([ID_Commercial], [Nom_Commercial], [Prenom_Commercial], [No_Telephone_Commercial], [Commercial_Particulier]) VALUES (1, N'Mallar', N'Lucas', 221232425, 1)
GO
INSERT [commercial].[Commercial] ([ID_Commercial], [Nom_Commercial], [Prenom_Commercial], [No_Telephone_Commercial], [Commercial_Particulier]) VALUES (2, N'maillot', N'pierre', 322555456, 0)
GO
INSERT [commercial].[Commercial] ([ID_Commercial], [Nom_Commercial], [Prenom_Commercial], [No_Telephone_Commercial], [Commercial_Particulier]) VALUES (3, N'Portic', N'Alain', 421222324, 0)
GO
SET IDENTITY_INSERT [commercial].[Commercial] OFF
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (1, 1)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (2, 2)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (3, 3)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (4, 1)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (5, 1)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (6, 1)
GO
INSERT [dbo].[Gere] ([ID_Client], [ID_Commercial]) VALUES (7, 2)
GO
SET IDENTITY_INSERT [commercial].[Livraison] ON 

GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (1, CAST(N'2014-01-12' AS Date), 1)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (2, CAST(N'2014-05-07' AS Date), 2)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (3, CAST(N'2014-06-21' AS Date), 3)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (4, CAST(N'2014-08-30' AS Date), 4)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (5, CAST(N'2014-11-02' AS Date), 5)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (6, CAST(N'2014-12-22' AS Date), 6)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (7, CAST(N'2014-12-22' AS Date), 7)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (8, CAST(N'2014-12-26' AS Date), 6)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (9, CAST(N'2015-01-05' AS Date), 6)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (10, CAST(N'2015-01-07' AS Date), 8)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (11, CAST(N'2015-09-08' AS Date), 9)
GO
INSERT [commercial].[Livraison] ([ID_Bon_Livraison], [Date_Expedition], [ID_Commande]) VALUES (12, CAST(N'2016-01-15' AS Date), 9)
GO
SET IDENTITY_INSERT [commercial].[Livraison] OFF
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-01-14' AS Date), 1, 1)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-05-09' AS Date), 2, 2)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2015-01-09' AS Date), 2, 10)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-06-23' AS Date), 3, 3)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2015-09-11' AS Date), 3, 11)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-09-02' AS Date), 4, 4)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-11-05' AS Date), 5, 5)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-12-25' AS Date), 6, 6)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2014-12-28' AS Date), 6, 8)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2015-01-07' AS Date), 6, 9)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (CAST(N'2016-09-01' AS Date), 7, 7)
GO
INSERT [dbo].[Delivre] ([Date_Livraison], [ID_Client], [ID_Bon_Livraison]) VALUES (NULL, 7, 12)
GO
SET IDENTITY_INSERT [Marketing].[Article] ON 

GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (1, N'Guitare Classique', N'Kyra', N'Guitare Classique enfant', N'Guitare Classique enfant 3/4 ans ', 123456, CAST(89.00 AS Numeric(8, 2)), NULL, 14, CAST(60.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (2, N'Guitare CS40II', N'Yamaha', N'Guitare classique Yamaha CS40II', N'Guitare classique Yamaha CS40II Naturelle, fait main', 234567, CAST(119.00 AS Numeric(8, 2)), NULL, 9, CAST(80.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (3, N'Guitare Classique  Quinta', N'Elypse', N'Guitare Classique Elypse', N'Guitare Classique Elypse Quinta 4/4', 345678, CAST(79.90 AS Numeric(8, 2)), NULL, 22, CAST(50.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (4, N'Guitare Folk', N'Gaia', N'Guitare Folk Gaia', N'Guitare Folk Gaia Sunburst', 456789, CAST(69.00 AS Numeric(8, 2)), NULL, 5, CAST(40.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (5, N'Guitare electro accoustique', N'Ibanez', N'Guitare electro-accoustique AEG10BK', N'Guitare electro-accoustique AEG10BK Noir', 567890, CAST(239.00 AS Numeric(8, 2)), NULL, 2, CAST(185.50 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (6, N'Caisse Claire', N'Drumtech', N'Caisse claire drumtech', N'Caisse claire  corona standard', 678901, CAST(103.00 AS Numeric(8, 2)), NULL, 5, CAST(60.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (7, N'Batterie accoustique', N'Drumtech', N'Batterie accoustique Drumtech', N'Batterie accoustique Corona 22"', 789012, CAST(399.00 AS Numeric(8, 2)), NULL, 3, CAST(300.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (8, N'Batterie Electronique DM Lite', N'Alesis', N'Batterie Electronique DM Lite Alesis', N'Batterie Electronique DM Lite Alesis DM electronique', 890123, CAST(299.00 AS Numeric(8, 2)), NULL, 4, CAST(220.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (9, N'Triangle', N'Triphaser', N'Triangle 16cm', N'Triangle 16cm Triphaser', 901234, CAST(6.25 AS Numeric(8, 2)), NULL, 20, CAST(2.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (10, N'Trompette', N'Yamaha', N'Trompette Sib', N'Trompette SiB 100% cuivre', 112345, CAST(850.00 AS Numeric(8, 2)), NULL, 3, CAST(600.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (11, N'Saxophone', N'Yamaha', N'Saxophone soprano', N'Saxophone soprano 100% cuivre', 112346, CAST(1325.00 AS Numeric(8, 2)), NULL, 2, CAST(980.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (12, N'Clarinette', N'Yamaha', N'Clarinette Mib', N'Clarinette Mib, instruments des meilleurs virtuoses', 112347, CAST(1180.00 AS Numeric(8, 2)), NULL, 5, CAST(723.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (13, N'Piano Numérique', N'Yamaha', N'Piano numérique P45', N'Piano numérique P45 meilleur son, meilleur jeu', 113456, CAST(449.00 AS Numeric(8, 2)), NULL, 4, CAST(300.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (14, N'Piano à queue', N'Royez Musique', N'Piano à queue royez musique', N'Piano à queue royez musique, clavier en ivoire', 855562, CAST(5890.00 AS Numeric(8, 2)), NULL, 1, CAST(5000.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (15, N'Violon Massif', N'Hartmann', N'Violon Massif 4/4', N'violon Massif 4/4 - Hartmann', 659686, CAST(149.00 AS Numeric(8, 2)), NULL, 4, CAST(80.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (16, N'Harmonica', N'Hohner', N'Harmonica Chromonica ', N' Harmonica Chromonica 12 trous', 98873, CAST(5.00 AS Numeric(8, 2)), NULL, 17, CAST(1.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (17, N'Kazoo', N'Kazoo', N'Kazoo', N'Kazoo', 742563, CAST(3.99 AS Numeric(8, 2)), NULL, 15, CAST(0.50 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (18, N'Partition Piano', N'Partition For Life', N'Partition', N'Partition', 100012, CAST(5.00 AS Numeric(8, 2)), NULL, 7, CAST(1.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (19, N'Partition Guitare', N'Partition For Life', N'Partition', N'Partition', 100011, CAST(5.00 AS Numeric(8, 2)), NULL, 8, CAST(1.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (20, N'Partition Cuivre', N'Partition For Life', N'Partition', N'Partition', 100014, CAST(5.00 AS Numeric(8, 2)), NULL, 9, CAST(1.00 AS Numeric(8, 2)))
GO
INSERT [Marketing].[Article] ([ID_Article], [Nom_Article], [Marque_Article], [Libelle_Court], [Description], [Reference_Fournisseur], [Prix_Vente_HT], [Image_Article], [Stock_Article], [Prix_Achat]) VALUES (21, N'Partition Bois', N'Partition For Life', N'Partition', N'Partition', 100015, CAST(5.00 AS Numeric(8, 2)), NULL, 5, CAST(1.00 AS Numeric(8, 2)))
GO
SET IDENTITY_INSERT [Marketing].[Article] OFF
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (1, N'Instrument à cordes', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (2, N'Instrument à percussion', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (3, N'instrument à vent', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (4, N'instrument à clavier', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (5, N'Instruments traditionnels', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (6, N'Partitions', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (7, N'Accessoires', NULL)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (8, N'Guitares Classique', 1)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (9, N'Guitares accoustique', 1)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (10, N'Guitares Electriques', 1)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (11, N'Violon', 1)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (12, N'Batteries Accoustiques', 2)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (13, N'Batterie Electroniques', 2)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (14, N'Percussion', 2)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (15, N'Cuivre', 3)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (16, N'Bois', 3)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (17, N'Synthétiseurs', 4)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (18, N'Piano', 4)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (19, N'Harmonica', 5)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (20, N'Melodica', 5)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (21, N'Guitares - Basses', 6)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (22, N'Piano - Clavier', 6)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (23, N'Percussions', 6)
GO
INSERT [Marketing].[Sous_Rubrique] ([Code_Famille], [Nom_Rubrique], [Code_Famille_1]) VALUES (24, N'Songbook', 6)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (1, 8)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (2, 8)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (3, 8)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (4, 9)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (5, 10)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (6, 12)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (7, 12)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (8, 13)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (9, 14)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (10, 15)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (11, 15)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (12, 16)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (13, 17)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (14, 18)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (15, 11)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (16, 19)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (17, 20)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (18, 22)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (19, 21)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (20, 24)
GO
INSERT [Marketing].[Appartient_a] ([ID_Article], [Code_Famille]) VALUES (21, 24)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (10, CAST(5.00 AS Numeric(8, 2)), 1, 16)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (10, CAST(5.00 AS Numeric(8, 2)), 1, 17)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (2, CAST(40.00 AS Numeric(8, 2)), 2, 4)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (1, CAST(399.00 AS Numeric(8, 2)), 3, 7)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (5, CAST(119.00 AS Numeric(8, 2)), 4, 2)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (4, CAST(239.00 AS Numeric(8, 2)), 4, 5)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (1, CAST(5.00 AS Numeric(8, 2)), 5, 20)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (2, CAST(89.00 AS Numeric(8, 2)), 6, 1)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (1, CAST(5890.00 AS Numeric(8, 2)), 6, 14)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (20, CAST(5.00 AS Numeric(8, 2)), 6, 18)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (1, CAST(1180.00 AS Numeric(8, 2)), 7, 12)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (25, CAST(6.25 AS Numeric(8, 2)), 8, 9)
GO
INSERT [commercial].[Contient] ([Quantite_Article], [Prix_De_Vente_HT], [ID_Commande], [ID_Article]) VALUES (1, CAST(103.00 AS Numeric(8, 2)), 9, 6)
GO
SET IDENTITY_INSERT [Marketing].[Fournisseur] ON 

GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (1, N'bricard', N'lucien', N'58 rue de la musique', N'56800', N'Pianocity', N'0688878685', N'0388878686', N'lucien@bricard.net', 0)
GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (2, N'Plusvitequelamusique', N'Roger', N'32 rue du mevoila', N'34200', N'Paricioula', N'0155525354', N'0155525355', N'Roger.ff@fcv.com', 1)
GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (3, N'Moinsvitequetoi', N'antoine', N'22 rue marie antoinette', N'25410', N'DainlesBains', N'0212131415', N'0255447821', N'antoine@antoine.com', 0)
GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (4, N'Yamaha', NULL, N'158 rue de la république', N'77000', N'Chelles', N'0112131416', N'0255447822', N'contact@yamaha.fr', 1)
GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (5, N'Royez Musique', NULL, N'296 avenue de la liberation', N'75005', N'Paris', N'0312131417', N'0255447823', N'contact@royezmusique.com', 0)
GO
INSERT [Marketing].[Fournisseur] ([ID_Fournisseur], [Nom_Fournisseur], [Nom_Contact_Fournisseur], [Adresse_Fournisseur], [Code_Postal_Forunisseur], [Ville_Forunisseur], [No_Telephone_Fournisseur], [No_Fax_Fournisseur], [Mail_Fournisseur], [Importateur]) VALUES (6, N'Toutelamusique', N'Pierre', N'5 route de paris', N'62150', N'Arras', N'0252131418', N'0255447824', N'Pierre.tlmusique@musique.org', 0)
GO
SET IDENTITY_INSERT [Marketing].[Fournisseur] OFF
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (14, 123456, CAST(N'2014-02-12' AS Date), CAST(80.00 AS Numeric(8, 2)), 1, 2)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (3, 345678, CAST(N'2014-07-12' AS Date), CAST(40.00 AS Numeric(8, 2)), 1, 4)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (2, 567890, CAST(N'2014-11-29' AS Date), CAST(60.00 AS Numeric(8, 2)), 2, 1)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (8, 456789, CAST(N'2014-11-22' AS Date), CAST(220.00 AS Numeric(8, 2)), 3, 8)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (1, 598774, CAST(N'2014-12-17' AS Date), CAST(2.00 AS Numeric(8, 2)), 4, 9)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (5, 234567, CAST(N'2014-06-05' AS Date), CAST(50.00 AS Numeric(8, 2)), 5, 3)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (4, 589661, CAST(N'2014-12-05' AS Date), CAST(5000.00 AS Numeric(8, 2)), 5, 15)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (5, 623354, CAST(N'2015-04-05' AS Date), CAST(0.50 AS Numeric(8, 2)), 6, 17)
GO
INSERT [Marketing].[Vend] ([Quantite_Fournisseur], [No_Bon_Livraison], [Date_Livraison], [Prix_Achat_Fournisseur], [ID_Fournisseur], [ID_Article]) VALUES (2, 665889, CAST(N'2015-01-01' AS Date), CAST(1.00 AS Numeric(8, 2)), 6, 20)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (2, 1, 6)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (5, 2, 4)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (2, 4, 2)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (4, 5, 4)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 6, 9)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 7, 3)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (25, 9, 8)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 12, 7)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 14, 6)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (10, 16, 1)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (10, 17, 1)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 18, 6)
GO
INSERT [commercial].[Comprend] ([Quantite_Livre], [ID_Article], [ID_Bon_Livraison]) VALUES (1, 20, 5)
GO
