drop database if exists noufeine;
create database noufeine;
use noufeine;


DROP TABLE IF EXISTS MAGASIN ;
CREATE TABLE MAGASIN (ID_Magasin INTEGER ,
nom VARCHAR(50),
pays VARCHAR(50),
ville VARCHAR(50),
constraint ClePrimMagasin PRIMARY KEY (ID_Magasin)
);

insert into Magasin (ID_Magasin,pays,ville)
values 
(1,"France","Paris"),
(2,"France","Toulouse"),
(3,"Allemagne","Berlin"),
(4,"Espagne","Madrid"),
(5,"Belgique","Bruxelle");

DROP TABLE IF EXISTS FOURNISSEUR ;
CREATE TABLE FOURNISSEUR 
(
ID_Fournisseur INTEGER not null ,
type_fournisseur VARCHAR(50),
nom VARCHAR(50),
mail VARCHAR(70),
Telephone varchar(50),
pays_origine VARCHAR(50),
ville_origine VARCHAR(50),
constraint ClePrimFournisseur PRIMARY KEY (ID_Fournisseur)
) ;

Insert into
Fournisseur(ID_Fournisseur,type_fournisseur,nom,mail,Telephone,pays_origine,ville_origine)
Values
(1,"Informatique","Apple","apple@gmail.com","345651089145","USA","Cupertino"),
(2,"Informatique","Samsung","samsung@gmail.com","00827628273829","Corée_du_Sud","Séoul"),
(3,"Alimentaire","Agidra","agidra@yahoo.fr","0182928282","France","Lisses"),
(4,"Alimentaire","Epsilon Distribution","ed@gmail.com","0128394561","France","Rungis"),
(5,"Jeux_vidéos","Sony","sony@gmail.com","008129678245","Japon","Tokyo"),
(6,"Jeux_vidéos","Microsoft","microsoft-international","001282929292","USA","Redmond"),
(7,"Livres","Glénat","glénat@yahoo.fr","0178289378","France","Grenoble"),
(8,"Boisson","Les_Grappes","lesgrappes@hotmail.fr","0139292673","France","Paris"),
(9,"Electroménager","Philips","philips@gmail.com","00317237484","Pays-Bas","Amsterdam"),
(10,"Technologie","Sony","sony@gmail.com","0081282292929","Japon","Tokyo"),
(11,"Meubles","Balzarotti","decoration@balzarotti.com","01679292929","France","Paris"),
(12,"Meubles","ros1","france@ros1shop.com","0169242473","France","Paris"),
(13,"Electromenager","Bosch","France@bosch","0182674521","France","Saint-Ouen"),
(14,"Bebe","allobebe","france@allobebe.fr","017689292919","France","Saint-Martin-Boulogne"),
(15,"Bebe","Cabriolebebe","cabriolebebe@contcat.com","0182673839","France","Draveil"),
(16,"Beaute","Mixa","mixa@france.fr","0178927373","France","Paris"),
(17,"Exterieur","Favex","favex@france.fr","0156282828","France","Paris"),
(18,"Bricolage","Bosch","France@bosch.fr","0183737373","France","Paris");











DROP TABLE IF EXISTS PROMOTION ;
CREATE TABLE PROMOTION 
(
code_promo INTEGER  NOT NULL,
pourcentage FLOAT,
date_fin_validite DATE,
constraint ClePrimPromotion PRIMARY KEY (code_promo)
);

Insert into PROMOTION (code_promo, pourcentage, date_fin_validite) values
(1,0.6,"2018-12-12"),
(2,0.6,"2019-01-12"),
(3,0.5,"2018-12-12"),
(4,0.5,"2019-01-12"),
(5,0.7,"2018-12-12"),
(6,0.1,"2019-05-12"),
(7,0.2,"2018-12-12"),
(8,0.3,"2019-01-12"),
(9,0.5,"2019-12-24"),
(10,0.6,"2018-12-25");



DROP TABLE IF EXISTS RAYON ;
CREATE TABLE RAYON 
(
ID_Rayon INTEGER  NOT NULL,
nom VARCHAR(50),
constraint ClePrimRayon PRIMARY KEY (ID_Rayon)
);

