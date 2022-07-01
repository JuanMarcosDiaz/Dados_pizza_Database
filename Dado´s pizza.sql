CREATE DATABASE IF NOT EXISTS dados_pizza;

USE dados_pizza;

CREATE TABLE IF NOT EXISTS pizzas(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (20) NOT NULL,
    price DOUBLE (4,2) NOT NULL DEFAULT 30.00
);

CREATE TABLE IF NOT EXISTS ingredients(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (15) NOT NULL,
    id_supplier INTEGER UNSIGNED,
    FOREIGN KEY (id_supplier) REFERENCES supplier(id)
);
CREATE TABLE IF NOT EXISTS supplier(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (50) NOT NULL,
    price_per_gram DOUBLE (3,2) NOT NULL DEFAULT 5.00
);
CREATE TABLE IF NOT EXISTS waiters(
    id_w INTEGER  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (50) NOT NULL,
    `time` ENUM ('Morning','Afternoon','Night')
);
CREATE TABLE If NOT EXISTS cooks(
    id_c INTEGER  UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (50) NOT NULL,
    `time` ENUM ('Morning','Afternoon','Night')
);
CREATE TABLE IF NOT EXISTS clients(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (20) NOT NULL,
    kind ENUM ('Casual','Recurent','Premium')
);
CREATE TABLE IF NOT EXISTS orders(
    id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Date` DATETIME NOT NULL DEFAULT (CURRENT_DATE),
    id_client INTEGER UNSIGNED, 
    waiter INTEGER UNSIGNED,
    cook INTEGER UNSIGNED ,
    FOREIGN KEY (id_client) REFERENCES clients(id),
    FOREIGN KEY (waiter) REFERENCES waiters(id_w), 
    FOREIGN KEY (cook) REFERENCES cooks(id_c)
);
CREATE TABLE IF NOT EXISTS operations(
    id_pizza INTEGER UNSIGNED, 
    FOREIGN KEY (id_pizza)REFERENCES pizzas (id),
    id_order INTEGER UNSIGNED,
    FOREIGN KEY (id_order)REFERENCES orders (id),
    amount INTEGER UNSIGNED
);
CREATE TABLE IF NOT EXISTS expend(
    id_pizza INTEGER UNSIGNED, 
    id_ingredient INTEGER UNSIGNED,
    amount_i INTEGER UNSIGNED,
    FOREIGN KEY (id_pizza) REFERENCES pizzas(id),
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id) 
);
