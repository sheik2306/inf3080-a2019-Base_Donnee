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