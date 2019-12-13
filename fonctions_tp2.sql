SET ECHO ON
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION plusLongTrajet(date_ in varchar)
return number
is
n_distance ROUTE.ndistance%TYPE;
soumissionNb soumissione.psoumissione%TYPE;
camionId Camion.camion_id%TYPE;
cursor Distances
is SELECT
     route.NDISTANCE, e.psoumissione 
    
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
    soumissionNb:= Unedistance.psoumissione;
END IF;
END LOOP;

    SELECT
        Soumissiond.camion_id INTO camionId
        FROM  soumissione, soumissiond
        WHERE
            soumissiond.psoumissione=soumissione.psoumissione
            AND
            soumissione.psoumissione = soumissionNb;

    
    return(camionId);

  
end plusLongtrajet;
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
n_coutE TypeEquipement.ncout%type;
coutPoids Chargement.poids%TYPE;
coutDimension number(8,2);

BEGIN 

SELECT 
route.ndistance, Carburant.ncout, TypeEquipement.ncout, chargement.poids, (chargement.longueur + chargement.hauteur + chargement.largeur)
into n_distance ,n_cout, n_coutE, coutPoids,coutDimension
 FROM    Chargement, route ,
 soumissione , soumissiond , Camion, Tracteur, carburant, equipement,TypeEquipement

 WHERE soumissiond.psoumissiond = noSoumission
    AND soumissiond.psoumissione = soumissione.psoumissione
    AND chargement.pchargement = soumissione.pchargement
    AND n_latOri = route.nlatori
    AND n_longori = route.nlongori
    AND n_latdes = route.nlatdes
    AND n_longdes = route.nlongdes 
    AND camion.camion_id = soumissiond.camion_id
    and camion.pequipement = Equipement.pequipement
    and equipement.ptypeequipement = TypeEquipement.ptypeequipement
    AND Tracteur.ptracteur = Camion.pTracteur
    AND Carburant.pCarburant = Tracteur.pCarburant;

 dbms_output.put_line( 'Distance a parcourir' ||  n_distance);
 dbms_output.put_line( 'Cout de carburant' ||  n_cout);
 dbms_output.put_line( 'Cout dequipement' ||  n_coutE);

prixTotal:=(((n_distance*n_cout) + n_coutE) * coutPoids + coutDimension) * 1.1; --Cout carburant * Distance

return (prixTotal);
END coutTotalTrajet;
/


SET ECHO ON
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION totalFacture(no_facture Facture.nofacture%TYPE)
return number
IS
prixTotal Facture.nTotal%TYPE;

BEGIN

select
    ntotal
into prixTotal
FROM
    FACTURE
WHERE
    FACTURE.nofacture = no_facture;
    
dbms_output.put_line('Total '|| prixTotal || '$');    
    return(prixTotal);

end totalFacture;
/



