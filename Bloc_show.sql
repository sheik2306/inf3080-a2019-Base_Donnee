SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE showInfo

(c_Client IN Client.noclient%type)

IS

n_client Client.nomClient%TYPE;
n_telephone Client.notelephone%TYPE;

BEGIN
    SELECT nomclient, notelephone INTO n_client , n_telephone
    FROM Client 
    WHERE Client.noClient = c_Client;

dbms_output.put_line
('nom' || n_client || 'son tel' || n_telephone);
END;
/
