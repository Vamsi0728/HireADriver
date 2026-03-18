CREATE TABLE `bookings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_email` VARCHAR(100) NOT NULL,
  `vehicle_type` VARCHAR(50) NOT NULL,
  `pickup` VARCHAR(100) NOT NULL,
  `drop_location` VARCHAR(100) NOT NULL,
  `booking_date` DATE NOT NULL,
  `booking_time` TIME NOT NULL,
  `amount` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO bookings 
(customer_email, vehicle_type, pickup, drop_location, booking_date, booking_time, amount) 
VALUES
('vamsi@gmail.com', 'Sedan', 'Hyderabad', 'Vijayawada', '2026-03-20', '10:30:00', 2500.00),
('vamsi@gmail.com', 'SUV', 'Vijayawada', 'Guntur', '2026-03-21', '12:00:00', 1200.00),
('vamsi@gmail.com', 'Mini', 'Guntur', 'Tenali', '2026-03-22', '09:15:00', 600.00),
('vamsi@gmail.com', 'Sedan', 'Visakhapatnam', 'Rajahmundry', '2026-03-23', '14:45:00', 1800.00),
('vamsi@gmail.com', 'SUV', 'Tirupati', 'Chittoor', '2026-03-24', '08:30:00', 900.00),
('vamsi@gmail.com', 'Mini', 'Kakinada', 'Amalapuram', '2026-03-25', '11:00:00', 500.00),
('vamsi@gmail.com', 'Sedan', 'Nellore', 'Ongole', '2026-03-26', '16:20:00', 1300.00),
('vamsi@gmail.com', 'SUV', 'Anantapur', 'Kadapa', '2026-03-27', '07:45:00', 1500.00),
('vamsi@gmail.com', 'Mini', 'Eluru', 'Bhimavaram', '2026-03-28', '13:10:00', 700.00),
('ravi@gmail.com', 'Sedan', 'Warangal', 'Karimnagar', '2026-03-29', '15:30:00', 1100.00);

SELECT * FROM bookings;