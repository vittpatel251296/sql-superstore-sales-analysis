-- Insert sample customers
INSERT INTO customers VALUES
('CUST-001', 'John Doe',    'Consumer',     'New York',   'New York',   'United States', '10001', 'East'),
('CUST-002', 'Jane Smith',  'Corporate',    'Los Angeles','California', 'United States', '90001', 'West'),
('CUST-003', 'Bob Johnson', 'Home Office',  'Chicago',    'Illinois',   'United States', '60601', 'Central'),
('CUST-004', 'Alice Brown', 'Consumer',     'Houston',    'Texas',      'United States', '77001', 'Central'),
('CUST-005', 'Charlie Wilson','Corporate',  'Phoenix',    'Arizona',    'United States', '85001', 'West');

-- Insert sample products
INSERT INTO products VALUES
('PROD-001', 'Laptop Stand',        'Office Supplies', 'Storage'),
('PROD-002', 'Wireless Mouse',      'Technology',      'Accessories'),
('PROD-003', 'Ergonomic Chair',     'Furniture',       'Chairs'),
('PROD-004', 'Mechanical Keyboard', 'Technology',      'Accessories'),
('PROD-005', 'Monitor Stand',       'Office Supplies', 'Storage'),
('PROD-006', 'USB-C Hub',           'Technology',      'Accessories'),
('PROD-007', 'Desk Lamp',           'Office Supplies', 'Appliances'),
('PROD-008', 'Office Desk',         'Furniture',       'Tables');

-- Insert sample orders
INSERT INTO orders VALUES
('ORD-001', 'CUST-001', 'PROD-001', '2024-01-15', '2024-01-18', 'Standard Class', 2, 150.00,  45.00),
('ORD-002', 'CUST-002', 'PROD-002', '2024-01-16', '2024-01-19', 'Standard Class', 5, 125.00,  37.50),
('ORD-003', 'CUST-003', 'PROD-003', '2024-01-17', '2024-01-20', 'First Class',    1, 350.00, 105.00),
('ORD-004', 'CUST-001', 'PROD-004', '2024-01-18', '2024-01-21', 'Standard Class', 3, 225.00,  67.50),
('ORD-005', 'CUST-004', 'PROD-005', '2024-01-19', '2024-01-22', 'Standard Class', 2, 100.00,  30.00),
('ORD-006', 'CUST-005', 'PROD-006', '2024-01-20', '2024-01-23', 'First Class',    4, 200.00,  60.00),
('ORD-007', 'CUST-002', 'PROD-007', '2024-01-21', '2024-01-24', 'Standard Class', 6, 180.00,  54.00),
('ORD-008', 'CUST-003', 'PROD-008', '2024-01-22', '2024-01-25', 'First Class',    1, 450.00, 135.00),
('ORD-009', 'CUST-001', 'PROD-002', '2024-01-23', '2024-01-26', 'Standard Class', 2,  50.00,  15.00),
('ORD-010','CUST-004', 'PROD-001', '2024-01-24', '2024-01-27', 'Standard Class', 1,  75.00,  22.50),
('ORD-011','CUST-005', 'PROD-003', '2024-01-25', '2024-01-28', 'First Class',    2, 700.00, 210.00),
('ORD-012','CUST-002', 'PROD-004', '2024-01-26', '2024-01-29', 'Standard Class', 1,  75.00,  22.50),
('ORD-013','CUST-001', 'PROD-006', '2024-01-27', '2024-01-30', 'Standard Class', 3, 150.00,  45.00),
('ORD-014','CUST-003', 'PROD-005', '2024-01-28', '2024-01-31', 'First Class',    2, 100.00,  30.00),
('ORD-015','CUST-004', 'PROD-007', '2024-01-29', '2024-02-01', 'Standard Class', 4, 120.00,  36.00);
