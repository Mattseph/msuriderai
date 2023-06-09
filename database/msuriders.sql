CREATE DATABASE IF NOT EXISTS msuriders;
USE msuriders;

CREATE TABLE IF NOT EXISTS rider (
	rider_id int NOT NULL AUTO_INCREMENT,
    last_name varchar(255) NOT NULL,
    first_name varchar(255) NOT NULL,
    mid_name varchar(255) DEFAULT NULL,
    suffix varchar(255) DEFAULT NULL,
    address varchar(255) DEFAULT NULL,
    PRIMARY KEY(rider_id)
);

INSERT INTO rider 
(rider_id, last_name, first_name, mid_name, suffix, address) 
VALUES 
(1, 'Abellanosa', 'Lauriano', 'Perez', '', ''),
(2, 'Abergonzado', 'Rogello', 'Lawa', '', 'Zone 2, Block 10, Fatima'),
(3, 'Kamsa', 'Alharry', '', '', ''),
(4, 'Adlaon', 'Antonio', '', '', ''),
(5, 'Aimab', 'Niama', '', '', ''),
(6, 'Akmad', 'Usman', '', '', ''),
(7, 'Socas', 'Meviton', '', 'Jr.', 'Zone 9-B, Block 7, Fatima'),
(8, 'Vista', 'Jay Ryan', '', '', ''),
(9, 'Almacin', 'Christopher', '', '', 'Fatima'),
(10, 'Almacin', 'Jay Ford', '', '', 'Fatima'),
(11, 'Almacin', 'Joel', '', '', ''),
(12, 'Almacin', 'Retritchie', '', '', ''),
(13, 'Alvaro', 'Ryan', '', '', ''),
(14, 'Amado', 'Robert', '', '', ''),
(15, 'Amigo', 'Albert', '', '', ''),
(16, 'Amigo', 'Arnel', '', '', ''),
(17, 'Anas', 'Daniel', '', '', ''),
(18, 'Andal', 'Ibrahim', '', '', 'Fatima'),
(19, 'Antonio', 'Arsenio', '', '', 'Zone 2, Block 0, Fatima'),
(20, 'Arevaldo', 'Fernando', '', '', ''),
(21, 'Silguera', 'Paolo', '', '', ''),
(22, 'Astacaan', 'Genes', '', '', ''),
(23, 'Awal', 'Jimmy', '', '', ''),
(24, 'Ayutod', 'Francisco', '', '', ''),
(25, 'Al Amed', 'Mustapha', '', '', ''),
(26, 'Bahali', 'Nasser', '', '', ''),
(27, 'Balawan', 'Jojo', '', '', ''),
(28, 'Singgon', 'Abdulgani', '', '', ''),
(29, 'Bandaila', 'Roger', '', '', ''),
(30, 'Decenerio', 'Ernie', '', '', 'Zone 3, Block 7, Fatima'),
(31, 'Barbon', 'Abelrado', '', 'Jr.', ''),
(32, 'Bartolaba', 'Reynaldo', '', '', ''),
(33, 'Marcos', 'Jobeerose', '', '', ''),
(34, 'Belarmino', 'Gerald', '', '', ''),
(35, 'Yisita', 'Joel', '', '', ''),
(36, 'Rafaela', 'Mark James', '', '', ''),
(37, 'Betio', 'Rico Gie', '', '', ''),
(38, 'Bistillos', 'Jenny', '', '', ''),
(39, 'Bitoy', 'Jimmy', '', '', ''),
(40, 'Bonjoc', 'Gerardo', '', '', ''),
(41, 'Casipe', 'Japheth', '', '', ''),
(42, 'Buscas', 'Roseller', '', '', ''),
(43, 'Bustillos', 'Joey', '', '', ''),
(44, 'Cabancala', 'Emasan', '', '', ''),
(45, 'Cabanilla', 'Jimuel', '', '', ''),
(46, 'Cabilinga', 'Pedro', '', '', 'Zone 10-A, Fatima'),
(47, 'Cahatol', 'Arnel', '', '', ''),
(48, 'Caliza', 'Cocoy Engelberto', '', '', ''),
(49, 'Calub', 'Dante', '', '', ''),
(50, 'Cañares', 'Fulgencio', '', '', ''),
(51, 'Canubas', 'Junfort', '', '', 'Fatima'),
(52, 'Capitan', 'Lorie Jun', '', '', ''),
(53, 'Carin', 'Fernando', '', '', ''),
(54, 'Castañeda', 'Noel', '', '', ''),
(55, 'Chataol', 'Dionisio', '', '', ''),
(56, '', 'Chito', '', '', ''),
(57, '', 'Cocoy', '', '', 'Fatima'),
(58, 'Caliza', 'Cocoy Hilario', '', '', ''),
(59, 'Cuaresma', 'Joel', '', '', ''),
(60, 'Cuaresma', 'Nathan', '', '', ''),
(61, 'Callo', 'Norlie', '', '', ''),
(62, 'De Castro', 'Rene', '', '', ''),
(63, 'Sonsona', 'Cyril', '', '', ''),
(64, 'Deaico', 'Juvie', '', '', ''),
(65, 'Decenerio', 'Erson', '', '', 'Fatima'),
(66, 'Decenerio', 'Ernesto', 'Cornelio', 'Jr.', 'Zone 3, Block 4, Fatima'),
(67, 'Dela Peña', 'Joselito', '', '', 'Zone 8, Block 10, Fatima'),
(68, 'Diamalen', 'Yasser', '', '', ''),
(69, 'Diaz', 'Pablito', '', '', ''),
(70, 'Dionard', 'Razonable', '', '', 'Zone 2, BLock 0, Fatima'),
(71, 'Domingo', 'Renz', '', '', ''),
(72, 'Eco', 'Rolan', '', '', ''),
(73, 'Emelda', 'Allan', '', '', ''),
(74, 'Grana', 'Jover', '', '', ''),
(75, 'Manoy', 'Sammy', '', '', ''),
(76, 'Escovilla', 'Marcelino', '', '', ''),
(77, 'Estorque', 'Allan', '', '', ''),
(78, 'Etang', 'Ricky', '', '', 'Zone 3 Block 0, Fatima'),
(79, 'Calub', 'Julio', '', '', 'Zone 1, Block 1, Fatima'),
(80, 'Dagmil', 'Johnreil', '', '', ''),
(81, 'Notellano', 'Dizon', '', '', ''),
(82, 'Flores', 'Justin', '', '', ''),
(83, 'Gadrian', 'Jeffrey', '', '', ''),
(84, 'Gahira', 'Marcos', '', '', 'Zone 12-A, Block 24, Fatima'),
(85, 'Galo', 'Fernando', '', '', ''),
(86, 'Galon', 'Panfillo', 'Llimet', '', 'Zone 1, Fatima'),
(87, 'Galue', 'Joefrey', '', '', ''),
(88, 'Genove', 'Manuel Puton', '', '', ''),
(89, 'Logronio', 'Benjamin', '', '', ''),
(90, 'Grande', 'Arvin', '', '', ''),
(91, 'Guabalani', 'Benjamin', '', '', ''),
(92, 'Herrera', 'Mamerto', '', '', ''),
(93, 'Ibrahim', 'Alimudin', '', '', 'MSU Acacia St.'),
(94, 'Impas', 'Melchor', '', '', 'Fatima'),
(95, 'Indab', 'Peje', '', '', ''),
(96, 'Fermasis', 'Robert', '', '', ''),
(97, 'Ishak', 'Ebrahim', '', '', 'Fatima'),
(98, 'Sanico', 'Nimrod', '', '', 'DBP Homes'),
(99, 'Jeminez', 'Alejandro', '', '', 'Zone 1, Block 10, Fatima'),
(100, 'Carlon', 'Boncaros', '', 'Jr.', 'Zone 3, Block 1, Fatima'),
(101, 'Sagarino', 'Joseph', '', '', 'Zone 4, Block 0, Fatima'),
(102, 'Bonifacio', 'Fernando', 'Omandam', 'Jr', 'Block 3, Apopong'),
(103, 'Anab', 'Nasrullah Lampak', '', '', 'Fatima'),
(104, 'Keith', 'Luayao', '', '', ''),
(105, 'Kimbol', 'Saiden', '', '', ''),
(106, 'Kimbol', 'Zukarimo', '', '', ''),
(107, 'Lambert', 'Francis', '', '', ''),
(108, 'Lanuza', 'Jaime', '', '', 'Fatima'),
(109, 'Mariquit', 'Justine', '', '', ''),
(110, 'Laurencio', 'Jerald', '', '', 'Zone 4, Block 3, Fatima'),
(111, 'Layague', 'Socrates', '', '', 'Zone 3, Block 0, Fatima'),
(112, 'Caban', 'Frenz Karl', '', '', ''),
(113, 'Mangila', 'Marlito', '', '', ''),
(114, 'Limabao', 'Jalonodin', '', '', ''),
(115, 'Solomon', 'Elmeda', 'Rivera', '', ''),
(116, 'Gilos', 'Junnel', '', '', 'Zone 3, Block 1, Fatima'),
(117, 'Montellano', 'Jestioni', '', '', 'Zone 4, Block 0, Fatima'),
(118, 'Enriquez', 'Eddie', '', 'Jr.', ''),
(119, 'Al Fahad Malumnang', 'Caldy Salamat', '', '', ''),
(120, 'Maceda', 'Gerald', '', '', ''),
(121, 'Magiguerid', 'Ishmael', '', '', ''),
(122, 'Dominggo', 'Robert', '', '', 'Zone 9, Block 0, Fatima'),
(123, 'Magsoling', 'Arnold', '', '', 'Fatima'),
(124, 'Magumnang', 'Abulhair', '', '', 'Fatima'),
(125, 'Makiputin', 'Eugene', '', '', 'Zone 2, Block 0, Fatima'),
(126, 'Manoy', 'Jose Sammy', '', '', 'New Iloilo, Tangtangan, South Cotabato'),
(127, 'Laurente', 'Macron', 'Maming', '', 'Zone 12-A, Block 14, Fatima'),
(128, 'Marapao', 'Ferddie', '', '', 'Fatima'),
(129, 'Mariquit', 'Jun Jun', '', '', ''),
(130, 'Cabahub', 'Fidel', '', '', ''),
(131, 'Estoroce', 'Jay', '', '', 'Zone 3, Block 7, Fatima'),
(132, 'Maton', 'Saed Ali', 'Mohammad', '', 'Zone 11-A, Block 4, Fatima'),
(133, 'Siggon', 'Zabede', '', '', ''),
(134, 'Mendoza', 'Alvin', '', '', ''),
(135, 'Mendoza', 'Antonio', '', '', ''),
(136, 'Mendoza', 'Archie', '', '', 'Zone 4, Block 0, Fatima'),
(137, 'Baliguat', 'Micheal', '', '', 'Pao-pao Sinawal'),
(138, 'Modin', 'Yasser', 'Samama', '', ''),
(139, 'Modin', 'Faisal', '', '', ''),
(140, 'Montecalvo', 'Dover', 'Orquia', '', 'Bawing Siguel, General Santos City'),
(141, 'Monto', 'Cesar', 'Leoveras', '', 'Zone 1, Block 7, Fatima'),
(142, 'Mortega', 'Arnold', '', '', 'Zone 3, Block 5, Fatima'),
(143, 'Gilos', 'Samuel', 'Ruz', 'Jr.', 'Zone 3, Block 1, Fatima'),
(144, 'Muyco', 'Ernie', '', '', ''),
(145, 'Nacario', 'Bernie', 'Cameluna', '', ''),
(146, 'Luzon', 'Allan', '', '', ''),
(147, 'Aligato', 'Avilino', 'Torres', '', 'Zone 4, Fatima'),
(148, 'Herrera', 'Mamerto', '', 'Jr.', ''),
(149, 'Navarro', 'Jhonny', '', '', ''),
(150, 'Nescotido', 'Micheal', '', '', ''),
(151, 'Basher', 'Abdullah', '', '', 'Zone 7, Block 8, Fatima'),
(152, 'Nurruddin', 'Darwin', 'Munabbi', '', 'Fatima'),
(153, 'Nurrudin', 'Ibrahim', '', '', 'Zone 11-C, Fatima'),
(154, 'Obregon', 'Jolymar', '', '', 'Fatima'),
(155, 'Modin', 'Amer Sarip', '', '', 'Zone 2, Block 3, Fatima'),
(156, 'Ordialez', 'Roniel', 'Manghila', '', 'Fatima'),
(157, 'Oraca', 'Genesis', '', '', 'Zone 2, Block 3, Fatima'),
(158, 'Orio', 'Terzo', '', '', ''),
(159, 'Paa', 'Daniel', '', '', ''),
(160, 'Paca', 'Regie', '', '', ''),
(161, 'Paclibar', 'Rey', '', '', 'Zone 1, Block 6, Fatima'),
(162, 'Maguan', 'Celso', '', '', 'Malapatan'),
(163, 'Borinaga', 'Nicolas', '', 'Jr.', ''),
(164, 'Paypa', 'Cochie', '', '', ''),
(165, 'Paypa', 'Juanie', '', '', 'Zone 4, Block 4, Fatima'),
(166, 'Marcos', 'Jerio', '', '', 'Fatima'),
(167, 'Plateros', 'Angelito', '', '', '25 Dadiangas Heights'),
(168, 'Bertulfo', 'Arnold', '', '', ''),
(169, 'Pulia', 'Joel', '', '', 'Zone 1, Block 7, Fatima'),
(170, 'Cacula', 'Tommy', '', 'Jr.', 'Zone 4, Block 0, Fatima'),
(171, 'Radgadio', 'Randy', '', '', ''),
(172, 'Reyes', 'Jacinto', '', '', 'Fatima'),
(173, 'Aude', 'Rey John', '', '', ''),
(174, 'Romero', 'Eduardo', '', 'Jr.', ''),
(175, 'Ronilo', 'Adlawan', '', '', ''),
(176, 'Magbanua', 'Ronaldo', '', '', 'Zone 4, Block 4, Fatima'),
(177, 'Flores', 'Rogin Jay', 'Tagalog', '', 'Zone 2, Block 0, Fatima'),
(178, 'Efondo', 'Ruperto', '', '', 'Zone 10, Block 6'),
(179, 'Sabay', 'Louie Caro', '', '', ''),
(180, 'Sajeoin', 'Kadalum', '', '', ''),
(181, 'Salac', 'John Paul', '', '', 'Zone 2, Block 0, Fatima'),
(182, 'Racsadio', 'Lorlito', '', '', ''),
(183, 'Santoyas', 'Rhezzar', '', '', ''),
(184, 'Lorlito', 'Regadio', '', '', ''),
(185, 'Bombeo', 'Jestone', '', '', 'Zone 9-A, Block 5, Fatima'),
(186, 'Grana', 'Jover', 'Nambong', '', 'Fatima'),
(187, 'Sosoter', 'Cornelio', '', '', 'Zone 10-B, Block 13, Fatima'),
(188, 'Tabanao', 'Dennis', '', '', ''),
(189, 'Tabanao', 'Jenny', '', '', ''),
(190, 'Tagalog', 'Jommel', '', '', ''),
(191, 'Taha', 'Kamarudin', '', '', 'Zone 1, Block 7, Fatima'),
(192, 'Tamama', 'Manny', 'Emba', '', 'Zone 2, Block 4, Fatima'),
(193, 'Tamano', 'Teddy John', '', '', ''),
(194, 'Condez', 'Mark Jay', '', '', ''),
(195, 'Tatoy', 'Richard Tapaya', '', '', 'Zone 1, Block 5, Fatima'),
(196, 'Tubaling', 'June Chris', '', '', ''),
(197, 'Ulama', 'Tuhame', '', '', 'Zone 9-A Block 5'),
(198, 'Usman', 'Amin', '', '', ''),
(199, 'Usman', 'Bali', '', '', ''),
(200, 'Usop', 'Abdulracman', '', '', ''),
(201, 'Utto', 'Ryan', '', '', ''),
(202, 'Villa', 'Darwin', '', '', 'MSU Compound Tambler'),
(203, 'Villamosa', 'Charles', '', '', 'Zone 1, Block 0, Fatima'),
(204, 'Villanueva', 'Oliver', 'Lozano', '', 'Fatima'),
(205, 'Wande', 'Allan', '', '', ''),
(206, 'Zaulda', 'Crisanto', '', '', 'Zone 2, Block 0, Fatima');



