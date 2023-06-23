--createdb home-depot-clone

DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS site_user;

CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name TEXT NOT null
);

CREATE TABLE item (
    item_id SERIAL,
    item_name TEXT NOT null,
    item_image TEXT,
    item_brand TEXT NOT null,
    item_category INT REFERENCES category(category_id) ON DELETE CASCADE,
    item_price INT NOT null,
    item_type TEXT NOT null,
    item_description TEXT NOT null
);

CREATE TABLE  site_user (
    user_id SERIAL,
    username TEXT NOT null,
    password Text NOT null
);

------test data------

------ test category -----
--INSERT INTO category (category_name) VALUES ('Test category');

----- test item ------
-- INSERT INTO item (item_name, item_brand, item_category, item_price, item_type, item_description) VALUES ('Test Items', 'Test Breand', 1, 1999, 'Test Hammer', 'put all  the nails you want with this tool');

------ test user ------ 
--INSERT INTO site_user (username, password) VALUES ('TEST', '123')

-----categorys------
INSERT INTO category (category_name) VALUES ('Appliances');
INSERT INTO category (category_name) VALUES ('Bath & Faucets');
INSERT INTO category (category_name) VALUES ('Blinds & Window Treatment');
INSERT INTO category (category_name) VALUES ('Building Matrials');
INSERT INTO category (category_name) VALUES ('cleaning');
INSERT INTO category (category_name) VALUES ('Decor & Furniture');
INSERT INTO category (category_name) VALUES ('Doors & Windows');
INSERT INTO category (category_name) VALUES ('Eletrical');
INSERT INTO category (category_name) VALUES ('Flooring & Rugs');
INSERT INTO category (category_name) VALUES ('Hardware');
INSERT INTO category (category_name) VALUES ('Heating & Cooling');
INSERT INTO category (category_name) VALUES ('Holiday Decorations');
INSERT INTO category (category_name) VALUES ('Kitchen');
INSERT INTO category (category_name) VALUES ('Lawn & Garden');
INSERT INTO category (category_name) VALUES ('Lighting & Ceiling Fans');
INSERT INTO category (category_name) VALUES ('Outdoor Living');
INSERT INTO category (category_name) VALUES ('Paint');
INSERT INTO category (category_name) VALUES ('Plumbing');
INSERT INTO category (category_name) VALUES ('Smart Home');
INSERT INTO category (category_name) VALUES ('Storage & Organization');
INSERT INTO category (category_name) VALUES ('Tools');

-----items-----
INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('Profile 27.9 cu. ft. Smart 4-Door French Door Refrigerator with Door in Door in Fingerprint Resistant Stainless Steel', 'https://images.thdstatic.com/productImages/e0992f31-7411-415c-8860-be62d86f2d49/svn/fingerprint-resistant-stainless-steel-ge-profile-french-door-refrigerators-pvd28bynfs-64_300.jpg', 'GE', 1, 4199.00, 'Refrigerator', 'Built on the belief that modern life needs modern solutions. GE Profile Appliances are designed to make daily life simpler by incorporating Smart Home technology and cutting-edge features in every appliance. GE Profile''s sleek design and quality engineering will give your kitchen the most up-to-date look and the best innovative performance you''ve been looking for.');

INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('Cursiva Single Hole Single-Handle Bathroom Faucet in Vibrant Brushed Nickel', 'https://images.thdstatic.com/productImages/1278988d-9b35-4152-9173-9bd53d69896c/svn/vibrant-brushed-nickel-kohler-single-hole-bathroom-faucets-k-r30577-4d-bn-64_100.jpg', 'KOHLER', 2, 149.00, 'Single-Handle Bathroom Faucet', 'The K-R30577-4D single-handle bathroom sink with lever handle has a warm, contemporary design. Cursiva pairs crisp lines with softened geometric surfaces. It comes with a lifetime limited warranty.
');

INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('Cut-to-Width Walnut Cordless Room Darkening 2.5 in. Distressed Premium Faux Wood Blind - 70 in. W x 72 in. L', 'https://images.thdstatic.com/productImages/76fa9081-13df-4f21-9982-e478c018629b/svn/walnut-faux-wood-blinds-dfhsc7272-70-64_100.jpg', 'Generic', 3, 169.00, 'Faux Wood Blinds', 'These Faux Wood Blidns have a emulate wood grain that is printed directly onto the slast and its offer an sophisticated look and are suitable for any room in the house. Our blinds provide you an excellent choice for light control, as well as for privacy. No lift cords for a clean, uncluttered look. This elimination of lift cords make it the safest option for a home with small children or pets. Available in a variety of sizes.');

INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('2 in x 4 in', 'https://images.thdstatic.com/productImages/4f6b481e-d93a-42d2-835d-739c7b26a3f5/svn/brown-prowood-decking-106147-64_100.jpg', 'Home Depot', 4, 4.58, 'Lumber', '#2 Ground Contact Pressure-Treated Lumber');

INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('Ultima ZT1 50 in. Fabricated Deck 23HP V-Twin Kawasaki FR Series Engine Dual Hydro Drive Gas Zero Turn Riding Lawn Mower', 'https://images.thdstatic.com/productImages/b563d7dd-4404-4e71-90e7-fecd1440d0ec/svn/cub-cadet-gas-zero-turn-mowers-ultima-zt1-50-64_300.jpg', 'Cub Cadet', 14, 3799.00, 'Outdoor Power Equipment', 'Introducing the ULTIMA ZT1 SERIES. Step up to the ultimate all-around mowing experience. The Cub Cadet ULTIMA Series ZT1 50 features a 23 HP Kawasaki FR691V series Twin-cylinder OHV Engine, 2 in. x 2 in. tubular steel frame, comfortable high back seat and much more. The Ultima Zero-Turn Riding Mower was built to raise the bar for enhanced strength, durability, redefined comfort and uncompromised performance.');

INSERT INTO item (item_name, item_image, item_brand, item_category, item_price, item_type, item_description) VALUES ('M18 18-Volt Lithium-Ion High Output Starter Kit with Two 6.0 Ah Battery and Charger', 'https://images.thdstatic.com/productImages/3b9bfd39-5c97-41e6-ba34-40932b14a2b6/svn/milwaukee-power-tool-batteries-48-59-1862s-64_300.jpg', 'Milwaukee', 21, 349.00, 'Power Tool Accessories', 'The MILWAUKEE M18 REDLITHIUM HIGH OUTPUT XC6.0 Battery 2-Pack System Starter Kit includes two batteries and an M18/M12 Battery Charger. The M18 REDLITHIUM HIGH OUTPUT XC6.0 Battery Packs provide 50% more power and run 50% cooler than the M18 REDLITHIUM XC battery packs. The optimized combination of size and increased power provides a great solution for the entire range of MILWAUKEE M18 products. It delivers fade-free power and runs substantially cooler through heavy applications, allowing users to push their cordless tools harder and longer than ever before. The M18 REDLITHIUM HIGH OUTPUT XC6.0 provides increased power in extreme cold weather conditions (below 0F / -18C) and delivers more work per charge, driving corded replacement on the jobsite. The REDLITHIUM HIGH OUTPUT XC6.0 battery is fully compatible with over 200 M18 solutions.');
