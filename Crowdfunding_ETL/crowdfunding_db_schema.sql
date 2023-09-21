CREATE TABLE contacts (
	contact_id INT Primary Key,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);
CREATE TABLE category (
	category_id VARCHAR(20) Primary Key,
	category VARCHAR(50) NOT NULL
);
CREATE TABLE subcategory (
	subcategory_id VARCHAR(20) Primary Key,
	subcategory VARCHAR(100) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT Primary Key,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(100) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	currency VARCHAR(50) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL,
	subcategory_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

select *
from campaign;

select*
from category;

select *
from contacts;