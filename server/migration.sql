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
    item_brand TEXT NOT null,
    item_category INT REFERENCES category(category_id),
    item_price INT NOT null,
    item_type TEXT NOT null,
    item_description TEXT NOT null
);

CREATE TABLE site_user (
    user_id SERIAL,
    username TEXT NOT null,
    password Text NOT null
);

--test data--

-- test category 
INSERT INTO category (category_name) VALUES ('Test category');

-- test item 
INSERT INTO item (item_name, item_brand, item_category, item_price, item_type, item_description) VALUES ('Test Items', 'Test Breand', 1, 1999, 'Test Hammer', 'put all  the nails you want with this tool');

--test site_user 
INSERT INTO site_user (username, password) VALUES ('TEST', '123')