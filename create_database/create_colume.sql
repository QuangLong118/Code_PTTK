
-- Thêm dữ liệu vào bảng Thanhvien118
INSERT INTO 35B21DCAT118.Thanhvien118 (username, password, name, ngaysinh, email, SDT, diachi, vaitro) VALUES
('admin1', 'password1', 'Nguyen Van A', '1990-01-01', 'user1@example.com', 1234567891, '123 Street A', 0),
('admin2', 'password2', 'Tran Thi B', '1991-02-02', 'user2@example.com', 1234567892, '124 Street B', 0),
('seller1', 'password3', 'Le Van C', '1992-03-03', 'user3@example.com', 1234567893, '125 Street C', 1),
('seller2', 'password4', 'Phan Thi D', '1993-04-04', 'user4@example.com', 1234567894, '126 Street D', 1),
('seller3', 'password5', 'Hoang Van E', '1994-05-05', 'user5@example.com', 1234567895, '127 Street E', 1),
('seller4', 'password6', 'Nguyen Thi F', '1995-06-06', 'user6@example.com', 1234567896, '128 Street F', 1),
('seller5', 'password7', 'Tran Van G', '1996-07-07', 'user7@example.com', 1234567897, '129 Street G', 1),
('user8', 'password8', 'Le Thi H', '1997-08-08', 'user8@example.com', 1234567898, '130 Street H', 2),
('user9', 'password9', 'Phan Van I', '1998-09-09', 'user9@example.com', 1234567899, '131 Street I', 2),
('user10', 'password10', 'Hoang Thi J', '1999-10-10', 'user10@example.com', 1234567800, '132 Street J', 2),
('user11', 'password11', 'Nguyen Van K', '1985-11-11', 'user11@example.com', 1234567801, '133 Street K', 2),
('user12', 'password12', 'Tran Thi L', '1986-12-12', 'user12@example.com', 1234567802, '134 Street L', 2),
('user13', 'password13', 'Le Van M', '1987-01-01', 'user13@example.com', 1234567803, '135 Street M', 2),
('user14', 'password14', 'Phan Thi N', '1988-02-02', 'user14@example.com', 1234567804, '136 Street N', 2),
('user15', 'password15', 'Hoang Van O', '1989-03-03', 'user15@example.com', 1234567805, '137 Street O', 2),
('user16', 'password16', 'Nguyen Thi P', '1990-04-04', 'user16@example.com', 1234567806, '138 Street P', 2),
('user17', 'password17', 'Tran Van Q', '1991-05-05', 'user17@example.com', 1234567807, '139 Street Q', 2),
('user18', 'password18', 'Le Thi R', '1992-06-06', 'user18@example.com', 1234567808, '140 Street R',2),
('user19', 'password19', 'Phan Van S', '1993-07-07', 'user19@example.com', 1234567809, '141 Street S', 2),
('user20', 'password20', 'Hoang Thi T', '1994-08-08', 'user20@example.com', 1234567810, '142 Street T', 2);

-- Thêm dữ liệu vào bảng Khachhang118
INSERT INTO 35B21DCAT118.Khachhang118 (id) VALUES
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- Thêm dữ liệu vào bảng Nhanvien_Banhang118
INSERT INTO 35B21DCAT118.Nhanvien_Banhang118 (id) VALUES
(3),
(4),
(5),
(6),
(7);

-- Thêm dữ liệu vào bảng Nhanvien_Banhang118
INSERT INTO 35B21DCAT118.Nhanvien_Quanly118 (id) VALUES
(1),
(2);

