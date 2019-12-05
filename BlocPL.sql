SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE afficherLivraison

(noCommande detaillivraison.nocommande%TYPE, noArticle detaillivraison.noarticle%TYPE )--  < -- LES PARAMETRES EN ENTREE IN INPUT
IS 
-- Les parametres en sorties
    LeNoLivraison detaillivraison.nolivraison%TYPE; 
    quantiteLivrer detaillivraison.noarticle%TYPE;

-- L'input du cursor est l'input de l'entree considerer comme unitaire
    CURSOR lignesCommande (unNoCommande detaillivraison.nocommande%TYPE, unNoArticle detaillivraison.noarticle%TYPE )
    IS -- Apres le IS , c'est ce que nous rechercons et avant le IS c'est les parametres
    SELECT noLivraison,quantiteLivree
        FROM DetailLivraison 
        WHERE( noCommande = unNoCommande AND noArticle = unNoArticle);
    
BEGIN
        DBMS_OUTPUT.PUT_LINE('noCommande #:'|| noCommande);
        --DBMS_OUTPUT.PUT_LINE(noCommande);
        DBMS_OUTPUT.PUT_LINE('noArticle #:' || noArticle);
        --DBMS_OUTPUT.PUT_LINE(noArticle);


    OPEN  lignesCommande (noCommande, noArticle);
    
    LOOP
        FETCH lignesCommande 
        INTO leNoLivraison,quantiteLivrer; --Mettre le resultat du select dans l'input du cursor
        EXIT WHEN lignesCommande %NOTFOUND;
        
        DBMS_OUTPUT.PUT(' unNolivraison #:');
        DBMS_OUTPUT.PUT_LINE(leNoLivraison);
        DBMS_OUTPUT.PUT(' quantitécommandée #: ');
        DBMS_OUTPUT.PUT_LINE(quantiteLivrer);
    END LOOP;
    
    CLOSE lignesCommande;

    END afficherLivraison;
        /
