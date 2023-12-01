CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);
CREATE TABLE campaign (
    cf_id VARCHAR(50) PRIMARY KEY,
    contact_id SERIAL REFERENCES contacts(contact_id),
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) REFERENCES category(category_id),
    subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);