SET ECHO ON
SET SERVEROUTPUT ON
CREATE OR REPLACE procedure ConsulterSoumissions 
IS
  CURSOR soumission
  IS
    SELECT 
        d.psoumissiond,e.psoumissione, d.nprix,c.pclient
    FROM 
        SOUMISSIOND d, SOUMISSIONE e, CHARGEMENT t, CLIENT c
    WHERE
     d.psoumissione = e.psoumissione 
    AND e.pchargement = t.pchargement 
    AND t.pclient = c.pclient;
BEGIN
  FOR eachSoum IN soumission
  LOOP
    dbms_output.put_line( 'Numero de soumission Detail ' ||  eachSoum.psoumissiond);
    dbms_output.put_line( 'Numero de soumission d entete ' || eachSoum.psoumissione); 
    dbms_output.put_line( 'No de Client ' ||  eachSoum.pclient);  
    dbms_output.put_line( 'Prix de soumission ' || '$'|| eachSoum.nprix);  
    dbms_output.put_line(' ');
  END LOOP;
END;
/




SET ECHO ON 
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE ProduireFacture
(p_Soumission IN SOUMISSIOND.PSOUMISSIOND%TYPE, P_CLIENT IN CLIENT.PCLIENT%TYPE, typePaiement IN varchar )
AS
dSoumission soumissiond.psoumissiond%TYPE;
nClient   Client.pClient%TYPE;
nTelephone   Client.telephone%TYPE;
TPS NUMBER(8,2);
TVQ NUMBER(8,2);
TOTAL NUMBER(8,2);
prix soumissiond.nprix%TYPE;
type_Paiement varchar(30);
BEGIN

SELECT c.pclient,d.psoumissiond,c.telephone,(d.nprix*0.05),d.nprix*0.10,d.nprix
INTO nClient,dSoumission, nTelephone,TPS,TVQ,prix
FROM client c, chargement t, soumissiond d, soumissione e
WHERE d.psoumissiond = p_Soumission --Verification du parametre input equivaut a la cle soumission --
AND c.pclient = P_CLIENT
AND d.psoumissione = e.psoumissione 
AND e.pchargement = t.pchargement 
AND t.pclient = c.pclient;

type_Paiement:=typePaiement;
TOTAL:= TPS + TVQ + prix;

dbms_output.put_line('No Client '|| nClient);
dbms_output.put_line('No SoumissionD '|| dSoumission);
dbms_output.put_line('No telephone '|| nTelephone);
dbms_output.put_line('Nprix '|| prix || '$');
dbms_output.put_line('TPS '|| TPS || '$');
dbms_output.put_line('TVQ '|| TVQ || '$');
dbms_output.put_line('Total '|| TOTAL || '$');
dbms_output.put_line('Mode de paiement '|| type_Paiement);




INSERT INTO FACTURE 
Values(no_facture.nextval,nClient,dSoumission,nTelephone,TPS,TVQ,prix,TOTAL,type_Paiement);
END;
/












