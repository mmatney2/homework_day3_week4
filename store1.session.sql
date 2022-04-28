DROP TABLE IF EXISTS vendor CASCADE;
CREATE TABLE vendor(
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(50),
    vender_phone VARCHAR(50)
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_film VARCHAR(50)
);

DROP TABLE IF EXISTS item CASCADE;
CREATE TABLE item(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    "desc" TEXT, 
    price DECIMAL(10,2)
);

DROP TABLE IF EXISTS film CASCADE;
CREATE TABLE film(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(50),
    "desc" TEXT
);

-- DROP TABLE IF EXISTS vendor_item CASCADE;
-- CREATE TABLE vendor_id(
--     vendor_id INTEGER NOT NULL,
--     item_id INTEGER NOT NULL,
--     FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id),
--     FOREIGN KEY (item_id) REFERENCES item(item_id)
-- );

DROP TABLE IF EXISTS "ticket order" CASCADE;
CREATE TABLE "ticket order"(
    customer_id SERIAL PRIMARY KEY,
    film_choice VARCHAR(50),
    film_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now()),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS film CASCADE;
CREATE TABLE film(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100),
    film_description VARCHAR(13)
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL UNIQUE,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);

-- DROP TABLE IF EXISTS ticket_item CASCADE;
-- CREATE TABLE ticket_item(
--     ticket_order_id INTEGER NOT NULL,
--     item_id INTEGER NOT NULL,
--     FOREIGN KEY(ticket_order_id) REFERENCES ticket_order(ticket_order_id),
--     FOREIGN KEY(item_id) REFERENCES item(item_id)
-- );

-- INSERT INTO customer (customer_name, customer_film) VALUES
-- ('Mary','The Mummy'),
-- ('Heather', 'Chucky'),
-- ('Martha', 'Jason');

-- INSERT INTO vendor(vendor_name, vendor_phone) VALUES
-- ('popcorn services', '7804569856'),
-- ('Coka Soda', '5648546556'),
-- ('Candy Co', '1234567890');

-- INSERT INTO item(item_name, "desc", price) VALUES
-- ('popcorn', 'Best Movie snack ever', 9.99),
-- ('Pop', 'rots your teeth', 10.99),
-- ('Candy', 'sweetest movie treat', 15);

-- INSERT INTO film(film_name, "desc") VALUES
-- ('popcorn', 'Best Movie snack ever'),
-- ('Pop', 'rots your teeth'),
-- ('Candy', 'sweetest movie treat');

-- INSERT INTO vendor_item(vendor_id, item_id) VALUES
-- (1, 1),
-- (1, 2),
-- (3, 3),
-- (2, 1);

-- INSERT INTO cart(item_id, customer_id) VALUES
-- (1,1),
-- (1,1),
-- (1,2),
-- (1,1),
-- (2,2),
-- (2,1),
-- (3,3);

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


