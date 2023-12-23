
-- CREATE TABLE admins (
--     admin_id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(50) NOT NULL,
--     password VARCHAR(255) NOT NULL
-- );
-- CREATE TABLE table_status (
--     table_number INT PRIMARY KEY,
--     status VARCHAR(10) DEFAULT 'white',
--     FOREIGN KEY (table_number) REFERENCES tables(table_number) ON DELETE CASCADE
-- );

-- CREATE TABLE tables (
--     table_number INT PRIMARY KEY
-- );
-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     table_number INT,
--     admin_id INT,
--     FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL
-- );


-- CREATE TABLE food (
--     food_id INT AUTO_INCREMENT PRIMARY KEY,
--     food_name VARCHAR(255) NOT NULL,
--     image_link VARCHAR(500),
--     discount_rate DECIMAL(5, 2) DEFAULT 0,
--     admin_id INT,
--     FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL
-- );
-- CREATE TABLE detail_food (
--     item_id INT AUTO_INCREMENT PRIMARY KEY,
--     item_name VARCHAR(255) NOT NULL,
--     description TEXT,
--     image_link VARCHAR(500),
--     food_id INT,
--     admin_id INT,
--     FOREIGN KEY (food_id) REFERENCES food(food_id) ON DELETE SET NULL,
--     FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL
-- );

-- CREATE TABLE orders (
--     order_id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     item_id INT,
--     quantity INT DEFAULT 1,
--     discount DECIMAL(5, 2) DEFAULT 0,
--     admin_id INT,
--     FOREIGN KEY (user_id) REFERENCES users(id),
--     FOREIGN KEY (item_id) REFERENCES detail_food(item_id),
--     FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL
-- );



-- CREATE TABLE payment_methods (
--     method_id INT AUTO_INCREMENT PRIMARY KEY,
--     method_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE invoices (
--     invoice_id INT AUTO_INCREMENT PRIMARY KEY,
--     order_id INT,
--     user_id INT,
--     total_amount DECIMAL(10, 2) NOT NULL,
--     payment_method_id INT,
--     payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (order_id) REFERENCES orders(order_id),
--     FOREIGN KEY (user_id) REFERENCES users(id),
--     FOREIGN KEY (payment_method_id) REFERENCES payment_methods(method_id)
-- );

-- CREATE TABLE restaurant_info (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) DEFAULT 'Mì Cay Hott',
--     address VARCHAR(255) DEFAULT '99 Tô Hiến Thành'
-- );

-- CREATE TABLE cart (
--     cart_id INT AUTO_INCREMENT PRIMARY KEY,
--     order_id INT,
--     item_id INT,
--     quantity INT DEFAULT 1,
--     price DECIMAL(10, 2) NOT NULL,
--     admin_id INT,
--     FOREIGN KEY (order_id) REFERENCES orders(order_id),
--     FOREIGN KEY (item_id) REFERENCES detail_food(item_id),
--     FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL
-- );
-- CREATE TABLE menu (
--     menu_id INT AUTO_INCREMENT PRIMARY KEY,
--     item_name VARCHAR(255) NOT NULL,
--     image_link VARCHAR(500),
--     price DECIMAL(10, 2) NOT NULL
-- );
-- CREATE TABLE cart_food_discount (
--     cart_id INT,
--     item_id INT,
--     discount_amount DECIMAL(10, 2) DEFAULT 0,
--     FOREIGN KEY (cart_id) REFERENCES cart(cart_id),
--     FOREIGN KEY (item_id) REFERENCES detail_food(item_id)
-- );


-- ALTER TABLE detail_food ADD COLUMN discount_rate DECIMAL(5, 2) DEFAULT 0;

-- UPDATE detail_food SET discount_rate = 15.00 WHERE item_id IN (1,2,3,4,5,7,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24); 

-- ALTER TABLE food ADD COLUMN discount_rate DECIMAL(5, 2) DEFAULT 0;

-- UPDATE food SET discount_rate = 15.00 WHERE food_id IN (1,2,3,4,5,7,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24); 




-- ALTER TABLE cart ADD COLUMN discount_amount DECIMAL(10, 2) DEFAULT 0;


-- UPDATE cart SET discount_amount = (price * quantity * (discount_rate / 100))
-- WHERE item_id IN (1,2,3,4,5,7,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24); 


-- SELECT * FROM cart_food_discount;
-- SELECT * FROM cart;


-- INSERT INTO restaurant_info DEFAULT VALUES;
-- INSERT INTO admins (username, password) VALUES ('admin', 'admin123');


