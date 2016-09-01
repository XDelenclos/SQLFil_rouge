/************ S�curit� Fil_Rouge**********/

USE Fil_rouge

/*********** Cr�ation des comptes utilisateurs ****************/
create login servmark1 with password = 'pwd1', default_database=[Fil_rouge] ,
check_expiration=off, check_policy=off
create login servcompt2 with password = 'pwd2', default_database= [Fil_rouge] ,
check_expiration=off, check_policy=off
create login servcom3 with password = 'pwd3', default_database= [Fil_rouge] ,
check_expiration=off, check_policy=off
create login servapv4 with password = 'pwd4', default_database= [Fil_rouge] ,
check_expiration=off, check_policy=off
create login defcli5 with password = 'pwd5', default_database= [Fil_rouge] ,
check_expiration=off, check_policy=off
create login adminis6 with password = 'pwd6', default_database= [master] ,
check_expiration=off, check_policy=off
go
/********** cr�ation utilisateur **************/
create user utilisateurmarketing for login servmark1
create user utilisateurcompta for login servcompt2
create user utilisateurcom for login servcom3
create user utilisateurapvente for login servapv4
create user utilisateurclient for login defcli5
create user administration for login adminis6
go
/************ Cr�ation d'administrateur **************/
Grant ALL on Fil_rouge to administration
go

/************ Cr�ation du role Service Marketing **************/
Create role Service_marketing
	Grant select, update, insert, delete on schema::Marketing TO Service_marketing
go	

/************ Cr�ation du role Client **************
Create role defaultclient
	Grant select on Marketing.Article(Nom_Article, Marque_Article, Libelle_Court, Description, Prix_Vente_HT, Image_Article, Stock_Article) to defaultclient
	Grant update on commercial.Contient(Quantite_Article) to defaultclient
	Grant Select, insert, update, delete commercial.Clients to defaultclient
	Deny select, insert, update, delete commercial.Clients(Condition_Reglement_Particulier, Condition_Reglement_Professionel, Remise, Coefficient) to defaultclient
go***/

/************ Cr�ation du role Service compta **************
Create role Service_compta
	Grant xxx on xxxx to Service_compta
go	
***/
Drop role Service_commercial
/************ Cr�ation du role Service commercial **************/
Create role Service_commercial
	Grant select, update, insert, delete on schema::commercial to Service_commercial
	revoke delete, update, insert on commercial.Clients to Service_commercial
	Grant update on commercial.Clients(Condition_Reglement_Particulier, Condition_Reglement_Professionel, Remise,Coefficient) to Service_commercial
	Grant Delete on commercial.Clients to Service_commercial
	revoke delete on commercial.Commercial to Service_commercial
	revoke delete on commercial.commande to Service_commercial
	Grant Select on marketing.Article to Service_commercial
go	

/************ Cr�ation du role Service apr�s vente **************
Create role Service_apvente
	Grant xxx on xxx to Service_apvente
go
***/

/********** Attribution des r�les ********************/

execute sp_addrolemember 'Service_marketing', 'utilisateurmarketing'
/**execute sp_addrolemember 'Service_compta', 'utilisateurcompta'**/
execute sp_addrolemember 'Service_commercial', 'utilisateurcom'
/**execute sp_addrolemember 'Service_apvente', 'utilisateurapvente'**/
/**execute sp_addrolemember 'defaultclient', 'utilisateurclient'**/
go

/** Sauvegarde & restauration *****/
/**
exec sp_addumpdevice 'disk','savPap','C:\Backup\Fil_rouge.bak'backup database Fil_rouge to savPapgorestore database Fil_rouge from savPap with replacego**/