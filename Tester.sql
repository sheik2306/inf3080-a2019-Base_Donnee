
SELECT c.nocompagnie, addresse, nomcompagnie, telephone, camion_id
FROM Camion c, Compagnie d
WHERE c.nocompagnie = d.nocompagnie;


SELECT *
FROM Camion c
INNER JOIN Compagnie d ON c.nocompagnie = d.nocompagnie;



SELECT c.nocompagnie AS numeroCompagnie, addresse, nomcompagnie, telephone, camion_id
FROM Camion c
INNER JOIN Compagnie d ON c.nocompagnie = d.nocompagnie
order by camion_id DESC; -- Descending order



---------------- Soumission --> Chargement --> Route -----------

    SELECT
    e.croute,
    e.nlatori,
    e.nlongori,
    e.nlatdes,
    e.nlongdes,
    e.ndistance,
    d.nosoumission,
    d.pclient,
    d.pchargement,
    d.datesoumission,
    d.prixroute,
    d.prixcarbu,
    d.camion_id,
    c.proute,
    c.poids,
    c.longueur,
    c.largeur,
    c.hauteur,
    c.skid
FROM
    soumission   d,
    chargement   c,
    route        e
WHERE
    d.pchargement = c.pchargement AND c.proute = e.proute AND pClient=10;
    
 
 ---------------- EQUIPEMENT ET TYPE EQUIPEMENT -----------
 
   SELECT
    g.pequipement,
    g.capacite,
    g.longueur,
    g.largeur,
    g.hauteur,
    f.ptypeequipement,
    f.ctypeequipement,
    f.ncout
FROM
    equipement       g,
    typeequipement   f
WHERE
    f.ptypeequipement = g.ptypeequipement; 
    
    
   -- SELECT table_name FROM all_tables WHERE owner='HG191064';
    
    SELECT * FROM user_tab_columns WHERE Table_Name='CAMION';


    