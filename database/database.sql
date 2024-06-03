CREATE TABLE Finances (
trans_id INT PRIMARY KEY,
trans_date DATE,
total INT,
type VARCHAR(50)
);

CREATE TABLE alert (
alert_id INT PRIMARY KEY,
recupient INT,
message TEXT,
send_date DATETIME
);

CREATE TABLE clients (
client_id INT PRIMARY KEY,
username VARCHAR(20),
email VARCHAR(40),
last_contacted DATE
);

CREATE TABLE inventory (
item_id INT PRIMARY KEY,
item_name VARCHAR(100),
quantity INT
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
client_id INT,
order_date DATE,
status VARCHAR(50),
FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE user (
user_id INT PRIMARY KEY,
login VARCHAR(20),
password VARCHAR(32),
role INT
);

ALTER TABLE alert
ADD FOREIGN KEY (recupient) REFERENCES clients(client_id);