-- Thêm dữ liệu cho bảng Hoadon118
INSERT INTO 35B21DCAT118.Hoadon118 (thoigiantao, Khachhang118id, Nhanvien_Banhang118id, trangthai) VALUES
('2023-10-01 08:00:00', 8, 3, 3),
('2023-10-05 09:30:00', 9, 4, 3),
('2023-10-10 11:00:00', 10, 5, 3),
('2023-10-15 14:00:00', 11, 6, 3),
('2023-10-20 17:00:00', 12, 7, 3),
('2023-10-25 10:00:00', 13, 3, 3),
('2023-11-01 12:30:00', 14, 4, 3),
('2023-11-05 15:00:00', 15, 5, 3),
('2023-11-10 18:00:00', 16, 6, 3),
('2023-11-15 08:00:00', 17, 7, 3),
('2023-11-20 10:00:00', 18, 3, 3),
('2023-11-25 13:00:00', 19, 4, 3),
('2023-12-01 16:00:00', 20, 5, 3),
('2023-12-05 19:00:00', 8, 6, 3),
('2023-12-10 09:00:00', 9, 7, 3),
('2023-12-15 12:00:00', 10, 3, 3),
('2023-12-20 15:00:00', 11, 4, 3),
('2023-12-25 08:00:00', 12, 5, 3),
('2023-12-30 10:30:00', 13, 6, 3),
('2024-01-05 13:00:00', 14, 7, 3),
('2024-01-10 16:00:00', 15, 3, 3),
('2024-01-15 09:00:00', 16, 4, 3),
('2024-01-20 12:00:00', 17, 5, 3),
('2024-01-25 14:30:00', 18, 6, 3),
('2024-01-30 17:00:00', 19, 7, 3),
('2024-02-05 08:00:00', 20, 3, 3),
('2024-02-10 10:00:00', 8, 4, 3),
('2024-02-15 12:00:00', 9, 5, 3),
('2024-02-20 10:00:00', 10, 6, 3),
('2024-02-25 15:00:00', 11, 7, 3),
('2024-03-01 08:00:00', 12, 3, 3),
('2024-03-05 09:30:00', 13, 4, 3),
('2024-03-10 09:00:00', 8, 3, 3),
('2024-03-12 10:30:00', 9, 4, 3),
('2024-03-15 14:00:00', 10, 5, 3),
('2024-03-18 16:15:00', 11, 6, 3),
('2024-03-20 11:45:00', 12, 7, 3),
('2024-03-23 13:00:00', 13, 3, 3),
('2024-03-25 08:30:00', 14, 4, 3),
('2024-03-28 09:15:00', 15, 5, 3),
('2024-04-01 17:00:00', 16, 6, 3),
('2024-04-05 18:30:00', 17, 7, 3),
('2024-04-10 10:00:00', 18, 3, 3),
('2024-04-12 12:30:00', 19, 4, 3),
('2024-04-15 13:45:00', 20, 5, 3),
('2024-04-20 15:00:00', 8, 6, 3),
('2024-04-22 09:00:00', 9, 7, 3),
('2024-04-25 14:30:00', 10, 3, 3),
('2024-04-28 16:00:00', 11, 4, 3),
('2024-05-01 11:15:00', 12, 5, 3),
('2024-05-05 08:00:00', 13, 6, 3),
('2024-05-10 17:45:00', 14, 7, 3),
('2024-05-15 09:30:00', 15, 3, 3);

