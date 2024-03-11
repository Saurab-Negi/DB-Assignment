-- Active: 1710124221397@@127.0.0.1@3306@test

CREATE TABLE product_category (
    ID INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

SELECT * from product_category;

CREATE TABLE product_inventory (
    ID INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

SELECT * from product_inventory;

CREATE TABLE discount (
    ID INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    discount_percent DECIMAL(5,2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

SELECT * from discount;

CREATE TABLE product (
    ID INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    SKU VARCHAR(50),
    category_ID INT,
    inventory_ID INT,
    price DECIMAL(10,2),
    discount_ID INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_ID) REFERENCES product_category(ID),
    FOREIGN KEY (inventory_ID) REFERENCES product_inventory(ID),
    FOREIGN KEY (discount_ID) REFERENCES discount(ID)
);

SELECT * from product;