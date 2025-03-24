CREATE DATABASE concert_tickets;
GO

USE concert_tickets;
GO

CREATE TABLE tickets (
    ticket_id INT IDENTITY(1,1) PRIMARY KEY,
    ticket_code VARCHAR(50) UNIQUE NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    concert_name VARCHAR(255) NOT NULL,
    concert_date DATETIME NOT NULL,
    artist VARCHAR(255) NOT NULL,
    venue VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    seat_number VARCHAR(50) NULL, -- Optional, useful for reserved seating
    purchase_date DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO tickets (ticket_code, ticket_price, concert_name, concert_date, artist, venue, city, seat_number, purchase_date) 
VALUES 
('TKT001', 75.00, 'Rock Fest', '2025-06-15 20:30:00', 'The Rockers', 'Stadium A', 'New York', 'A12', '2025-03-17 03:21:41'),
('TKT002', 50.00, 'Jazz Night', '2025-07-20 19:00:00', 'Smooth Jazz Band', 'Jazz Club', 'Chicago', 'B07', '2025-03-19 17:41:02'),
('TKT003', 65.00, 'Pop Extravaganza', '2025-08-10 21:30:00', 'Pop Diva', 'Arena X', 'Los Angeles', 'C21', '2025-03-18 08:42:24'),
('TKT004', 90.00, 'EDM Festival', '2025-06-25 20:30:00', 'DJ Ultra', 'Beach Club', 'Miami', 'D15', '2025-03-23 11:08:52'),
('TKT005', 40.00, 'Indie Vibes', '2025-09-05 19:00:00', 'Indie Stars', 'Theater B', 'Austin', 'E09', '2025-03-22 04:17:45'),
('TKT006', 55.00, 'Classical Night', '2025-07-15 18:00:00', 'Symphony Orchestra', 'Concert Hall', 'Boston', 'F18', '2025-03-20 22:01:02'),
('TKT007', 70.00, 'Hip-Hop Battle', '2025-08-22 20:30:00', 'Rap Kings', 'Underground Club', 'Atlanta', 'G03', '2025-03-22 03:11:26'),
('TKT008', 85.00, 'Metal Madness', '2025-09-15 21:30:00', 'Heavy Metal Band', 'Stadium B', 'Seattle', 'H12', '2025-03-23 01:28:42'),
('TKT009', 60.00, 'Latin Fiesta', '2025-07-18 19:00:00', 'Salsa Stars', 'Latin Club', 'San Diego', 'I06', '2025-03-18 20:01:36'),
('TKT010', 95.00, 'Country Music Fest', '2025-08-05 21:30:00', 'Country Legends', 'Outdoor Arena', 'Nashville', 'J08', '2025-03-21 06:23:02'),
('TKT011', 45.00, 'Reggae Sunset', '2025-07-28 17:00:00', 'Reggae Masters', 'Beach Venue', 'Honolulu', 'K05', '2025-03-18 00:44:47'),
('TKT012', 80.00, 'Blues Live', '2025-09-12 20:30:00', 'Blues Guitarist', 'Blues Bar', 'New Orleans', 'L11', '2025-03-23 05:52:44'),
('TKT013', 100.00, 'Opera Night', '2025-08-30 19:00:00', 'Opera Stars', 'Opera House', 'San Francisco', 'M02', '2025-03-19 10:36:05'),
('TKT014', 50.00, 'Folk Evening', '2025-06-10 17:00:00', 'Folk Singers', 'Community Center', 'Denver', 'N07', '2025-03-18 17:05:41'),
('TKT015', 77.00, 'Alternative Rock', '2025-08-30 21:00:00', 'Alt Rock Band', 'Rock Bar', 'Portland', 'O14', '2025-03-23 12:50:24'),
('TKT016', 68.00, 'Synthwave Party', '2025-08-20 20:30:00', 'Synth Legends', 'Neon Club', 'Las Vegas', 'P19', '2025-03-21 04:06:56'),
('TKT017', 90.00, 'Punk Rock Night', '2025-09-05 19:00:00', 'Punk Rebels', 'Garage Venue', 'Detroit', 'Q12', '2025-03-23 19:44:47'),
('TKT018', 82.00, 'Soul Music Live', '2025-09-08 21:00:00', 'Soul Queens', 'Jazz Club', 'Memphis', 'R06', '2025-03-22 09:15:48'),
('TKT019', 58.00, 'Lo-Fi Chill', '2025-06-29 17:00:00', 'Lo-Fi Beats', 'Rooftop Venue', 'Los Angeles', 'S10', '2025-03-22 06:41:15'),
('TKT020', 93.00, 'Funk Groove', '2025-08-02 20:30:00', 'Funk Masters', 'Funk Club', 'Chicago', 'T05', '2025-03-23 17:25:50'),
('TKT021', 79.00, 'Trap Music Party', '2025-07-07 18:00:00', 'Trap King', 'Warehouse', 'Houston', 'U04', '2025-03-17 02:16:17'),
('TKT022', 67.00, 'K-Pop Extravaganza', '2025-08-14 21:30:00', 'K-Pop Idols', 'Arena Y', 'San Francisco', 'V07', '2025-03-19 22:45:08'),
('TKT023', 54.00, 'Bollywood Beats', '2025-06-18 17:00:00', 'Bollywood Stars', 'Bollywood Club', 'New Jersey', 'W08', '2025-03-17 08:28:19'),
('TKT024', 72.00, 'Celtic Folk Night', '2025-07-25 19:00:00', 'Celtic Voices', 'Pub Celtic', 'Dublin', 'X09', '2025-03-20 12:30:15'),
('TKT025', 88.00, 'Techno Rave', '2025-09-10 21:30:00', 'Techno Masters', 'Underground Warehouse', 'Berlin', 'Y11', '2025-03-22 22:10:50'),
('TKT026', 60.00, 'Grunge Revival', '2025-06-14 20:30:00', 'Seattle Sound', 'Old Theater', 'Seattle', 'Z05', '2025-03-18 14:50:30'),
('TKT027', 95.00, 'Afrobeats Vibes', '2025-08-08 18:30:00', 'Afro Fusion', 'Beach Stage', 'Lagos', 'AA12', '2025-03-21 18:45:00'),
('TKT028', 50.00, 'Chill Acoustic', '2025-07-19 19:00:00', 'Acoustic Duo', 'Cozy Cafe', 'Toronto', 'BB07', '2025-03-19 16:20:35'),
('TKT029', 78.00, 'Hard Rock Night', '2025-08-31 21:30:00', 'Rock Warriors', 'Metal Club', 'London', 'CC15', '2025-03-23 09:15:25'),
('TKT030', 85.00, 'Piano Classics', '2025-09-20 20:30:00', 'Grand Pianist', 'Opera House', 'Vienna', 'DD03', '2025-03-22 20:05:55');


CREATE PROCEDURE AllConcertTickets
AS
BEGIN
    SELECT 
        ticket_id, ticket_code, ticket_price, concert_name, concert_date, 
        artist, venue, city, seat_number, purchase_date 
    FROM tickets;
END;


EXEC AllConcertTickets;



CREATE PROCEDURE TicketSalesSummary
AS
BEGIN
    SELECT 
	   '17/03/2025 - 23/03/2025' AS Period,
        COUNT(ticket_id) AS TotalSales,
		SUM(ticket_price) AS TotalRevenue
    FROM tickets 
    WHERE purchase_date BETWEEN '2025-03-17 00:00:00' AND '2025-03-23 23:59:59';
END;



EXEC TicketSalesSummary;

