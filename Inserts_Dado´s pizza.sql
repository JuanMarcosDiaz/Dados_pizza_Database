USE dados_pizza;
INSERT INTO pizzas (name,price)
VALUES('peperoni',30),
('Vegetariana',30),
('Pollo y Champiñones',40),
('3 Quesos',45),
('Mexicana',35);
ALTER TABLE waiters AUTO_INCREMENT =1;
INSERT INTO waiters(name, time)
VALUES ('Juan Martinez', 'Morning'),
('Maria Estrada', 'Afternoon'),
('Gustavo Petro', 'Night'),
('Luisito Comunica', 'Afternoon'),
('Barry Allen', 'Night');
ALTER TABLE cooks AUTO_INCREMENT =1;
INSERT INTO cooks (name,time)
VALUES('Mark Diaz', 'morning'),
('Max Power', 'Afternoon'),
('Hegan Bernal', 'Night'),
('Elsa Maritano', 'Afternoon'),
('Luis Cáceres', 'Night');
ALTER TABLE supplier AUTO_INCREMENT =1;
INSERT INTO supplier (name, price_per_gram)
VALUES ('Carniceria Zinú',5.8),
('Almacenes Flubber',4),
('Distribuidora El Duende', 4.7);
ALTER TABLE ingredients AUTO_INCREMENT =1;
INSERT INTO ingredients (name, id_supplier)
VALUES ( 'Peperoni',1),('Pimientos',2),
('Tomate',2),('Pollo',1),
('Champiñones', 2),('Quesos',3),
('Maiz', 3), ('Harina',3);
ALTER TABLE clients AUTO_INCREMENT =1;
INSERT INTO clients (name, kind)
VALUES ('Ramiro Suarez','Casual'),
('Elon Musk','Recurent'),
('Alvaro Uribe','Casual'),
('Aldolfo Hitler','Casual'),
('Salvador Allende','Premium'), 
('Luis Perez','Premium'), 
('Paco Delucia','Recurent'),
('Farid Ortiz','Casual'),
('Ernesto Gevara','Recurent');
ALTER TABLE orders AUTO_INCREMENT =1;
INSERT INTO orders (Date,id_client,waiter,cook)
VALUES ('2022-05-18',1,1,1),
('2022-05-18',2,2,2),
('2022-05-18',3,3,3),
('2022-05-19',4,4,4),
('2022-05-19',5,5,5),
('2022-05-19',6,1,1),
('2022-05-20',7,3,2),
('2022-05-20',8,4,5),
('2022-05-20',9,5,3);
INSERT INTO operations (id_order,id_pizza,amount)
VALUES(1,1,2),(1,3,1),
(2,4,1),(2,5,1),
(3,2,1),(3,3,2),
(4,4,3),
(5,2,3),(5,4,1),(5,1,2),
(6,5,1),(6,3,1),
(7,1,1),
(8,1,2),(8,3,2),(8,5,1),
(9,4,2),(9,2,3);
INSERT INTO expend (id_pizza,id_ingredient, amount_i)
VALUES(1,1,200),(1,3,140),(1,6,150),(1,8,250),
(2,2,180),(2,3,180),(2,6,150),(2,8,250),
(3,3,140),(3,4,180),(3,5,120),(3,6,150),(3,8,250),
(4,3,140),(4,6,280),(4,8,250),
(5,2,120),(5,3,140),(5,4,150),(5,6,150),(5,7,160),(5,8,250);