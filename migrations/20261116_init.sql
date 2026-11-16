
-- MG001: Blocking index creation

CREATE INDEX idx_users_email ON users (email);

-- MG004: NOT NULL column without DEFAULT

ALTER TABLE users ADD COLUMN phone_number VARCHAR(20) NOT NULL;

-- MG005: Foreign key without NOT VALID

ALTER TABLE orders ADD CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES users (id);

-- MG002: Destructive drop column

ALTER TABLE users DROP COLUMN legacy_token;
