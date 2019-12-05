SET ECHO ON 
SET SERVEROUTPUT ON
SELECT c.pclient
FROM client c, chargement t, soumissiond d, soumissione e
WHERE d.psoumissiond = 9 AND d.psoumissione = e.psoumissione AND e.pchargement = t.pchargement AND
t.pclient = c.pclient;/

