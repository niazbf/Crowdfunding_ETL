-- Create the four tables
CREATE TABLE "Contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE "Category" (
    "category" varchar   NOT NULL,
	"category_id" varchar PRIMARY KEY  NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory" varchar   NOT NULL,
	"subcategory_id" varchar PRIMARY KEY NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float(2)   NOT NULL,
    "pledged" float(2)   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES "Contacts"(contact_id),
	FOREIGN KEY (category_id) REFERENCES "Category"(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES "Subcategory"(subcategory_id)
);

--Verify table creation
SELECT * FROM "Campaign";
SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Contacts";

--Import each CSV file into its corresponding SQL table.
--Using pgAdmin GUI: Right-click on each table, select 'Import/Export Data'

--Verify that each table has the correct data after importing csv's
SELECT * FROM "Campaign";
SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Contacts";
