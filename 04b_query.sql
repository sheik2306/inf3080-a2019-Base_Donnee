SELECT
    camion.camion_id,
    nocompagnie,
    pequipement,
    ptracteur,
    pposition,
    cposition,
    nlat,
    nlong,
    bdisponible
   
FROM
    camion,
    position
WHERE
    camion.camion_id = position.camion_id AND bdisponible=0; -- '1' = Disponible et '0' = Non Disponible;