-- Thêm dữ liệu vào bảng Giaodich118
INSERT INTO 35B21DCAT118.Giaodich118 (thoigianhoanthanh, id) VALUES
('2023-10-04 08:00:00', 1),
('2023-10-08 09:30:00', 2),
('2023-10-13 11:00:00', 3),
('2023-10-18 14:00:00', 4),
('2023-10-23 17:00:00', 5),
('2023-10-28 10:00:00', 6),
('2023-11-04 12:30:00', 7),
('2023-11-08 15:00:00', 8),
('2023-11-13 18:00:00', 9),
('2023-11-18 08:00:00', 10),
('2023-11-23 10:00:00', 11),
('2023-11-28 13:00:00', 12),
('2023-12-03 16:00:00', 13),
('2023-12-08 19:00:00', 14),
('2023-12-13 09:00:00', 15),
('2023-12-18 12:00:00', 16),
('2023-12-23 15:00:00', 17),
('2023-12-28 08:00:00', 18),
('2024-01-02 10:30:00', 19),
('2024-01-07 13:00:00', 20),
('2024-01-17 16:00:00', 21),
('2024-01-18 09:00:00', 22),
('2024-01-24 12:00:00', 23),
('2024-01-26 14:30:00', 24),
('2024-01-31 17:00:00', 25),
('2024-02-06 08:00:00', 26),
('2024-02-17 10:00:00', 27),
('2024-02-19 12:00:00', 28),
('2024-02-25 10:00:00', 29),
('2024-02-29 15:00:00', 30),
('2024-03-05 08:00:00', 31),
('2024-03-09 09:30:00', 32),
('2024-03-13 09:00:00', 33),
('2024-03-15 10:30:00', 34),
('2024-03-18 14:00:00', 35),
('2024-03-20 16:15:00', 36),
('2024-03-24 11:45:00', 37),
('2024-03-25 13:00:00', 38),
('2024-03-28 08:30:00', 39),
('2024-03-30 09:15:00', 40),
('2024-04-04 17:00:00', 41),
('2024-04-08 18:30:00', 42),
('2024-04-13 10:00:00', 43),
('2024-04-15 12:30:00', 44),
('2024-04-18 13:45:00', 45),
('2024-04-23 15:00:00', 46),
('2024-04-25 09:00:00', 47),
('2024-04-27 14:30:00', 48),
('2024-04-30 16:00:00', 49),
('2024-05-04 11:15:00', 50),
('2024-05-08 08:00:00', 51),
('2024-05-13 17:45:00', 52),
('2024-05-18 09:30:00', 53);


-- Thêm dữ liêu cho bảng Hanghoa118
INSERT INTO 35B21DCAT118.Hanghoa118 (name, dongia, soluongtrongkho, mota) VALUES
('Oreo Cookies', 10, 50, 'Sweet cookies with cream filling'),
('Haribo Gummies', 15, 30, 'Fruity gummy candies in various flavors'),
('Lays Potato Chips', 12, 70, 'Crispy potato chips, various flavors'),
('Coca-Cola Soft Drink', 8, 100, 'Carbonated soft drink, cola flavor'),
('Vinamilk Fresh Milk', 15, 200, 'Fresh milk from cows'),
('TocoToco Milk Tea', 30, 20, 'Milk tea with jelly and tapioca pearls'),
('Hao Hao Instant Noodles', 5, 150, 'Instant noodles with shrimp flavor'),
('Banh Mi Thit', 20, 40, 'Bread with meat and fresh vegetables'),
('Cornetto Ice Cream', 20, 25, 'Ice cream cone with crunchy shell and creamy filling'),
('Organic Fruit Juice', 25, 60, 'Juice made from fresh organic fruits'),
('KFC Fried Chicken', 35, 10, 'Crispy fried chicken, tender inside'),
('G7 Instant Coffee', 18, 80, 'Convenient instant coffee, rich flavor'),
('Paris Baguette Pastry', 22, 15, 'Various delicious pastries'),
('Eagle Condensed Milk', 12, 90, 'Sweetened condensed milk for various recipes'),
('Maggi Seasoning', 5, 120, 'Seasoning to enhance flavor in dishes');

-- Thêm dữ liệu cho bảng Hangxuat118
INSERT INTO 35B21DCAT118.Hangxuat118 (id) VALUES
(1),  -- Oreo Cookies
(2),  -- Haribo Gummies
(3),  -- Lays Potato Chips
(4),  -- Coca-Cola Soft Drink
(5),  -- Vinamilk Fresh Milk
(6),  -- TocoToco Milk Tea
(7),  -- Hao Hao Instant Noodles
(8),  -- Banh Mi Thit
(9),  -- Cornetto Ice Cream
(10), -- Organic Fruit Juice
(11), 
(12),  
(13), 
(14),  
(15);  

