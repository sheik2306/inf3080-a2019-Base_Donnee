SET ECHO ON
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION plusLongTrajet(date_ in varchar)
return number
is
n_distance ROUTE.ndistance%TYPE;
tmp ROUTE.ndistance%TYPE;

cursor Distances
is SELECT
     route.NDISTANCE 
    
    FROM  chargement,  route , soumissione e
    WHERE chargement.pchargement = e.pchargement 
    AND chargement.nlatori = route.nlatori
    AND chargement.nlongori = route.nlongori
    AND chargement.nlatdes = route.nlatdes
    AND chargement.nlongdes = route.nlongdes   
    and e.datesoumission = date_;
BEGIN
n_distance:=0.0;
For uneDistance IN Distances
LOOP 
    if(uneDistance.ndistance > n_distance)
    THEN
    n_distance:= uneDistance.ndistance;
END IF;
END LOOP;

return(n_distance);

end plusLongtrajet;
/



-- TEST DE PLUS LONGUE DISTANCE --

SELECT
     route.NDISTANCE   
    FROM  chargement,  route , soumissione e
    WHERE chargement.pchargement = e.pchargement 
    AND chargement.nlatori = route.nlatori
    AND chargement.nlongori = route.nlongori
    AND chargement.nlatdes = route.nlatdes
    AND chargement.nlongdes = route.nlongdes   
    and e.datesoumission = '17-08-18';
    /

select distinct plusLongTrajet('17-08-18') from soumissione;
/





--Une fonction PL/SQL (CoûtTotalDuTrajet) qui prend en entrée un numéro de soumission--
--et le point d’origine et la destination et retourne le coût total de trajet.--

SET ECHO ON
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION coutTotalTrajet(noSoumission soumissiond.psoumissiond%TYPE, 
n_latOri in chargement.nlatori%TYPE, n_longOri in chargement.nlongori%TYPE, 
n_latDes in chargement.nlatDes%TYPE, n_longDes in chargement.nlongDes%TYPE)
return number
is
prixTotal  Number(8,2);
n_distance route.ndistance%TYPE;
n_cout Carburant.nCout%Type;

BEGIN 

SELECT 
route.ndistance, Carburant.ncout
into n_distance ,n_cout
 FROM    Chargement, route ,
 soumissione , soumissiond , Camion, Tracteur, carburant

 WHERE soumissiond.psoumissiond = noSoumission
 AND soumissiond.psoumissione = soumissione.psoumissione
    AND chargement.pchargement = soumissione.pchargement
    AND n_latOri = route.nlatori
    AND n_longori = route.nlongori
    AND n_latdes = route.nlatdes
    AND n_longdes = route.nlongdes 
    AND camion.camion_id = soumissiond.camion_id
    AND Tracteur.ptracteur = Camion.pTracteur
    AND Carburant.pCarburant = Tracteur.pCarburant;


prixTotal:=n_distance*n_cout;

return (prixTotal);
END coutTotalTrajet;
/
        
Select distinct couttotalTrajet(1,65.3,-75.4,44.3,-78.4) FROM soumissiond;
/


