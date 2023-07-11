CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    cat_name TEXT NOT NULL UNIQUE,
    slug TEXT NOT NULL UNIQUE,
    cat_desc TEXT
)

INSERT INTO categories(cat_name, slug)
VALUES('Funiture', 'funiture'),
	('Hand Bag', 'hand bag'),
	('Books', 'books'),
	('Tech', 'tech'),
	('Sneaker', 'sneaker'),
	('Travel', 'travel');
	
-- Add cat_img colum on categories
ALTER TABLE categories
ADD cat_img TEXT;

-- Updated cat_img column for all rows
UPDATE categories
SET cat_img ='cat_img.jpg';

-- Create Products table
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	prod_name TEXT NOT NULL UNIQUE,
	prod_slug TEXT NOT NULL UNIQUE,
	prod_desc TEXT,
	prod_img TEXT NOT NULL UNIQUE,
	prod_price DOUBLE PRECISION NOT NULL
	);
	
INSERT INTO products (prod_name, prod_slug, prod_desc, prod_img, prod_price)
VALUES ('Base Camp Duffer M', 'base camp duffel m', 'Table with air purifier, stained veneer/black', 'base_camp.png', 159.00);