-- Thêm dữ liệu cho bảng Hoadon_Hangxuat118
INSERT INTO 35B21DCAT118.Hoadon_Hangxuat118 (soluong, Hoadon118id, Hangxuat118id) VALUES
(8, 1, 5),
(4, 1, 13),
(9, 1, 15),
(10, 1, 8),
(1, 1, 11),
(9, 2, 12),
(7, 2, 14),
(8, 2, 13),
(7, 2, 3),
(6, 2, 4),
(10, 2, 8),
(2, 2, 1),
(9, 2, 10),
(7, 2, 9),
(3, 3, 10),
(3, 3, 5),
(6, 3, 12),
(1, 3, 11),
(3, 3, 8),
(4, 4, 14),
(1, 4, 10),
(8, 4, 12),
(10, 5, 13),
(5, 6, 15),
(10, 6, 11),
(1, 6, 6),
(7, 6, 10),
(5, 6, 2),
(6, 6, 8),
(4, 6, 1),
(7, 6, 12),
(2, 6, 5),
(6, 7, 8),
(8, 7, 14),
(6, 7, 13),
(6, 7, 3),
(3, 7, 5),
(3, 7, 2),
(4, 7, 4),
(3, 7, 12),
(1, 7, 9),
(7, 8, 10),
(1, 8, 13),
(7, 8, 14),
(3, 8, 4),
(9, 8, 9),
(8, 8, 15),
(1, 9, 3),
(7, 9, 14),
(5, 9, 8),
(4, 9, 11),
(4, 9, 7),
(5, 9, 5),
(4, 9, 6),
(8, 9, 9),
(1, 10, 4),
(10, 10, 14),
(9, 10, 5),
(7, 10, 11),
(9, 10, 9),
(5, 10, 10),
(10, 11, 1),
(6, 12, 8),
(8, 12, 9),
(1, 12, 3),
(5, 12, 10),
(5, 12, 6),
(1, 12, 4),
(7, 12, 7),
(4, 12, 13),
(1, 12, 3),
(9, 12, 14),
(8, 13, 7),
(9, 13, 14),
(5, 13, 8),
(7, 14, 9),
(4, 14, 7),
(5, 14, 4),
(6, 15, 13),
(1, 15, 4),
(2, 15, 1),
(6, 15, 5),
(5, 15, 3),
(3, 15, 2),
(5, 16, 9),
(6, 16, 12),
(3, 16, 15),
(4, 16, 5),
(8, 16, 10),
(5, 16, 1),
(1, 16, 11),
(1, 16, 13),
(2, 16, 6),
(8, 17, 13),
(8, 17, 2),
(8, 17, 12),
(4, 17, 15),
(8, 17, 10),
(6, 17, 14),
(2, 17, 11),
(8, 17, 3),
(9, 18, 13),
(6, 18, 10),
(3, 18, 8),
(8, 18, 11),
(8, 18, 3),
(8, 18, 15),
(10, 18, 14),
(2, 18, 6),
(4, 19, 13),
(6, 19, 5),
(4, 19, 2),
(5, 19, 6),
(8, 19, 7),
(7, 19, 1),
(5, 19, 4),
(4, 19, 11),
(10, 19, 12),
(6, 19, 8),
(1, 20, 10),
(5, 20, 8),
(10, 20, 13),
(1, 20, 1),
(5, 21, 13),
(7, 21, 12),
(9, 21, 7),
(4, 21, 4),
(1, 21, 3),
(5, 22, 7),
(5, 22, 10),
(7, 23, 8),
(3, 23, 13),
(2, 24, 6),
(10, 25, 6),
(1, 25, 9),
(4, 25, 10),
(3, 25, 12),
(4, 25, 3),
(3, 25, 2),
(7, 25, 14),
(8, 25, 1),
(4, 25, 11),
(2, 26, 8),
(5, 26, 12),
(1, 26, 2),
(10, 26, 6),
(3, 26, 9),
(8, 27, 11),
(7, 27, 10),
(10, 27, 15),
(7, 27, 6),
(5, 27, 2),
(8, 27, 7),
(8, 27, 1),
(8, 27, 8),
(9, 27, 3),
(9, 28, 13),
(8, 28, 5),
(3, 29, 11),
(4, 29, 5),
(8, 29, 15),
(3, 29, 4),
(5, 29, 13),
(7, 29, 8),
(5, 30, 5),
(4, 30, 7),
(4, 30, 2),
(1, 30, 10),
(2, 30, 6),
(3, 30, 11),
(3, 31, 3),
(8, 31, 9),
(8, 31, 8),
(3, 31, 7),
(10, 31, 15),
(4, 31, 11),
(4, 31, 12),
(3, 32, 11),
(1, 32, 14),
(10, 32, 4),
(2, 32, 15),
(1, 32, 12),
(6, 33, 6),
(1, 33, 1),
(3, 33, 7),
(1, 33, 8),
(3, 33, 14),
(5, 33, 2),
(4, 33, 4),
(4, 33, 9),
(2, 34, 8),
(10, 34, 15),
(3, 34, 13),
(10, 34, 3),
(6, 34, 11),
(5, 34, 1),
(7, 34, 2),
(5, 34, 6),
(2, 34, 7),
(1, 34, 5),
(6, 35, 11),
(10, 35, 2),
(9, 35, 1),
(1, 35, 13),
(2, 36, 1),
(5, 36, 12),
(5, 36, 5),
(5, 36, 13),
(4, 36, 11),
(7, 36, 14),
(3, 36, 8),
(8, 37, 10),
(4, 37, 15),
(2, 37, 14),
(3, 37, 12),
(9, 38, 7),
(7, 38, 9),
(10, 38, 13),
(3, 38, 1),
(1, 39, 6),
(4, 39, 12),
(10, 39, 9),
(3, 39, 7),
(4, 39, 8),
(7, 39, 10),
(3, 40, 11),
(4, 40, 9),
(2, 40, 3),
(9, 40, 1),
(1, 40, 12),
(8, 40, 2),
(10, 40, 13),
(9, 40, 14),
(5, 40, 15),
(2, 40, 10),
(6, 41, 8),
(8, 41, 10),
(8, 42, 9),
(5, 42, 7),
(2, 42, 11),
(7, 42, 5),
(8, 42, 14),
(1, 42, 15),
(2, 42, 5),
(5, 43, 7),
(5, 43, 2),
(9, 43, 10),
(6, 43, 12),
(9, 43, 13),
(7, 44, 13),
(5, 44, 2),
(10, 44, 14),
(1, 44, 15),
(5, 45, 11),
(1, 45, 4),
(4, 45, 10),
(5, 45, 15),
(1, 46, 3),
(5, 47, 6),
(9, 47, 15),
(9, 47, 8),
(4, 47, 2),
(10, 47, 13),
(3, 47, 14),
(6, 47, 4),
(8, 47, 3),
(2, 48, 7),
(2, 48, 13),
(2, 48, 14),
(2, 48, 3),
(1, 48, 8),
(2, 48, 2),
(10, 48, 12),
(9, 48, 15),
(3, 48, 10),
(6, 48, 6),
(2, 49, 15),
(3, 49, 10),
(5, 49, 11),
(6, 49, 12),
(10, 49, 14),
(8, 49, 13),
(2, 49, 8),
(10, 50, 11),
(4, 51, 5),
(3, 51, 15),
(3, 51, 12),
(2, 51, 3),
(9, 51, 6),
(4, 51, 10),
(3, 51, 13),
(5, 51, 11),
(4, 51, 7),
(6, 52, 13),
(2, 52, 10),
(3, 52, 1),
(9, 52, 8),
(8, 52, 12),
(10, 52, 7),
(2, 52, 3),
(1, 52, 14),
(8, 52, 4),
(6, 53, 1),
(6, 53, 12),
(3, 53, 3);