-- INSERT INTO detail_food (item_name, description, image_link, admin_id) VALUES
-- ('Spicy fried fish ball noodles', 'Spicy fried fish ball noodles  with spicy fried fish patties creates a unique dish, 
-- combining the flavor of soft and smooth spaghetti with the crunch and spiciness of fried fish patties.
--  The main ingredients of this dish include spaghetti, fried fish patties that has been cleaned and cut into small pieces, spices such as garlic, onions, chili, 
--  and other ingredients such as fish sauce, cooking oil and other spices. 
-- The flavor of spaghetti combined with spicy fried fish cakes brings a rich and harmonious combination.', 
-- 'imageSpicyFriedFishBallNoodles.png',1),


-- ('Spicy beef noodles', 'Spicy beef noodles is a delicious and enticing dish in Asian cuisine. Fresh noodles are stir-fried together with thinly sliced beef, 
-- onions, and spicy condiments such as black bean sauce and chili sauce. 
-- The unique flavor of spicy beef noodles combines the smooth and tender texture of the noodles, the savory taste of the beef, and the fiery spiciness of the seasonings. 
-- This dish is typically enjoyed hot, offering a delightful culinary experience with its spicy, salty, and rich flavors. Spicy beef noodles are a popular choice 
-- for family lunches or dinners, satisfying the cravings of those who enjoy spicy dishes.', 
-- 'imageSpicyBeefNoodles.png',1),


-- ('Combo: Spicy beef noodles + Pepsi ', 'The combo of Pepsi soft drink with spicy beef noodles creates a delicious and unique combination. 
-- When enjoying the spicy beef noodles with Pepsi, you will experience a flavorful and satisfying culinary experience.
-- With the rich and fiery taste of the spicy beef noodles, Pepsi adds a sweet and refreshing flavor to balance it out. 
-- Drinking Pepsi helps to soothe the spiciness and brings a delightful contrast to the dish.
-- Pepsi also enhances the overall experience by providing a refreshing sensation and alleviating the heat after consuming the spicy beef noodles. 
-- Together, Pepsi and spicy beef noodles create a harmonious balance between the spicy and sweet flavors, 
-- offering a diverse and enjoyable culinary experience for the palate.', 
-- 'imageCombo.png',1),


-- ('Spicy Italian pasta ', 'Spicy Italian pasta is a fascinating and enticing dish in Italian cuisine that offers a rich and stimulating culinary experience. 
-- Spaghetti, or Italian noodles, are cooked until tender and 
-- combined with spicy ingredients such as red chili peppers and garlic, along with seasonings like black pepper and salt.
-- The flavor of spicy Italian pasta is a perfect blend of spiciness and other flavors. 
-- The combination of red chili peppers and garlic creates a distinctive layer of aroma, making this dish appealing with its unique and refined taste.', 
-- 'imageSpicyItalianPasta.png',1),


-- ('Spicy sausage noodles', 'Spicy sausage noodles is a delicious and exciting dish that combines noodles, sausages, and a spicy flavor. 
-- The noodles are cooked to a soft and chewy texture, accompanied by a broth infused with various spices and pepper, creating a rich and flavorful taste. The addition of sausage enhances the aroma 
-- and blends harmoniously with the noodles, creating a perfect combination. Black pepper sprinkled on top of the noodles further intensifies the characteristic spiciness. 
-- This dish is popular in Korean cuisine and has become a favorite worldwide. Whether you enjoy spicy food or not, spicy sausage noodles are an excellent choice to savor a unique and enticing flavor.', 
-- 'imageSpicySausageNoodles.png',1),


-- ('Spicy mixed noodles', 'Spicy mixed noodles are a rich and flavorful dish that combines various ingredients to create a stimulating taste experience. 
-- The noodles are perfectly cooked, with a chewy texture, and immersed in a spicy broth infused with the flavors of garlic, onions, and chili. 
-- Spicy mixed noodles are typically enhanced with beef, pork, squid, seafood, vegetables, and tofu. 
-- This combination brings forth a diverse and delicious array of flavors.', 
-- 'imageSpicyMixedNoodles.png',1),


-- ('Spicy crayfish noodles', 'Spicy crayfish noodles combine succulent crayfish with fiery spices for a tantalizing dish. 
-- Perfectly cooked noodles, such as egg or rice noodles, provide a chewy texture. The star ingredient, crayfish, adds a sweet and delicate taste. 
-- Spices like chili peppers, garlic, ginger, and Sichuan peppercorns create a flavorful and numbing sensation. Additional ingredients like bell peppers, onions, and scallions add depth. 
-- The dish is served in a rich, aromatic broth that clings to the noodles', 
-- 'imageSpicyCrayfishNoodles.png', 1),


