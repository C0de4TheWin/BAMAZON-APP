CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (

  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(50) NULL,
  department_name VARCHAR(50) NULL,
  price INTEGER(10) NULL,
  stock_quantity INTEGER (10) NULL,
    PRIMARY KEY (id)
    );
    
    SELECT * FROM products;
    
    
    INSERT INTO products (product_name, department_name, price, stock_quantity) values ('IPod', 'Electronics', 30, 1);
     INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Toiler Paper', 'Household Goods', 10, 30);
      INSERT INTO products (product_name, department_name, price, stock_quantity) values ('IPhone', 'Electronics', 1000, 5);
       INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Red Baron Pizza', 'Food', 5, 25);
        INSERT INTO products (product_name, department_name, price, stock_quantity) values ('MacBook Pro', 'Electronics', 1450, 3);
         INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Gucci Dog Leash', 'Pet Items', 350, 1);
          INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Surface Pro 4', 'Electronics', 1300, 2);
           INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Copper Mug', 'Household Goods', 30, 15);
            INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Fedora Hat', 'Clothing', 15, 6);
             INSERT INTO products (product_name, department_name, price, stock_quantity) values ('Xbox One', 'Electronics', 250, 7);
    