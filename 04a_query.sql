SELECT
    client.pclient,
    nom,
    telephone,
    addresse,
    nosoumission,
    pchargement,
    datesoumission,
    prixroute,
    prixcarbu,
    camion_id
    
FROM
    soumission ,
    client       
WHERE
    client.pclient = soumission.pclient AND client.pclient=4 AND datesoumission='2019-09-30';
    