-- ('Pepsi', 'Pepsi is a popular carbonated sweet beverage worldwide. With its brown color and delicate bubbles, Pepsi carries an enticing aroma. 
-- The sweetness from the cane sugar provides a satisfying sensation. The complex cola flavor with hints of vanilla, licorice, and cashew creates a unique blend. 
-- Carbon dioxide brings a refreshing and gentle sensation with light fizziness. Pepsi is an excellent choice for quenching thirst and enjoying in daily life.', 
-- 'imagePepsi.png',1),


-- ('Stir-fried corn', 'Stir-fried corn is the perfect combination of fresh corn and fresh vegetables. With a quick shake of the pan, the corn is stir-fried with delicious spices to create a unique and steaming dish. guide.
-- We use fresh corn, adding vegetables like onions, carrots and bell peppers to enhance flavor and freshness. This combination results in a dish that is not only delicious but also nutritious.
-- Stir-fried Corn has a wonderful flavor, with fresh corn remaining crispy and sweet, combined with aromatic herbs and spices. This is a popular dish during the summers, when fresh corn and vegetables shine on the plate.', 
-- 'imageStir-friedCorn.png',1),


-- ('Mixed rice paper salad', 'Mixed rice paper salad is a harmonious combination of thin, smooth rice paper layers and fresh ingredients such as green vegetables, chicken or shrimp, and unique spices.
-- We create a unique salad by mixing the main ingredients together. Fresh greens like spinach, fish mint, and basil along with chopped chicken or fresh shrimp create a perfect combination of flavor and nutrients.', 
-- 'imageMixedRicePaperSalad.png',1),


-- ('Green mango salad', 'Green mango salad is a wonderful combination of crunchy green mango, refreshing green vegetables and unique spices. This salad brings a refreshing feeling and unique flavor.
-- We use green mangoes that are ripe but still crunchy and sweet and sour. Green mangoes are peeled and sliced into thin strips, creating a crunchy texture and unique flavor. 
-- Combined with green vegetables such as raw vegetables, fish mint, basil and coriander, the salad becomes fresh and nutritious.', 
-- 'imageGreenMangoSalad.png',1),


-- ('Lemon tea', 'Lemon tea is the perfect combination of fresh herbal tea and fresh lemon juice. This is a popular drink and suitable in all weather.
-- We use fresh herbal tea, such as green tea, black tea or oolong tea, and combine it with fresh lemon juice to create a harmonious balance between the tea flavor and the slightly sour taste of lemon.', 
-- 'imageLemonTea.png',1),


-- ('Sweet potato fries', 'Sweet potato fries are a fun and healthy version of traditional potato chips. We use sweet potatoes, a tuber that is rich in nutrients and has a unique flavor.
-- Sweet potatoes are cut into long bars, creating crispy fried sweet potato sticks. They are then fried in hot oil until they become golden and crispy.
-- "Sweet Potato Fries" has the naturally sweet flavor of sweet potatoes, combined with a mild salty taste from spices like salt and pepper. 
-- This creates a harmonious balance between sweet and savory flavors, resulting in a very enjoyable eating experience.', 
-- 'imageSweetPotatoFries.png',1),


-- ('Fried fermented pork roll', 'Fried fermented pork roll is a popular dish in traditional cuisine, especially in street food. It''s made from Nem chua, a type of spring roll made from marinated and fermented pork, then deep-fried. 
-- Nem chua is cut into small pieces and then fried in hot oil until it becomes golden and crispy. The frying process helps create a delicious crispy crust on the outside, while the inside still retains the softness and characteristic flavor of spring rolls.', 
-- 'imageFriedFermentedPorkRoll.png',1),


-- ('Fried sausages', 'Fried sausages is a popular dish in traditional cuisine, especially in street food. It''s made from ground meat, often pork, along with salt, spices and breadcrumbs. 
-- The mixture is then stuffed into a casing and fried until it becomes golden and crispy. The frying process helps enhance the flavor and texture of the sausages.', 
-- 'imageFriedSausages.png',1),


-- ('Peach tea', 'Peach tea is the perfect combination of tea and fresh peach flavor. This is a popular drink and suitable to enjoy in all weather. We use black tea, green tea or oolong tea to create the base for "Peach Tea". 
-- Then we add fresh peaches or peach juice to create a natural and sweet peach flavor.', 
-- 'imgPeachTea.png',1);

