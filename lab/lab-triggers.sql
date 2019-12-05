CREATE TRIGGER initialiserTotalCommande BEFORE INSERT ON Commande
FOR EACH ROW BEGIN
: new.totalCommande:=0.0; 
END;