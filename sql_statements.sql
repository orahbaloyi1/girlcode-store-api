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
SET cat_img'cat_img.jpg';