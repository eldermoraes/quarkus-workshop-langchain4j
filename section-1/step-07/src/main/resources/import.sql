INSERT INTO customer (id, firstName, lastName)
VALUES (1, 'Speedy', 'McWheels');
INSERT INTO customer (id, firstName, lastName)
VALUES (2, 'Zoom', 'Thunderfoot');
INSERT INTO customer (id, firstName, lastName)
VALUES (3, 'Vroom', 'Lightyear');
INSERT INTO customer (id, firstName, lastName)
VALUES (4, 'Turbo', 'Gearshift');
INSERT INTO customer (id, firstName, lastName)
VALUES (5, 'Drifty', 'Skiddy');

ALTER SEQUENCE customer_seq RESTART WITH 5;

INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (1, 1, '2025-11-13', '2025-11-15', 'Verbier, Switzerland');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (2, 1, '2025-11-17', '2025-11-19', 'Sao Paulo, Brazil');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (3, 1, '2025-12-06', '2025-12-10', 'Antwerp, Belgium');

INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (4, 2, '2025-12-20', '2025-12-25', 'Tokyo, Japan');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (5, 2, '2026-01-10', '2026-01-15', 'Brisbane, Australia');

INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (7, 3, '2025-11-15', '2025-11-20', 'Missoula, Montana');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (8, 3, '2025-12-12', '2025-12-18', 'Singapore');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (9, 3, '2026-02-03', '2026-02-09', 'Capetown, South Africa');

INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (10, 4, '2025-12-01', '2025-12-06', 'Nuuk, Greenland');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (11, 4, '2026-01-25', '2026-01-30', 'Santiago de Chile');
INSERT INTO booking (id, customer_id, dateFrom, dateTo, location)
VALUES (12, 4, '2026-02-15', '2026-02-22', 'Dubai');

ALTER SEQUENCE booking_seq RESTART WITH 12;
