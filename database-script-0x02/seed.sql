-- ====================
-- Insert Users
-- ====================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('d1a1e100-0001-4000-b000-000000000001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest'),
  ('d1a1e100-0002-4000-b000-000000000002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0723456789', 'guest'),
  ('d1a1e100-0003-4000-b000-000000000003', 'Hosty', 'Homes', 'host@example.com', 'hashed_pw_3', '0734567890', 'host');

-- ====================
-- Insert Properties
-- ====================
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('a1b2c3d4-0001-4000-b000-000000000011', 'd1a1e100-0003-4000-b000-000000000003', 'Sunny Apartment', 'A cozy 2-bedroom apartment in Nairobi.', 'Nairobi, Kenya', 4500.00),
  ('a1b2c3d4-0002-4000-b000-000000000012', 'd1a1e100-0003-4000-b000-000000000003', 'Mountain View Cabin', 'Quiet cabin with a stunning mountain view.', 'Naivasha, Kenya', 6500.00);

-- ====================
-- Insert Bookings
-- ====================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1b2c3d4-1001-4000-b000-000000000021', 'a1b2c3d4-0001-4000-b000-000000000011', 'd1a1e100-0001-4000-b000-000000000001', '2025-06-10', '2025-06-13', 13500.00, 'confirmed'),
  ('b1b2c3d4-1002-4000-b000-000000000022', 'a1b2c3d4-0002-4000-b000-000000000012', 'd1a1e100-0002-4000-b000-000000000002', '2025-06-20', '2025-06-23', 19500.00, 'confirmed');

-- ====================
-- Insert Payments
-- ====================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('p1a1b1c1-2001-4000-b000-000000000031', 'b1b2c3d4-1001-4000-b000-000000000021', 13500.00, 'paypal'),
  ('p1a1b1c1-2002-4000-b000-000000000032', 'b1b2c3d4-1002-4000-b000-000000000022', 19500.00, 'credit_card');

-- ====================
-- Insert Reviews
-- ====================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1a1b1c1-3001-4000-b000-000000000041', 'a1b2c3d4-0001-4000-b000-000000000011', 'd1a1e100-0001-4000-b000-000000000001', 5, 'Wonderful place! Very clean and comfortable.'),
  ('r1a1b1c1-3002-4000-b000-000000000042', 'a1b2c3d4-0002-4000-b000-000000000012', 'd1a1e100-0002-4000-b000-000000000002', 4, 'Great view, but a bit cold at night.');

-- ====================
-- Insert Message
-- ====================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1a1b1c1-4001-4000-b000-000000000051', 'd1a1e100-0001-4000-b000-000000000001', 'd1a1e100-0003-4000-b000-000000000003', 'Hi, I had a question about check-in time.');
