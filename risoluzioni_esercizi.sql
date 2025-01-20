/*esercizio 1*/
SELECT * FROM clienti WHERE nome='Mario';
/*esercizio 2*/
SELECT nome, cognome FROM clienti WHERE EXTRACT(YEAR FROM anno_di_nascita)= 1982;
/*esercizio 3*/
SELECT numero_fattura FROM fatture WHERE iva = 20;
/*esercizio 4*/
SELECT * FROM prodotti WHERE EXTRACT(YEAR FROM data_attivazione)= 2023 AND (in_produzione = TRUE OR in_commercio = TRUE);
/*esercizio 5*/
SELECT * 
FROM fatture 
JOIN clienti 
ON id_cliente = numero_cliente 
WHERE importo < 1000
ORDER BY numero_fattura ASC;

