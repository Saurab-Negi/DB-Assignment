1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
Answer: The relationship between the "Product" and "Product_Category" entities appears to be a many-to-one relationship.
        The relationship between the product table and the product_category table is established through a foreign key constraint.
        This means that multiple products in the product table can share the same category ID, indicating that multiple products can belong to the same category.

2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
Answer: By defining a foreign key constraint on the category_ID column in the product table, referencing the ID column in 
        the product_category table we can ensure that any value inserted into the category ID column in the product table must exist as a primary key in the ID column of the product_category table. This means that you cannot insert a product with a category ID that does not match to an existing category in the product_category table.
        Hence, you can thus ensure that each product has a valid category assigned to it.