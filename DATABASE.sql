/*
CREATE TABLE clienti (
	numero_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	cognome VARCHAR(50) NOT NULL,
	anno_di_nascita DATE NOT NULL,
	regione_residenza VARCHAR(100) NOT NULL
);

CREATE TABLE prodotti (
	id_prodotto SERIAL PRIMARY KEY,
	descrizione VARCHAR(150) NOT NULL,
	in_produzione BOOLEAN NOT NULL,
	in_commercio BOOLEAN NOT NULL,
	data_attivazione DATE NOT NULL,
	data_disattivazione DATE NOT NULL
);

CREATE TABLE fornitori (
	numero_fornitore SERIAL PRIMARY KEY,
	denominazione VARCHAR(50) NOT NULL,
	regione_residenza VARCHAR(50) NOT NULL
);

CREATE TABLE fatture (
	numero_fattura SERIAL PRIMARY KEY,
	tipologia VARCHAR(50) NOT NULL,
	importo DECIMAL NOT NULL,
	iva DECIMAL NOT NULL,
	id_cliente INTEGER REFERENCES clienti(numero_cliente) NOT NULL,
	data_fattura DATE DEFAULT CURRENT_DATE NOT NULL,
	numero_fornitore INTEGER REFERENCES fornitori(numero_fornitore)
);
*/

ALTER TABLE prodotti
ALTER COLUMN data_disattivazione DROP NOT NULL;

INSERT INTO clienti(nome, cognome, anno_di_nascita, regione_residenza)
VALUES
('Umberto', 'Tramontano', '1992-04-06', 'Basilicata'),
('Ginevra', 'Gargiulo', '1980-04-06', 'Lazio'),
('Tommaso', 'Panciroli', '2000-04-06', 'Calabria'),
('Nicola', 'Albanese', '1990-04-06', 'Lazio'),
('Daniel', 'Indrieri', '1982-04-06', 'Toscana'),
('Mario', 'Bianchi', '1982-04-06', 'Abruzzo'),
('Gabriele', 'Lucarelli', '1999-04-06', 'Liguria');

INSERT INTO prodotti(descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)
VALUES
('Laptop con processore Intel i7 e 16GB di RAM', true, true, '2024-01-01', NULL),
('Smartphone AMOLED con 128GB di memoria', true, true, '2023-12-01', NULL),
('Cuffie Bluetooth con cancellazione del rumore', true, false, '2022-06-15', '2024-01-01'),
('Zaino impermeabile per laptop', false, true, '2023-01-10', NULL),
('Tastiera meccanica con retroilluminazione RGB', true, false, '2023-03-05', '2023-12-31'),
('Mouse gaming con DPI regolabili', true, true, '2024-01-15', NULL),
('Monitor 4K da 27 pollici con HDR', true, true, '2023-11-20', NULL),
('Stampante laser multifunzione', false, true, '2022-09-01', NULL),
('Tablet con schermo da 10 pollici e 64GB di memoria', true, false, '2023-01-15', '2023-12-15'),
('Hard disk esterno da 2TB con USB 3.0', true, true, '2023-05-10', NULL),
('Scheda grafica NVIDIA RTX 3060', false, true, '2023-07-01', NULL);

INSERT INTO fornitori(denominazione, regione_residenza)
VALUES
('Tech Solutions SRL', 'Lombardia'),
('Global Supplies SPA', 'Lazio'),
('EcoGreen Distribution', 'Toscana'),
('HighTech Components', 'Veneto'),
('Logistica Italia SRL', 'Emilia-Romagna'),
('Innovazioni Futuro SRL', 'Piemonte'),
('Distribuzioni Mare SPA', 'Liguria'),
('Agritech Solutions', 'Puglia'),
('Energia Pulita SRL', 'Sicilia'),
('Nordic Tech SPA', 'Trentino-Alto Adige');


INSERT INTO fatture (tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)
VALUES
('Vendita Prodotto', 1500.00, 300.00, 31, '2024-01-15', 42),
('Servizio di consulenza', 2000.00, 400.00, 32, '2024-01-10', 41),
('Vendita Prodotto', 750.00, 150.00, 33, '2024-01-20', 43),
('Manutenzione hardware', 1200.00, 240.00, 34, '2024-01-05', 44),
('Vendita Prodotto', 500.00, 100.00, 35, '2024-01-12', 45),
('Servizio di consulenza', 2200.00, 440.00, 36, '2024-01-28', 43),
('Vendita Prodotto', 3200.00, 640.00, 31, '2024-01-22', 44),
('Vendita Prodotto', 1250.00, 20.00, 32, '2024-01-18', 42),
('Manutenzione hardware', 950.00, 190.00, 33, '2024-01-23', 45),
('Vendita Prodotto', 1850.00, 370.00, 34, '2024-01-26', 41),
('Servizio di consulenza', 3000.00, 600.00, 35, '2024-01-30', 44),
('Vendita Prodotto', 2100.00, 420.00, 36, '2024-01-24', 43),
('Vendita Prodotto', 1300.00, 20.00, 31, '2024-01-29', 50),
('Manutenzione hardware', 1400.00, 20.00, 32, '2024-01-17', 50),
('Vendita Prodotto', 2200.00, 440.00, 33, '2024-01-14', 41);
