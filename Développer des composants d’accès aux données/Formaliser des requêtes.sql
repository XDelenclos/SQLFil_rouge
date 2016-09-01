/*Certaines interrogations sont à prévoir:-*/
--1)- Chiffre d'affaire généré pour l'ensemble et par fournisseur
Select sum(cast((Quantite_Article*Prix_De_Vente_HT)as money)) as 'Chiffre d''affaire', nom_fournisseur as 'Fournisseur'
from commercial.contient cc
join Marketing.Article Ma on Ma.ID_Article=cc.ID_Article
join marketing.Vend Mv on mv.ID_Article=Ma.ID_Article
join marketing.Fournisseur Mf on Mf.ID_Fournisseur=Mv.ID_Fournisseur
group by Nom_Fournisseur
go

Select sum(cast((quantite_Article*Prix_de_vente_ht)as money)) 'chiffre d''affaire total'
from commercial.Contient


--2)- Liste des produits commandés (ref produit, qte commandé)
Select nom_article as 'Produit', reference_fournisseur as 'Référence article', quantite_article as 'Qte commandée'
from marketing.Article ma
join commercial.contient cc on cc.ID_Article=ma.ID_Article
order by 'Référence article'

--3)- Liste des commandes pour un client (date, ref client, montant)
create proc cde_cli
@client varchar(50)
as
Select  cast(Date_Commande as date) as 'Date de commande', CCL.ID_Client as 'Référence Client', Nom_Particulier as 'Nom', Nom_Enseigne as 'Nom de l''enseigne', Montant_regle as 'Montant'
from commercial.Commande CCO
join commercial.Clients CCL on CCL.ID_Client=CCO.ID_Client
where Nom_Particulier like '%'+@client+'%'
/* étant donné que l'on demande pour 1 client, j'ai choisis de faire une procédure  stockée afin que l'on précise le client que l'on souhaite consulter'*/

exec cde_cli --'valeur'

--4)- Répartition du chiffre d'affaire par type de client
Select sum(CC.montant_ht) as 'Chiffre d''affaire', case Particulier_Professionnel
 	when 'true' then 'Professionnel'
	else 'Particulier'
	end as 'Statut'
from commercial.Commande CC
join commercial.Clients CCL on CCL.ID_Client=CC.ID_Client
inner join commercial.Commande CC2 on CC2.ID_Client=CCL.ID_Client
Group by Particulier_Professionnel


--5)- Lister les commandes en cours de livraison.
 Select CCo.ID_Commande as 'numéro de commande' from commercial.Commande CCo
join commercial.Livraison CL on CL.ID_Commande=CCo.ID_Commande
join Delivre D on D.ID_Bon_Livraison=CL.ID_Bon_Livraison
where Date_Livraison is null or Date_Livraison > Getdate( )

---------------------Programmer des procédures stockées sur le SGBD ----------------------------
-- cmd_non_soldées
create proc cmd_non_soldées
as
Select CCo.ID_Commande as 'numéro de commande', CCL.Nom_particulier as 'nom client' , CCL.ID_CLient as 'Numéro de client' from commercial.Commande CCo
join commercial.Livraison CL on CL.ID_Commande=CCo.ID_Commande
join Delivre D on D.ID_Bon_Livraison=CL.ID_Bon_Livraison
Join commercial.Clients CCL on CCL.ID_CLient=CCo.ID_Client
where (Date_Livraison is null or getdate( )< Date_Livraison) 


exec cmd_non_soldées

--drop proc Delai_moyen
create proc Delai_moyen
as
Select ccl.ID_CLient, avg(datediff(dd, Date_Commande, Date_Reglement)) as 'Délai Moyen' from commercial.Commande cco
join commercial.Livraison CL on CL.ID_Commande=CCo.ID_Commande
join Delivre D on D.ID_Bon_Livraison=CL.ID_Bon_Livraison
Join commercial.Clients CCL on CCL.ID_CLient=CCo.ID_Client
group by ccl.ID_Client

exec Delai_moyen

-------------------------------Gérer les vues -------------------------------------

create view Prod_Fournis
as
Select Ma.ID_article as 'référence article', Nom_article as 'Article', MArque_Article as 'Marque', Libelle_Court as 'Description',
Prix_achat as 'Prix d''achat',Reference_Fournisseur as 'Référence Fournisseur', Mf.ID_Fournisseur as'Identifiant Fournisseur', Nom_Fournisseur as'Fournisseur', no_telephone_fournisseur as 'No Téléphone', case(importateur)
when 'false' then 'importateur'
else 'Fabricant'
end as 'Statut'
from marketing.Article Ma
join marketing.vend Mv on Mv.ID_Article=Ma.ID_Article
join Marketing.Fournisseur Mf on Mf.ID_Fournisseur=Mv.ID_Fournisseur

select * from Prod_Fournis