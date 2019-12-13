SET SERVEROUTPUT ON
SET ECHO ON

create or replace TRIGGER  nombreCamion
AFTER INSERT ON SoumissionD
DECLARE
nbCamion compagnie.nnombrecamion%TYPE;
BEGIN
    SELECT nNombreCamion INTO nbCamion
    FROM compagnie;  
dbms_output.put_line
('Ancienne Quantite de camion ' || nbCamion);
UPDATE Compagnie SET nNombreCamion = nNombreCamion - 1;
  SELECT nNombreCamion INTO nbCamion
  FROM compagnie;  
dbms_output.put_line
('Nouvelle Quantite de camion ' || nbCamion);
END;
/


create or replace trigger distance
BEFORE INSERT ON CHARGEMENT
FOR EACH ROW

DECLARE
nbDistance Route.ndistance%TYPE;

BEGIN

    SELECT nDistance INTO nbDistance
    FROM ROUTE
    WHERE :new.NLATORI = Route.NLATORI AND :new.NLONGORI = Route.NLONGORI 
    AND :new.NLATDES = Route.NLATDES AND :new.NLONGDES = Route.NLONGDES;
    
    if (nbDistance > 50)
    THEN
      raise_application_error(-20000
                , 'Distance ne peux pas etre en haut de 50km.');
               END IF;
                     dbms_output.put_line
('La distance etait en bas de 50km avec une distance de ' || nbDistance);
             
END;
/



create or replace trigger trajet
BEFORE INSERT ON CHARGEMENT
FOR EACH ROW

DECLARE
nombre NUMBER(3);
BEGIN

    select COUNT(*) INTO nombre
    FROM ROUTE
    WHERE :new.NLATORI = Route.NLATORI AND :new.NLONGORI = Route.NLONGORI 
    AND :new.NLATDES = Route.NLATDES AND :new.NLONGDES = Route.NLONGDES;
    
    if ( nombre = 0)
    THEN
      raise_application_error(-20000
    , 'Vous avez entrer des coordonnees qui ne font pas partie dune route');
      END IF;
 dbms_output.put_line
('Le nombre de route correspondant a votre entree est de ' || nombre);
END;
 /
 
 
 create or replace trigger cout
 BEFORE INSERT OR UPDATE ON SOUMISSIOND
 FOR EACH ROW
 
 DECLARE 
 
 nCoutType1 TYPEEQUIPEMENT.ncout%TYPE;
 nCoutType2 TYPEEQUIPEMENT.ncout%TYPE;
 
 BEGIN
        SELECT ncout into nCoutType1
        FROM typeequipement
        WHERE CTYPEEQUIPEMENT = 'Drybox';
        
        SELECT ncout into nCoutType2
        FROM typeequipement
        WHERE CTYPEEQUIPEMENT = 'Flatbed';
        
    if(nCoutType1 = nCoutType2)
    
    THEN
    dbms_output.put_line
    ('Les couts sont egaux avec des valeurs de ' || nCoutType1 || ' et ' || nCoutType2);
         raise_application_error(-20000
    , 'Les couts dequipement sont les memes');
    END IF;
     dbms_output.put_line
    ('Les couts sont differents avec des valeurs de ' || nCoutType1 || ' et ' || nCoutType2);
END;
/