insert into RAYON(ID_Rayon,nom) values
(1,"Alimentaire"),
(2,"Numérique-électroménager"),
(3,"textile"),
(4,"droguerie"),
(21,"exterieure"),
(5,"Alimentaire"),
(6,"Numérique-électroménager"),
(7,"textile"),
(8,"droguerie"),
(9,"Alimentaire"),
(10,"Numérique-électroménager"),
(11,"textile"),
(12,"droguerie"),
(13,"Alimentaire"),
(14,"Numérique-électroménager"),
(15,"textile"),
(16,"droguerie"),
(17,"Alimentaire"),
(18,"Numérique-électroménager"),
(19,"textile"),
(20,"droguerie");

DROP TABLE IF EXISTS STOCKAGE ;
CREATE TABLE STOCKAGE 
(
ID_Stockage INTEGER  NOT NULL,
type_stockage VARCHAR(50),
constraint ClePrimStockage PRIMARY KEY (ID_Stockage)
);

insert into STOCKAGE (ID_Stockage,type_stockage)
values
(1,"alimentaire"),
(2,"numerique-elctromenager"),
(3,"drogurie"),
(4,"textile"),

(5,"alimentaire"),
(6,"numerique-elctromenager"),
(7,"drogurie"),
(8,"textile"),

(9,"alimentaire"),
(10,"numerique-elctromenager"),
(11,"drogurie"),
(12,"textile"),

(13,"alimentaire"),
(14,"numerique-elctromenager"),
(15,"drogurie"),
(16,"textile"),

(17,"alimentaire"),
(18,"numerique-elctromenager"),
(19,"drogurie"),
(20,"textile");


DROP TABLE IF EXISTS CHEF ;
CREATE TABLE CHEF 
(
ID_Chef INTEGER  NOT NULL,
nom VARCHAR(50),
prenom VARCHAR(50),
date_de_naissance DATE,
mail VARCHAR(70),
Telephone DOUBLE,
constraint ClePrimChef PRIMARY KEY (ID_Chef)
);


Insert into CHEF(ID_Chef,nom,prenom,date_de_naissance, mail)
Values

(1,"Gareau", "Edouard","1983-03-12","edouardgareau@gmail.com"),
(2,"Audet", "Thomas ","1980-10-05", "audetthomas@yahoo.fr "),
(3,"Labonté","Audé","1980-01-11","labontéaudé@gmail.com"),
(4,"Simard ","Vincent","1981-10-03","simardvincent@gmail.com"),
(5,"Stephenson","Linda","1973-02-05","stephensonlinda@gmail.com"),
(6,"Mercure", "Thomas", "1989-1-10","mercurethomas@yahoo.fr"),
(7,"Leroy ","Odo","1980-3-1","leroyodo@gmail.com"),
(8,"Huon","Martin","1979-8-6","huonmatin@yahoo.fr"),
(9,"Lanctot","Charlot","1952-12-04","lanctotcharlot@yahoo.fr"),
(10,"Landers","Herbert","1987-9-9","Herbertlander@yahoo.fr"),
(11,"Daoust","Stephane","1984-2-4","Daouststephane@gmail.com"),
(12,"Lemaître","Lucie","1960-12-11","lemaitrelucie@yahoo.fr"),
(13,"Parenteau","Siara","1970-3-11","parenteausiara@gmail.com"),
(14,"Boutot","Alphonse","1950-11-3","boutotalphonse@yahoo.fr"),
(15,"Beaulé","Wyatt","1971-01-31","bealéwyatt@gmail.com"),
(16,"Frappier","Manon","1983-03-27","frappiermanon@gmail.com"),
(17,"Daigneault","Charmaine","1986-06-22","charmaineDaigneault@gmail.com"),
(18,"Paré","Orane","1987-05-03","pareorane@gmail.com"),
(19,"Maréchal","Villette","1989-01-02","marechalvillette@gmail.com"),
(20,"Boutot","Avice","1982-10-17","boutotavice@yahoo.fr");



