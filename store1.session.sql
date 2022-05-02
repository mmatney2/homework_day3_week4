DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP TABLE IF EXISTS salesperson CASCADE;
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP TABLE IF EXISTS car_lot CASCADE;
CREATE TABLE car_lot(
    car_lot_id SERIAL PRIMARY KEY,
    vin VARCHAR(50),
    make VARCHAR(50),
    model VARCHAR(50)
);

DROP TABLE IF EXISTS serviced_car CASCADE;
CREATE TABLE serviced_car(
    customer_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);
-- DROP TABLE IF EXISTS service_order CASCADE;
-- CREATE TABLE service_order(
--     customer_id INTEGER NOT NULL,
--     service_ticket_id INTEGER NOT NULL,
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
--     FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id)
-- );

DROP TABLE IF EXISTS car_purchase CASCADE;
CREATE TABLE car_purchase(
    car_lot_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY(car_lot_id) REFERENCES car_lot(car_lot_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);

-- DROP TABLE IF EXISTS car_order CASCADE;
-- CREATE TABLE car_order(
--     car_order_id SERIAL PRIMARY KEY,
--     car_price DECIMAL(18,2),
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
-- );


-- DROP TABLE IF EXISTS sales_invoice CASCADE;
-- CREATE TABLE sales_invoice(
--     sales_invoice_id SERIAL PRIMARY KEY,
--     vin VARCHAR(50),
--     FOREIGN KEY (car_lot_id) REFERENCES car_lot(car_lot_id),
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
-- );
-- DROP TABLE IF EXISTS service_ticket CASCADE;
-- CREATE TABLE service_ticket(
--     service_ticket_id SERIAL PRIMARY KEY,
--     FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
-- );
   
--EXAMPLE PRIMARY KEY
-- CREATE TABLE Persons (
--     ID SERIAL PRIMARY KEY,
--     LastName varchar(255) NOT NULL,
--     FirstName varchar(255),
--     Age int,
--     PRIMARY KEY (ID)
-- );
-- CREATE TABLE Orders (
--     OrderID int NOT NULL,
--     OrderNumber int NOT NULL,
--     PersonID int,
--     PRIMARY KEY (OrderID),
--     FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
-- );
-- EXAMPLE FOREIGN KEY



-- INSERT INTO customer (customer_name) VALUES
-- ('Mary'),
-- ('Heather'),
-- ('Martha');

-- INSERT INTO film (film_name, "desc") VALUES
-- ('Mary1','The Mummy'),
-- ('Heather1', 'Chucky'),
-- ('Martha1', 'Jason');

-- INSERT INTO vendor(vendor_name, vendor_phone) VALUES
-- ('popcorn services', '7804569856'),
-- ('Coka Soda', '5648546556'),
-- ('Candy Co', '1234567890');

-- INSERT INTO item(item_name, "desc", item_price) VALUES
-- ('popcorn', 'Best Movie snack ever', 9.99),
-- ('Pop', 'rots your teeth', 10.99),
-- ('Candy', 'sweetest movie treat', 15);

-- INSERT INTO ticket_order(film_choice, ticket_price) VALUES
-- ( 'Hero on the Roof' , 15.99),
-- ( 'Happy Sad Mad', 15.99),
-- ( 'Water Sun Wind', 12.99);

-- INSERT INTO vendor_item(vendor_id, item_id) VALUES
-- (1, 1),
-- (1, 2),
-- (3, 3),
-- (2, 1);

-- INSERT INTO ticket_order(customer_id) VALUES
-- (1),
-- (2),
-- (1),
-- (3),
-- (2),
-- (2),
-- (3);

-- INSERT INTO "ticket"(customer_id) VALUES
-- (1),
-- (2),
-- (3);

-- INSERT INTO order_item(order_id, item_id) VALUES
-- (1,2),
-- (1,2),
-- (1,3),
-- (2,1),
-- (3,3),
-- (3,3);


