# Travail pratique 1

   ## Description

   <description du projet en quelques phrases>
   
   * BASE DE DONNEE
   * INF3080 gr. 031 Automne 2019
   * UQAM

   ## Auteur

   Dufour-Couture,Alex 
   `DUFA23059001`

   ## Fonctionnement

   Faire git clone "mon lien https du projet"
   ensuite se connecter sur Zeta2.


   A L'aide de SQL developer ouvrir les fichiers .sql,
   sinon par le terminal /\*.sql afin de partir le fichier.

   1. Commencer par lancer le ficher `01_schema.sql` avec F5 (Run script).  
   Affichera des `Table * created.` <br>
   2. Ensuite lancer le ficher `02_charger.sql` avec F5 (Run script).  
   Affichera plusiers `1 row inserted`.<br>
   3. Ensuite vous pourrez commencer avec les requetes `4a,4b,4c,4d, ect.` avec F5.

* `04a_query` Affichera:

| client.pclient|nom|telephone|addresse|nosoumission|pchargement|datesoumission|prixroute|prixcarbu|camion_id|
|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|
|4	|ManufacturierSoulier|	514-654-6647	|445 Rue Lagace, VictoraiVille	|7	|1	|19-09-30	|5600.5|	1.91|	1|


* `04b_query` Affichera: 


|camion.camion_id|nocompagnie|pequipement|ptracteur|pposition|cposition|nlat|nlong|bdisponible|
|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|
|2	|1	|2	|2	|2	|Voyage	|65.3666|-82.44455|	0|
|4	|1	|4	|4	|4	|Voyage2|55.3666|-72.44455|	0|


   4. Si pour X raison vous avez besoin de recommencer la creation de table, executer le script `dropTables.sql`


   ## Contenu du projet

 
`00_modele.pdf` Contient le dessin UML 
`01_schema.sql` Contient le script de creation des tables en langage SQL 
`02_charger.sql` Contient le script d'insertion des tables en langage SQL 
`03_tester.sql` Contient des requetes tests afin de tester la BD.
`04a_query.sql` Contient une requete DDL qui retourne les soumissions ceux datées du 2019-09-30 pour le pClient { 4 } 
`04b_query.sql` Contient une requête qui liste les camions qui sont présentement en voyage 
`04c_query.sql` Contient une requête qui retourne le nom des tables en minuscule de mon schéma en ordre décroissant 
`04d_query.sql` Contient une requête qui retourne les attributs des entités E = { Tracteur, Camion, Equipement }; 
`05_algebre-tp1.pdf` Contient les reponses a `04a_query.sql` et `04b_query.sql` en Algebre relationelle 

   ## Références

   <citez vos sources ici>

   ## Statut

   <indiquez si le projet est complété ou s'il y a des bogues>
   
   ## Auto-évaluation de votre travail
   
   <j'évalue mon livrable à x points>