DROP TABLE IF EXISTS PRODUIT ;
CREATE TABLE PRODUIT 
(
code_barre INTEGER  NOT NULL,
nom VARCHAR(50),
type_produit VARCHAR(50),
prix_unitaire float,
poids_produit FLOAT,
code_promo integer,
constraint ClePrimProduit PRIMARY KEY (code_barre),
CONSTRAINT  CleetrangereProduit FOREIGN KEY (code_promo) REFERENCES PROMOTION (code_promo)
);

insert into PRODUIT (code_barre, nom, type_produit, prix_unitaire, poids_produit,code_promo) values
(1,"MacBook Pro 13","numérique-électroménager",1499.99,1.37,7),
(2,"iPhone X","numérique-électroménager",1029,0.98,null),
(3,"Samsung Galaxy S8","numérique-électroménager",709.9,0.315,null),
(4,"PS4","numérique-électroménager",389.99,2.1,null),
(5,"Canon scanner","numérique-électroménager",199.89,4.6,null),

(6,"pizza surgelé","Alimentaire",4.67,0.005,null),
(7,"nutella","Alimentaire",4.05,1,6),
(8,"vin","Alimentaire",20.99,0.99,null),
(9,"pates","Alimentaire",2.59,0.005,null),
(10,"Lait Gallia 1","Alimentaire",18.29,0.008,null),

(11,"Creme MIXA","Drogerie",1499.99,1.37,7),
(12,"Plaquette punaise de lit Auto","Drogerie",17.80,0.005,null),
(13,"Axe eau de toilette","Drogerie",16.08,0.003,null),
(14,"Dexeril","Drogerie",15.69,0.005,null),
(15,"Shampoing Le Petit Marseillais","Drogerie",2.45,0.006,null),

(16,"Sweat Adidas","textile",69.99,1.3,3),
(17,"Tee-shirt Nike","textile",35.99,0.99,null),
(18,"Pyjamas homme hiver","itextile",36.99,1,4),
(19,"casquette NY","textile",20.99,0.5,null),
(20,"Sous-vêtement homme","textile",9.99,0.002,null);



DROP TABLE IF EXISTS ALLEE ;
CREATE TABLE ALLEE 
(
ID_Allee INTEGER  NOT NULL,
num_allee integer,
ID_Rayon integer,
constraint ClePrimAlee PRIMARY KEY (ID_Allee),
CONSTRAINT CleetrangereAllee FOREIGN KEY (ID_Rayon) REFERENCES RAYON (ID_Rayon)
);

insert into ALLEE(ID_Allee,num_allee,ID_Rayon) values


