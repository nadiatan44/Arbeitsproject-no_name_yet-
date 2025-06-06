CREATE TABLE warehouses (
    warehouse_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    capacity INT,
    manager_id VARCHAR(100),
    created_at DATE
);

CREATE TABLE warehouse_inventory (
    inventory_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    warehouse_id INT REFERENCES warehouses(warehouse_id),
    product_id INT REFERENCES products(product_id),
    expiry_date DATE,
    quantity INT,
    last_updated DATE
);