CREATE TABLE IF NOT EXISTS registered_rider_profile (
	registered_rider_id int NOT NULL AUTO_INCREMENT,
    rider_id int NOT NULL,
    rider_no int NOT NULL,
    designation varchar(255) NOT NULL,
    date_of_membership varchar(255) DEFAULT NULL,
    official_reciept varchar(55) DEFAULT NULL,
    or_expiration_date varchar(10) DEFAULT NULL,
    certificate_of_registration varchar(255) DEFAULT NULL,
    drivers_license varchar(255) DEFAULT NULL,
    license_expiration_date varchar(10) DEFAULT NULL,
    plate_number varchar(255) DEFAULT NULL,
    contact_number varchar(11) DEFAULT NULL,
    img_url varchar(255) NOT NULL,
    PRIMARY KEY(registered_rider_id),
    FOREIGN KEY(rider_id) REFERENCES rider(rider_id) 
);

INSERT INTO registered_rider_profile 
(rider_id, rider_no, designation, date_of_membership, official_reciept, or_expiration_date, certificate_of_registration, drivers_license, license_expiration_date, plate_number, contact_number, img_url)
VALUES 
(203, 2, 'Member', '', '1210-000000037218', '2023-06-01', '12386002-8', 'L04-02-060971', '2024-05-18', '7236 MU', '', '2.png'),
(126, 4, 'Member', 'July 2022', '1210-000000036116', '2023-06-22', '', 'L05-13-003061', '2027-01-22', 'MA 70996', '', '4.png'),
(117, 6, 'Member', 'June 2021', '1805400321', 2020-01-17, '36672846-4', 'L04-20-008595', 2025-06-26, '1201-625752', '09268807695', '6.png'),
(86, 13, 'Member', 'August 2008', '1210-000000120226', '2023-05-11', '8423404-3', 'L05-88-012605', '2024-09-07', '8835 PD', '09177258174', '13.png'),
(155, 14, 'Public Information Officer', 'July 2022', '', '2024-03-22', '', 'L04-21-002942', '2026-07-13', '', '09631447235', '14.png'),
(14, 15, 'Public Information Officer', 'October 2010', '20216301', '2019-07-01', '150025982', 'L04-13-001283', '2033-03-04', '3936 MY', '', '15.png'),
(137, 18, 'Member', 'September 2015', '', '', '', '', '', '857MVY', '09355586025', '18.png'),
(176, 23, 'Member', 'September 2022', '1207-000000007236', '2022-08-24', '38971299-3', 'L08-12-000882', '2025-02-17', '1201-683907', '', '23.png'),
(94, 24, 'Treasurer', 'January 2006', '', '', '', '', '', '516MOY', '', '24.png'),
(177, 26, 'Member', 'October 2022', '1207-000000016148', '2023-04-25', '269613912', 'L04-17-005973', '2026-11-12', '1101-321322', '', '26.png'),
(185, 27, 'Member', 'January 2019', '1966723846', '2023-10-01', '36646938-6', 'L04-20-002511', '2024-03-14', '1201-599790', '09386912419', '27.png'),
(16, 28, 'Member', 'February 2015', '20100039314098', '2023-06-21', '186220112', 'L04-14-010324', '2032-07-19', 'MZ 5386', '', '28.png'),
(62, 33, 'Member', 'January 2012', '1207-000000003602', '2023-06-30', '', 'L04-12-006587', '2033-01-17', '4796 OL', '', '33.png'),
(141, 34, 'Board Of Director', 'March 2005', '1210-000000063589', '2022-10-05', '2500187-4', 'L04-96-042305', '2032-12-11', 'ML 8510', '09108123170', '34.png'),
(65, 35, 'President', 'November 2010', '2020190465564', '2023-07-31', '38459866-4 ', 'W04-00-457303', '2026-10-25', '1201-674762', '09973127166', '35.png'),
(67, 36, 'Member', 'March 2000', '', '', '', '', '', 'LA 74758', '09505151054', '36.png'),
(57, 37, 'Member', 'August 2022', '', '2023-04-30', '', 'L04-17-007891', '2026-11-11', '', '09518261618', '37.png'),
(143, 44, 'Member', 'September 2022', '1210-000000055509', '2022-09-12', '311700572', 'L04-19-001432', '2024-01-12', '1201-410379', '09461567708', '44.png'),
(30, 46, 'Member', 'May 2023', '', '', '', '', '', '1201-674763', '09268835936', '46.png'),
(59, 47, 'Member', 'June 2013', '2264189432', '', '455907336', 'L04-91-025090', '2027-10-12', '873 MSS', '09706738743', '47.png'),
(136, 49, 'Member', 'August 2017', '', '', '', '', '', '1201-437716', '09123843437', '49.png'),
(1, 51, 'Member', '', '1210-000000030280', '2023-06-30', '38446373', 'L04-03-077848', '2028-03-26', '1201-660993', '', '51.png'),
(191, 52, 'Board Of Director', 'April 2013', '', '', '', '', '', '1201-485787', '09353578607', '52.png'),
(192, 53, 'Member', 'January 2016', '1230-000000095714', '2023-03-07', '3932070-2', 'N02-00-435408', '2023-06-11', 'XI 1843', '', '53.png'),
(202, 59, 'Member', 'October 2000', '', '', '', '', '', 'MA 95026', '', '59.png'),
(110, 60, 'Member', 'July 2007', '', '', '', '', '', '9109 MJ', '', '60.png'),
(2, 61, 'Member', 'January 2011', '1210-000000089999', '2023-02-02', '1552818-1', 'L04-08-001022', '2026-11-08', '4112 MF', '', '61.png'),
(103, 62, 'Member', 'January 2023', '', '', '', 'L04-08-006962', '2034-04-14', 'For Registration', '09531840977', '62.png'),
(108, 63, 'Member', 'October 2022', '', '', '', '', '', '370MOM', '', '63.png'),
(178, 64, 'Member', 'August 2010', '', '', '', '', '', '6150 MM', '', '64.png'),
(18, 65, 'Member', 'June 2005', '1210-000000085697', '2024-01-31', '', 'L04-05-002033', '2032-04-22', '1201-220297', '', '65.png'),
(46, 67, 'Member', 'June 2008', '', '', '', '', '', '104-79-003-166', '09507697603', '67.png'),
(170, 70, 'Member', 'December 2018', '', '', '', '', '', '305MPM', '09757769426', '70.png'),
(204, 71, 'Secretary', 'January 2019', '1515250951', '', '330844172', 'L04-18-008028', '2023-05-20', '1201-486117', '09530850121', '71.png'),
(131, 73, 'Member', 'October 2022', '1207-000000015421', '2023-04-04', '', 'L05-18-006547', '2023-07-11', '1201-646195', '', '73.png'),
(52, 76, 'Member', 'May 2017', '1207-000000008444', '2023-09-30', '41082339-4', 'L04-11-005593', '2027-11-28', '509MDK', '', '76.png'),
(152, 77, 'Member', 'May 2011', '1207-000000005762', '2022-08-02', '24304803', 'L04-15-006997', '2023-06-10', 'LD 46458', '09511347847', '77.png'),
(111, 78, 'Member', 'July 2008', '', '', '', '', '', '1201-663764', '09706135334', '78.png'),
(127, 79, 'Business Manager', 'January 2018', '2264270024', '2022-09-05', '457913466', 'L04-08-006291', '2033-02-18', '663MUA', '09638381325', '79.png'),
(35, 80, 'Member', 'March 2018', '', '', '', '', '', '1201-191100', '09153564861', '80.png'),
(78, 81, 'Member', 'November 2015', '', '', '', '', '', '2111 OL', '09073851417', '81.png'),
(122, 85, 'Member', 'August 2022', '', '', '', '', '', '730MDX', '', '85.png'),
(97, 89, 'Member', 'April 2005', '1210-000000042152', '', '11784072-6', 'L04-06-004541', '2025-12-26', '6830 MR', '09166634447', '89.png'),
(187, 90, 'Member', 'March 2015', '', '', '', '', '', '1101-325045', '09057780536', '90.png'),
(162, 91, 'Member', 'January 2023', '', '', '', '', '', '219MTG', '09973422610', '91.png'),
(181, 93, 'Member', 'November 2019', '', '', '', '', '', '1201-619215', '09702472700', '93.png'),
(79, 98, 'Member', 'February 2023', '', '', '', '', '', '696MWF', '09483185259', '98.png'),
(101, 102, 'Member', 'November 2022', '', '23-06-18', '', 'M16-19-008076', '2024-06-30', '186MFM', '09856460512', '102.png'),
(154, 107, 'Member', 'February 2010', '', '2023-08-31', '', 'L04-14-009595', '2032-01-07', '', '09467084551', '107.png'),
(153, 112, 'Member', 'November 2014', '', '2023-01-24', '', 'L04-23-500599', '2024-01-16', '281LGW', '09569609991', '112.png'),
(66, 114, 'Member', 'June 2004', '1210-000000044159', '2022-08-02', '313994553', 'L04-07-004056', '2023-06-13', '1201-417409', '09481566822', '114.png'),
(19, 116, 'Member', 'September 2009', '', '', '', '', '', 'LE 14468', '', '116.png'),
(99, 117, 'Board Of Director', 'August 2014', '1210-000000020583', '2022-06-30', '1101341251', 'L04-12-008356', '2023-04-13', '873 MSS', '09816561245', '117.png'),
(195, 120, 'Member', 'February 2022', '', '', '', '', '', '1201-706443', '09103292421', '120.png'),
(157, 124, 'Auditor', 'July 2012', '', '2022-12-15', '', 'L04-15-007257', '2025-07-15', '1101-733001', '09161059597', '124.png'),
(116, 126, 'Member', 'March 2023', '', '', '35628387-4', 'L04-23-001012', '2027-06-03', '1101-670042', '09518123025', '126.png'),
(125, 130, 'Member', 'January 2004', '', '', '', '', '', '281LGW', '09811133073', '130.png'),
(53, 132, 'Member', 'September 2016', '2019180532439', '2024-01-31', '36664807-4', 'G01-90-120437', '2024-02-02', '1201-618034', '', '132.png'),
(147, 136, 'Member', 'February 2023', '', '', '', '', '', '7263 MC', '09161528409', '136.png'),
(8, 137, 'Member', 'September 2022', '1211-000000059910', '2023-01-11', '46596237-2', '', '', '280MVL', '', '137.png'),
(142, 140, 'Member', 'May 2007', '', '', '', '', '', '844MQX', '09396100843', '140.png'),
(98, 144, 'Member', 'October 2022', '1210-000000083206', '2024-01-31', '340889452', 'N04-10-002128', '2023-02-11', '1380-1084671', '09103044999', '144.png'),
(169, 146, 'Member', 'May 2010', '1210-000000077170', '2022-11-28', '', 'L04-07-006045', '2024-10-03', '1201-674763', '', '146.png'),
(166, 148, 'Member', 'November 2022', '', '2022-11-21', '', 'L04-16-001645', '', '', '09756022265', '148.png'),
(84, 152, 'Member', 'January 2006', '', '', '', '', '', 'XE 7363', '09061300609', '152.png'),
(15, 155, 'Member', 'November 2005', '', '', '', '', '', '334MUT', '09630603617', '155.png'),
(9, 156, 'Member', 'November 2010', '', '', '', '', '', '355MWG', '09187182975', '156.png'),
(93, 157, 'Member', 'July 2008', '', '', '', '', '', '', '09635437118', '157.png'),
(206, 157, 'Member', 'March 2005', '1271609944', '', '476205054', 'L08-95-007762', '2028-03-28', '488MWA', '09366193863', '157.png'),
(132, 158, 'Member', 'August 2018', '2167439573', '2022-02-11', '297273944', 'L04-16-003336', '2023-11-11', '553MAG', '', '158.png'),
(128, 159, 'Member', 'August 2016', '97635658', '2017-03-21', '11783529-2', 'L04-10-002878', '2023-12-06', '6283 MR', '', '159.png'),
(172, 164, 'Member', 'May 2003', '', '', '', '', '', '1201-657527', '', '164.png'),
(51, 165, 'Public Information Officer', 'March 2017', '', '', '', '', '', '439MAA', '', '165.png'),
(123, 169, 'Member', 'January 2014', '201577219328', '2020-07-14', '228999083', 'L04-15-010565', '2023-01-29', 'MC 26357', '09709679870', '169.png'),
(167, 175, 'Member', 'September 2019', '', '', '', '', '', '1201-3377905', '09161004088', '175.png'),
(100, 180, 'Board Of Director', 'August 2018', '1207-000000008591', '2023-08-31', '38966671-2', 'L04-15-009967', '', '1201-679177', '09816745327', '180.png'),
(186, 181, 'Member', 'September 2022', '1210-000000053460', '2022-09-05', '38970229-4', 'L04-20-000695', '2024-11-22', '1201-682815', '09978965224', '181.png'),
(102, 183, 'Vice-President', 'October 1997', '1230-000000013965', '2023-04-30', '346645865', 'G01-11-005854', '2026-10-05', '1201-516829', '09973128651', '183.png'),
(40, 185, 'Member', '', '', '', '', '', '', '1201-190417', '09229905068', '185.png'),
(140, 187, 'Member', 'April 2016', '1207-000000014423', '2023-03-08', '230589332', 'L04-11-005888', '2027-05-05', 'LC76163', '09467202574', '187.png'),
(7, 191, 'Member', 'January 2022', '', '', '', '', '', '564MUV', '09679969996', '191.png'),
(124, 192, 'Member', 'September 2022', '1846870723', '', '', 'M01-09-003705', '2023-05-06', '1101-0793198', '09365943118', '192.png'),
(200, 194, 'Member', 'April 2015', '', '', '', '', '', '453MRO', '09651491580', '194.png'),
(156, 195, 'Member', 'January 2023', '2044722013', '2021-03-15', '339131741', 'L04-09-001306', '2022-10-15', '1201-505242', '', '195.png'),
(197, 196, 'Member', 'June 2017', '', '', '', '', '', 'YE 3907', '09056447815', '196.png'),
(151, 198, 'Member', 'September 2022', '1210-000000005489', '2022-07-13', '37988323-2', 'M16-20-009746', '2024-09-15', '1201-653870', '09922329481', '198.png'),
(70, 199, 'Member', 'July 2018', '', '', '', '', '', 'MA 54507', '09121329079', '199.png'),
(161, 204, 'Member', 'October 1997', '', '', '', '', '', '738MTT', '09295369474', '204.png'),
(164, 150, 'Member', 'July 2022', '', '', '', 'L04-03-078510', '2024', '1101-667969', '', '150.png'),
(183, 128, 'Member', 'June 2018', '1210-000000044705', '2023-07-21', '', 'L04-13-001650', '2023-08-16', 'MA 17587', '', '128.png'),
(190, 101, 'Member', 'January 2000', '1210-000000051395', '2022-08-25', '234250870', 'L04-10-002856', '2032-02-20', 'MC 37008', '', '101.png');

CREATE TABLE IF NOT EXISTS developer (
	developer_id int NOT NULL AUTO_INCREMENT,
    last_name varchar(255) NOT NULL,
    first_name varchar(255) NOT NULL,
    mid_name varchar(255) DEFAULT NULL,
    suffix varchar(255) DEFAULT NULL,
    img_url varchar(255) NOT NULL,
    PRIMARY KEY(developer_id)
);

INSERT INTO developer (last_name, first_name, mid_name, suffix, img_url) VALUES 
('Bilaos', 'Matthew Joseph', 'Fang', '', 'matthew.jpg'),
('Parlero', 'Kenjesan', '', '', 'kenjesan.jpg'),
('Capinig', 'Jeff Matthew', 'Dejan', '', 'jeff.jpg'),
('Medico', 'Cherry Mae', '', '', 'cherry.jpg'),
('Delos Santos', 'Arviel', '', '', 'arviel.jpg'),
('Esver', 'Jan Marc', '', '', 'jan.jpg'),
('Halinon', 'Aldrin', '', '', 'aldrin.jpg'),
('Gallano', 'Cyrus Jade', '', '', 'cyrus.jpg');