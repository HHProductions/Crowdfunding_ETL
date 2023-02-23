-- Run first  to  create a database
CREATE DATABASE crowdfunding_db

-- Select the above created database in PGAdmin
-- Run the following codes in order, to create tables
CREATE TABLE contacts (
contact_id INT,
first_name VARCHAR(16),
last_name VARCHAR(16),
email VARCHAR(48),
PRIMARY KEY (contact_id)
);

CREATE TABLE category (
category_id VARCHAR(8),
category VARCHAR(16),
PRIMARY KEY (category_id)
);
	
CREATE TABLE subcategory (
subcategory_id VARCHAR(8),
subcategory VARCHAR(24),
PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
cf_id INT,
contact_id INT,
company_name VARCHAR(40),
description VARCHAR(56),
goal FLOAT,
pledged FLOAT,
outcome VARCHAR(16),
backers_count INT,
country VARCHAR(8),
currency VARCHAR(8),
launched_date DATE,
end_date DATE,
category_id VARCHAR(8),
subcategory_id VARCHAR(8),
FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
FOREIGN KEY(category_id) REFERENCES category (category_id),
FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);

-- Run the following lines individually to display the tables
SELECT * FROM contacts

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM campaign