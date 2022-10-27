--
-- code pour la création des tables
--
--creation materiaux

create table materiaux ( 
id_materiaux uuid default uuid_generate_v4(), 
libelle varchar, 
url varchar, 
PRIMARY KEY (id_materiaux) 
);

--creation montre

create table Montre ( 
id_montre uuid default uuid_generate_v4(), 
ecran varchar, 
bracelet varchar, 
boitier varchar, 
commande bool, 
id_materiaux uuid, 
id_user uuid , 
PRIMARY KEY (id_montre), 
FOREIGN KEY (id_materiaux) REFERENCES materiaux (id_materiaux),
FOREIGN KEY (id_user) REFERENCES auth.users (id) 
);

--montre ronde

CREATE TABLE montrec ( 
id_montre uuid default uuid_generate_v4(), 
ecranc varchar, 

braceletc_t varchar,
braceletc_b varchar,
carrer_in varchar,
carrer_ex varchar,
commande bool, 
id_materiaux uuid, 
id_user uuid , 
PRIMARY KEY (id_montre), 
FOREIGN KEY (id_materiaux) REFERENCES materiaux (id_materiaux),
FOREIGN KEY (id_user) REFERENCES auth.users (id) 
);


-- montre carrer

CREATE TABLE montrer ( 
id_montre uuid default uuid_generate_v4(), 
ecranr varchar, 
boitier_rond varchar,
braceletr_t varchar,
braceletr_b varchar,
cercler_in varchar,
cercler_ex varchar,
commande bool, 
id_materiaux uuid, 
id_user uuid , 
PRIMARY KEY (id_montre), 
FOREIGN KEY (id_materiaux) REFERENCES materiaux (id_materiaux),
FOREIGN KEY (id_user) REFERENCES auth.users (id) 
);




--
-- code pour la création des vues
--

-- view acier

create view allAcier as 
select "montre".*
from "materiaux", "montre" 
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'acier';

-- view all

create view allMateriaux as 
select * 

--bois 

create view allbois as 
select "montre".* 
from "materiaux", "montre"
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'Bois'; 


-- cuir

create view allCuir as 
select "montre".* 
from "materiaux", "montre" 
where "materiaux".id_materiaux = "montre".id_materiaux 
and "materiaux"."libelle" = 'cuir'; 



--
-- code pour la création des policies
--