(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(6,6,1),
(7,7,1),
(8,8,1),

(9,1,2),
(10,2,2),
(11,3,2),
(12,4,2),
(13,5,2),

(14,6,2),
(15,7,2),
(16,8,2),

(17,1,3),
(18,2,3),
(19,3,3),
(20,4,4),
(21,5,3),
(22,6,3),
(23,7,3),
(24,8,3),
(25,1,4),
(26,2,4),
(27,3,4),
(28,4,4),
(29,5,4),
(30,6,4),
(31,7,4),
(32,8,4),
(33,1,5),
(34,2,5),
(35,3,5),
(36,4,5),
(37,5,5),
(38,6,5),
(39,7,5),
(40,8,5);






DROP TABLE IF EXISTS CLIENTS ;
CREATE TABLE CLIENTS 
(
num_facture INTEGER  NOT NULL,
numero_caisse INTEGER,
quantite INTEGER,
prix_total FLOAT,
constraint ClePrimClient PRIMARY KEY (num_facture)
);

Insert into CLIENTS (Num_facture,numero_caisse,quantite,prix_total) Values
(1,3,7,29.99),
(2,2,6,12.99),
(3,2,18,107.99),
(4,10,50.01,3),
(5,1,3,3.5),
(6,3,9,29.1),
(7,3,2,1.5),
(8,1,1,0.99),
(9,2,7,21.67),
(10, 3,7,200),
(11,2,6,12.99),
(12 ,2,18,107.99),
(13,2,1,50.01),
(14,1,3,3.5),
(15,3,9,29.1),
(16,3,2,1.5),
(17,1,1,0.99),
(18,2,7,21.67),
(19,5,9,300),
(20,5,8,20);





DROP TABLE IF EXISTS CARTE_DE_FIDELITE ;
CREATE TABLE CARTE_DE_FIDELITE 
(
ID_Carte INTEGER  NOT NULL,
nom  VARCHAR(50),
prenom  VARCHAR(50),
sexe  VARCHAR(1),
date_de_naissance DATE,
mail VARCHAR(70),
Telephone DOUBLE,
numero_rue INTEGER,
nom_rue VARCHAR(50),
code_postal INTEGER,
reduction FLOAT,
num_facture integer,
constraint ClePrimCarte PRIMARY KEY (ID_Carte),
CONSTRAINT CleetrangerCarte FOREIGN KEY (num_facture) REFERENCES CLIENTS (num_facture)
);


Insert into CARTE_DE_FIDELITE (ID_Carte, nom, prenom, sexe, date_de_naissance, mail, Telephone, numero_rue, nom_rue, code_postal, reduction) values 

(5,"AHMED","Abdourahim","M","1964-12-12","ahmedabdourahim@gmail.com",0665931560,1,"allee du bois",93160,0),
(6,"AHMED","Faouzia","F","1990-01-04","ahmedabfaouzia@gmail.com",0665451560,25,"Terrasse ",34280,0.12),
(7,"PAPIN","Valentin","M","1999-11-10","papin_valentin@hotmail.fr",0665912360,50,"avenue du rocher",34080,0),
(8,"ARNAULD","Lea","F","1964-12-12","arnauldlea@gmail.com",0661831560,89,"rue de la butte bleu",93160,0),
(9,"CHELSON","Rigo","M","2000-10-09","chelsonrigo@gmail.com",0661234560,67,"rue de malnue",77080,0),
(10,"DONALD","Ibrahim","M","1995-04-22","donaldibrahim@gmail.com",0665931123,25,"rue de ballon",95170,0.50),
(11,"SUPREME","Nassim","F","1996-03-24","supreme_nassima@hotmail.fr",0665935430,45,"rue du bois",95170,0),
(12,"MYRTILE","Lea","F","1993-01-25","myrttilelea@gmail.com",0765931560,32,"rue de balle",93160,0.40),
(13,"MOHAMED","Al-faed","M","2000-04-29","alfaedmohamedali@gmail.com",0665933470,21,"allee de la noiserie",77050,0.3),
(14,"KELOUTE","Ubald","M","1997-06-12","keloute.ubald@gmail.com",0665937890,61,"avenue du pont",93160,0),
(15,"ZAKARIA","ELmane","M","1996-12-12","zakariaelmane@gmail.com",0321931560,21,"avenue du ballon",93160,0),
(16,"SOEUF","Sara","F","1995-07-01","sara_souef@gmail.com",0666543560,34,"allee du bois",77080,0),
(17,"MAXIME","Lopez","M","1977-06-05","maximelopez@gmail.com",0497294646,60,"quai des belges",13500,0.2),
(18,"GERMAINE","Dodier","F","1973-05-23","germainedodier@gmail.com",0133610839,33,"square de la couronne",77330,0),
(19,"DOROTHEE","Lussier","F","1999-02-23","dorotheelussier@ghotmail.fr",0665931940,20,"rue du luxe",14100,0),
(20,"CHRISTIN","Wexler","F","1995-06-12","christinwexler@gmail.com",0071762633,10,"Bayreuther Strasse",72766,0.1),
(21,"SEBASTIAN","Pfeir","M","1999-02-14","sebastian.pfeir@gmail.com",07181694767,2,"Pasewalker Stribe",73663,0),
(22,"DENNIS","Ackerman","M","1969-03-30","dennisackerman@hotmail.fr",07933368560,20,"Waldowstr",97993,0),
(23,"MARCEL","Dresser","M","1965-05-15","marceldresser65@gmail.com",0211709682,28,"Park Str",40627,0),
(24,"MIKE","Decker","M","1999-01-12","mikedecker@gmail.com",03531383764,73,"Lietzenesee-Ufer",03232,0),
(25,"JESSIKA","Gottlieb","F","1990-03-11","jessikagottlieb@gmail.com",030751201,78,"Brandenburgische Straße",13156,0),
(26,"DOREEN","Fieler","F","1977-03-21","Doreen.fielder1977@gmail.com",713605852,84,"Atamaria",36640,0),
(27,"NICOLE","Lang","F","2000-02-28","nicolelang@gmail.com",732422122,71,"Quevedo",22700,0),
(28,"LEONIE","Baer","F","1999-11-12","leoniebaer1999@gmail.com",602282829,35,"Alameda Sundheim",22700,0),
(29,"JENS","Holzaman","M","1999-11-12","jensholzaman@gmail.com",744289222,7,"Ventanilla de Bea",28100,0),
(30,"TOM","Hueber","M","1985-01-01","tom_hueber_99@gmail.com",668255874,52,"Camino Real",48392,0.6);







DROP TABLE IF EXISTS EQUIPIER ;
CREATE TABLE EQUIPIER 
(
ID_Equipier INTEGER  NOT NULL,
nom VARCHAR(50),
prenom VARCHAR(50),
date_de_naissance DATE,
mail VARCHAR(70),
ID_Chef integer,
ID_Rayon integer ,
constraint ClePrimEquipier PRIMARY KEY (ID_Equipier),
CONSTRAINT CleetrangerEquipier1 FOREIGN KEY (ID_Chef) REFERENCES CHEF (ID_Chef),
CONSTRAINT CleetrangereEquipier2 FOREIGN KEY (ID_Rayon) REFERENCES RAYON (ID_Rayon)
);

INSERT INTO EQUIPIER (ID_Equipier,nom,prenom,date_de_naissance,mail,ID_Chef,ID_Rayon) values
(1,"Plante","Methena","1990-07-28","plantemethena@gmail.com",1,1),
(2,"Thivierge","Aubine","1998-12-17","thiviergeaubine@gmail.com",null,null),
(3,"Coupart","Colette","1993-09-05","coupartcolette@gmail.com",null,10),
(4,"Séguin","Alexis","1992-02-10","seguinalexis@yahoo.fr",10,null),
(5,"Bordeaux","Angelette","1991-03-07","bordeauxangelette@gmail.com",null,11),
(6,"Cyr","Francis","1989-02-22","cyrfrancis@yahoo.fr",1,2),
(7,"Martineau","Mirabelle","1990-11-24","martineaumirabelle@gmail.com",2,4),
(8,"Authier","Manon","1987-10-08","authiermanon@yahoo.fr",null,1),
(9,"Gosselin","Antoine","1994-10-03","gosselinantoine@yahoo.fr",1,9),
(10,"Berard","Pierre","1964-08-26","pierreberard@gmail.com",null,4),
(11,"Ganelon","Huguette","1977-09-05","ganelonhuguette@gmail.com",1,5),
(12,"Fedorov","Daniel", "1966-11-29","federovdaniel@gmail.com",8,8),
(13,"Izmailov","Edward","1972-11-12","izmailovedward@gmail.com",9,1),
(14,"Zubarev","Sidor","1981-09-21","zubaresidor@gmail.com",1,7),
(15,"Mishin","Ignat","1984-12-9","mishinignat@gmail.com",14,7),
(16,"Ignatev","Nathan","1974-12-15","ignatevnathan@gmail.com",12,3),
(17,"Delluicci","Elio","1986-07-21","delluiccielio@gmail.com",6,17),
(18,"Ricci","Nina","1974-01-22","riccinina@gmail.com",null,null),
(19,"Fabiano","Fanucci","1958-12-23","fabianofanucci@gmail.com",null,7),
(20,"Kerk","Shelia","1983-07-12","kerkshelia@gmail.com",null,null),
(21,"Van Der Beuken","nathalie","1987-07-28","vdbnathalie@gmail.com",16,9),
(22,"Malgers","malissa","1966-09-19","malgersmalissa@gmail.com",null,1),
(23,"Pears","Karen","1990-07-30","pearskaren@gmail.com",2,8),
(24,"Held","Valentina", "1978-01-01","heldvalentina@yahoo.fr",8,9),
(25,"Raymond","Sophie","1990-12-29","raymondsophie@yahoo.fr",9,8),
(26,"Lionnes","Albertina","1987-07-11","lionnesalbertina@gmail.com",null,12),
(27,"Rancourt","Tiana","1986-05-08","rancourtiana@yahoo.fr",null,null),
(28,"Griche","gaël","1973-10-05","grichegael@gmail.com",null,null),
(29,"Lamy","Astrid","1980-12-12","lamyastrid@gmail.com",11,11),
(30,"Varieur","Celine","1987-01-17","varieurceline@gmail.com",9,9),
(31,"Jetté","Emilie","1988-06-21","jetteemilie@gmail.com",10,11),
(32,"Delmarre","Dianel","1991-12-16","delmarrediane@gmail.com",1,11),
(33,"Cyr","Odin","1967-03-12", "cyrodin@gmail.com",11,1),
(34,"Siathe","Théodore","1984-06-04","siathetheodore@gmail.com",1,1),
(35,"Douffet","Laurence","1976-01-20","douffetLaurence@gmail.com",6,16),
(36,"Lanoie","Sebastien","1990-06-7","lanoiesebastien@gmail.com",17,null),
(37,"Clavet","Fiona","1983-01-08","clavetfiona@gmail.com",null,17),
(38,"Doiron","Augustine","1993-12-19","doiron@gmail.com",3,4),
(39,"Laisné","Zola","1970-06-05","laisnézola@gmail.com",2,2),
(40,"San","Zi","1989-10-25","sanzi@yahoo.fr",20,20);




DROP TABLE IF EXISTS EXEMPLAIRE ;
CREATE TABLE EXEMPLAIRE 
(
ID_Produit INTEGER  NOT NULL,
date_peremption_garantie DATE,
num_facture integer,
code_barre integer,
ID_Magasin integer ,
constraint ClePrimExemplaire PRIMARY KEY (ID_Produit),
CONSTRAINT CleetrangereExemplaire1 FOREIGN KEY (num_facture) REFERENCES CLIENTS (num_facture),
CONSTRAINT CleetrangereExemplaire2 FOREIGN KEY (code_barre) REFERENCES PRODUIT (code_barre),
constraint CleetrangerExemplaire3 foreign key(ID_Magasin) References MAGASIN (ID_Magasin)
);

Insert into
EXEMPLAIRE ( ID_produit,date_peremption_garantie,num_facture,code_barre,ID_Magasin)
Values
(1,"2020-11-3",1,1,1),
(2,"2020-11-30",8,1,1),
(3,"2020-12-31",null,2,1),
(4,"2020-10-21",null,2,1),
(5,"2019-01-31",null,3,1),
(6,"2019-11-3",4,3,1),
(7,"2019-12-31",null,4,2),
(8,"2019-10-31",1,4,2),
(9,"2018-11-1",1,5,2),
(10,"2018-11-30",2,5,2),
(11,"2018-11-30",null,6,2),
(12,"2018-11-30",null,6,2),
(13,"2018-11-30",null,7,3),
(14,"2018-11-30",2,7,3),
(15,"2018-11-30",2,8,3),
(16,"2018-11-30",null,8,3),

(17,"2018-11-30",3,9,3),
(18,"2018-12-30",3,9,4),
(19,"2018-10-29",null,10,4),
(20,"2018-12-13",3,10,5),
(21,"2018-11-30",3,11,5),
(22,"2018-01-01",2,11,5),
(23,"2018-11-19",null,12,5),
(24,"2018-10-18",3,12,5),
(25,"2018-11-23",3,13,5),
(26,"2018-11-21",1 ,13,4),
(27,"2018-11-30",2,14,1),
(28,"2018-11-08",3,14,2),
(29,"2018-12-19",2,15,3),
(30,"2018-11-17",1,15,5),

(31,"2018-11-27",null,16,1),
(32,"2018-11-13",null,16,1),
(33," 2018-12-01",null,17,2),
(34,"2018-12-31",null,17,3),
(35,"2018-11-15",null,18,3),
(36,"2018-11-22",null,18,3),
(37,"2018-11-21",null,19,3),
(38,"2018-12-19",2,19,3),
(39,"2018-12-31",null,20,3),


(40,"2018-11-30",null,20,1);

select *from EXEMPLAIRE;


DROP TABLE IF EXISTS est_stocke ;
CREATE TABLE est_stocke 
(
code_barre integer NOT NULL,
ID_Stockage integer  NOT NULL,
date_de_stockage  DATE,
constraint ClePrimest_stocke PRIMARY KEY (code_barre, ID_Stockage),
CONSTRAINT Cleetrangereest_stocke1 FOREIGN KEY (code_barre) REFERENCES PRODUIT (code_barre),
CONSTRAINT Cleetrangereest_stocke2 FOREIGN KEY (ID_Stockage) REFERENCES STOCKAGE (ID_Stockage)
 ) ;
 
 insert into est_stocke(code_barre, ID_Stockage, date_de_stockage) values
 (1,1,"2018-10-10"),
 (2,1,"2018-10-10"),
 (3,2,"2018-11-10"),
 (4,3,"2018-12-1");

DROP TABLE IF EXISTS place ;
CREATE TABLE place 
(
code_barre  integer NOT NULL,
ID_Allee integer NOT NULL,
date_mise_en_rayon DATE,
constraint ClePrimpalce PRIMARY KEY (code_barre,ID_Allee),
CONSTRAINT Cleetrangerepalce1 FOREIGN KEY (code_barre) REFERENCES PRODUIT (code_barre),
CONSTRAINT Cleetrangerepalce2 FOREIGN KEY (ID_Allee) REFERENCES ALLEE (ID_Allee)
);

insert into place (code_barre,ID_Allee,date_mise_en_rayon) values
(5,1,"2018-10-10"),
(6,3,"2018-11-10"),
(7,10,"2018-10-12"),
(8,11,"2018-10-13"),
(9,2,"2018-11-10");

DROP TABLE IF EXISTS livre ;
CREATE TABLE livre 
(
ID_Fournisseur integer NOT NULL,
ID_Produit integer NOT NULL,
date_livraison DATE,
constraint ClePrimlivre PRIMARY KEY (ID_Fournisseur,ID_Produit),
CONSTRAINT Cleetrangerelivre1 FOREIGN KEY (ID_Fournisseur) REFERENCES FOURNISSEUR (ID_Fournisseur),
CONSTRAINT Cleetrangerelivre2 FOREIGN KEY (ID_Produit) REFERENCES EXEMPLAIRE (ID_Produit)
 );

insert into livre(ID_Fournisseur,ID_Produit,date_livraison) values
(1,1,"2018-01-12"),
(2,2,"2018-02-12"),
(3,7,"2018-03-12"),
(1,9,"2018-01-1"),
(5,12,"2018-04-12");





DROP TABLE IF EXISTS ranger ;
CREATE TABLE ranger 
(
ID_Stockage integer NOT NULL,
ID_Equipier integer NOT NULL,
constraint ClePrimranger PRIMARY KEY (ID_Stockage,ID_Equipier),
CONSTRAINT Cleetrangereranger1 FOREIGN KEY (ID_Stockage) REFERENCES STOCKAGE (ID_Stockage),
CONSTRAINT Cleetrangererangeré FOREIGN KEY (ID_Equipier) REFERENCES EQUIPIER (ID_Equipier)
);

insert into ranger (ID_Stockage,ID_Equipier) values
(1,1),
(1,5),
(1,9),
(2,4),
(2,5),
(3,6);