-- ALTER TABLE cart ADD COLUMN menu_id INT;

-- INSERT INTO payment_methods (method_name) VALUES ('Cash'), ('QR Code');


-- INSERT INTO tables (table_number) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24);

-- -- Assume no table has been selected initially, so all are white
-- INSERT INTO table_status (table_number) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),(21), (22), (23), (24);


-- ALTER TABLE detail_food ADD COLUMN menu_id INT;
-- ALTER TABLE food ADD COLUMN menu_id INT;


-- UPDATE detail_food SET menu_id = 1 WHERE item_id IN (1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24);


-- UPDATE food SET menu_id = 1 WHERE food_id IN (1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24);

-- UPDATE cart SET menu_id = 1 WHERE item_id IN (1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24);


-- INSERT INTO menu (item_name, image_link, price) VALUES
-- ('Spicy fried fish ball noodles','imageSpicyFriedFishBallNoodles.png', 9.99),
-- ('Spicy beef noodles','imageSpicyBeefNoodles.png', 8.99),
-- ('Combo: Spicy beef noodles + Pepsi','imageCombo.png', 7.99),
-- ('Spicy Italian pasta','imageSpicyItalianPasta.png', 6.99),
-- ('Spicy sausage noodles','imageSpicySausageNoodles.png', 10.99),
-- ('Spicy mixed noodles', 'imageSpicyItalianPasta.png', 12.99),
-- ('Spicy crayfish noodles','imageSpicyCrayfishNoodles.png', 8.99),
-- ('Pepsi', 'imagePepsi.png', 9.99),
-- ('Stir-fried corn','imageStir-friedCorn.png', 7.99),
-- ('Mixed rice paper salad','imageMixedRicePaperSalad.png', 6.99),
-- ('Green mango salad','imageGreenMangoSalad.png', 10.99),
-- ('Lemon tea', 'imageLemonTea.png', 12.99),
-- ('Sweet potato fries','imageSweetPotatoFries.png', 8.99),
-- ('Fried fermented pork roll','imageFriedFermentedPorkRoll.png', 9.99),
-- ('Fried sausages','imageFriedSausages.png', 10.99),
-- ('Peach tea', 'imgPeachTea.png', 12.99);

-- SELECT * FROM admins;
-- SELECT * FROM users;
-- SELECT * FROM detail_food;
-- SELECT * FROM orders;
-- SELECT * FROM tables;
-- SELECT * FROM table_status;
-- SELECT * FROM payment_methods;
-- SELECT * FROM invoices;
-- SELECT * FROM restaurant_info;
-- SELECT * FROM food;
-- SELECT * FROM menu;

-- -- DROP TABLE IF EXISTS tables;
-- -- DROP TABLE IF EXISTS table_status;
-- -- DROP TABLE IF EXISTS invoices;
-- -- DROP TABLE IF EXISTS payment_methods;
-- -- DROP TABLE IF EXISTS food;
-- -- DROP TABLE IF EXISTS restaurant_info;
-- -- DROP TABLE IF EXISTS orders;
-- -- DROP TABLE IF EXISTS detail_food;
-- -- DROP TABLE IF EXISTS users;
-- -- DROP TABLE IF EXISTS admins;
-- -- DROP TABLE IF EXISTS menu;

CREATE DATABASE Projects;
use Projects;
CREATE TABLE admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE tables (
    table_id INT AUTO_INCREMENT PRIMARY KEY,
    nameTable varchar(255)
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    table_id INT,
    FOREIGN KEY (table_id) REFERENCES tables(table_id) ON DELETE SET NULL
);

INSERT INTO admins (username, password) VALUES ('admin', 'password123');
INSERT INTO tables (nameTable) VALUES
('Bàn 1'),
('Bàn 2'),
('Bàn 3'),
('Bàn 4'),
('Bàn 5'),
('Bàn 6'),
('Bàn 7'),
('Bàn 8'),
('Bàn 9'),
('Bàn 10'),
('Bàn 11'),
('Bàn 12'),
('Bàn 13'),
('Bàn 14'),
('Bàn 15'),
('Bàn 16'),
('Bàn 17'),
('Bàn 18'),
('Bàn 19'),
('Bàn 20'),
('Bàn 21'),
('Bàn 22'),
('Bàn 23'),
('Bàn 24');

DROP DATABASE Projects;