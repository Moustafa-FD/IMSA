

--== Tracks ==--
INSERT INTO TRACKS VALUES(1, 'Daytona International Speedway', 'Daytona Beach, Florida', 4.023);
INSERT INTO TRACKS VALUES(2, 'Sebring International Raceway', 'Sebring, Florida', 6.019);
INSERT INTO TRACKS VALUES(3, 'Long Beach Street Circuit', 'Long Beach, California', 3.167);
INSERT INTO TRACKS VALUES(4, 'WeatherTech Raceway Laguna Seca', 'Monterey, California', 3.602);
INSERT INTO TRACKS VALUES(5, 'Streets of Detroit', 'Detroit, Michigan', 2.647);
INSERT INTO TRACKS VALUES(6, 'Watkins Glen International', 'Watkins Glen, New York', 5.552);
INSERT INTO TRACKS VALUES(7, 'Canadian Tire Motorsport Park', 'Bowmanville, Ontario', 2.459);
INSERT INTO TRACKS VALUES(8, 'Road America', 'Elkhart Lake, Wisconsin', 6.515);
INSERT INTO TRACKS VALUES(9, 'Virginia International Raceway', 'Alton, Virginia', 5.262);
INSERT INTO TRACKS VALUES(10, 'Indianapolis Motor Speedway', 'Speedway, Indiana', 3.925);
INSERT INTO TRACKS VALUES(11, 'Michelin Raceway Road Atlanta', 'Braselton, Georgia', 4.088);



--== Tournament ==--
INSERT INTO Tournament VALUES(1, 1, 'Rolex 24 at Daytona', TO_DATE('27-01-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(2, 2, 'Mobil 1 Twelve Hours of Sebring', TO_DATE('16-03-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(3, 3, 'Acura Grand Prix of Long Beach', TO_DATE('20-04-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(4, 4, 'Motul Course de Monterey', TO_DATE('12-05-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(5, 5, 'Chevrolet Detroit Sports Car Classic', TO_DATE('01-06-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(6, 6, 'Sahlen s Six Hours of The Glen', TO_DATE('23-06-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(7, 7, 'Chevrolet Grand Prix', TO_DATE('14-07-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(8, 8, 'IMSA Sportscar Weekend', TO_DATE('04-08-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(9, 9, 'Michelin GT Challenge at VIR', TO_DATE('25-08-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(10, 10, 'Tirerack.com Battle on the Bricks', TO_DATE('22-09-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(11, 11, 'Motul Petit Le Mans', TO_DATE('12-10-2024', 'DD-MM-YYYY'), 24);






--== Teams ==--
--Grand Touring Prototype (GTP)
INSERT INTO TEAMS VALUES(7, 'Porsche Penske Motorsport', 'Porsche AG');
INSERT INTO TEAMS VALUES(1, 'Cadillac Racing', 'General Motors');
INSERT INTO TEAMS VALUES(31, 'Whelen Cadillac Racing', 'Action Express Racing');
INSERT INTO TEAMS VALUES(40, 'Wayne Taylor Racing with Andretti', 'Andretti Autosport');
INSERT INTO TEAMS VALUES(24, 'BMW M Team RLL', 'BMW AG');
INSERT INTO TEAMS VALUES(5, 'Proton Competition', 'Proton Racing');
INSERT INTO TEAMS VALUES(85, 'JDC–Miller MotorSports', 'JDC MotorSports');
INSERT INTO TEAMS VALUES(63, 'Lamborghini – Iron Lynx', 'Iron Lynx');

--Le Mans Prototype 2 (LMP2)
INSERT INTO TEAMS VALUES(04, 'CrowdStrike Racing by APR', 'CrowdStrike');
INSERT INTO TEAMS VALUES(2, 'United Autosports USA', 'United Autosports');
INSERT INTO TEAMS VALUES(8, 'Tower Motorsports', 'DD');
INSERT INTO TEAMS VALUES(11, 'TDS Racing', 'DD');
INSERT INTO TEAMS VALUES(18, 'Era Motorsport', 'DD');
INSERT INTO TEAMS VALUES(20, 'MDK by High Class Racing', 'High Class Racing');
INSERT INTO TEAMS VALUES(33, 'Sean Creech Motorsport', 'DD');
INSERT INTO TEAMS VALUES(52, 'Inter Europol by PR1/Mathiasen Motorsports', 'Inter Europol Competition');
INSERT INTO TEAMS VALUES(74, 'Riley', 'Riley Technologies');


--GTD Pro
INSERT INTO TEAMS VALUES(27, 'Heart of Racing Team', 'Aston Martin');
INSERT INTO TEAMS VALUES(111, 'Paul Miller Racing', 'BMW AG');
INSERT INTO TEAMS VALUES(3, 'Corvette Racing by Pratt Miller Motorsports', 'General Motors');
INSERT INTO TEAMS VALUES(9, 'Pfaff Motorsports', 'McLaren');
INSERT INTO TEAMS VALUES(14, 'Vasser Sullivan', 'Toyota');
INSERT INTO TEAMS VALUES(19, 'Iron Lynx', 'Lamborghini');
INSERT INTO TEAMS VALUES(62, 'Risi Competizione', 'Ferrari');
INSERT INTO TEAMS VALUES(64, 'Ford Multimatic Motorsports', 'Ford');
INSERT INTO TEAMS VALUES(75, 'SunEnergy1 Racing', 'Mercedes-Benz');
INSERT INTO TEAMS VALUES(77, 'AO Racing', 'Porsche');
INSERT INTO TEAMS VALUES(82, 'DragonSpeed', 'Ferrari');

--GTD
INSERT INTO TEAMS VALUES(23, 'Triarsi Competizione', 'Ferrari');
INSERT INTO TEAMS VALUES(13, 'AWA', 'Chevrolet');
INSERT INTO TEAMS VALUES(21, 'AF Corse', 'Ferrari');
INSERT INTO TEAMS VALUES(28, 'Flying Lizard Motorsports', 'Aston Martin');
INSERT INTO TEAMS VALUES(32, 'Korthoff/Preston Motorsports', 'Mercedes-Benz');
INSERT INTO TEAMS VALUES(34, 'Conquest Racing', 'Ferrari');
INSERT INTO TEAMS VALUES(43, 'Andretti Motorsports', 'Porsche');
INSERT INTO TEAMS VALUES(45, 'Magnus Racing', 'Aston Martin');
INSERT INTO TEAMS VALUES(47, 'Cetilar Racing', 'Ferrari');
INSERT INTO TEAMS VALUES(57, 'Winward Racing', 'Mercedes-Benz');
INSERT INTO TEAMS VALUES(66, 'Gradient Racing', 'Acura');
INSERT INTO TEAMS VALUES(70, 'Inception Racing', 'McLaren');
INSERT INTO TEAMS VALUES(78, 'Forte Racing', 'Lamborghini');
INSERT INTO TEAMS VALUES(80, 'Lone Star Racing', 'Mercedes-AMG');
INSERT INTO TEAMS VALUES(83, 'Iron Dames', 'Lamborghini');
INSERT INTO TEAMS VALUES(87, 'MDK Motorsports', 'Porsche');
INSERT INTO TEAMS VALUES(92, 'Kellymoss with Riley', 'Porsche');
INSERT INTO TEAMS VALUES(96, 'Turner Motorsport', 'BMW');
INSERT INTO TEAMS VALUES(120, 'Wright Motorsports', 'Porsche');






-- == Vehicles ==--

--GTP--
INSERT INTO VEHICLE VALUES(01, 'Cadillac V-Series.R', 'GTP');
INSERT INTO VEHICLE VALUES(5, 'Porsche 963', 'GTP');
INSERT INTO VEHICLE VALUES(6, 'Porsche 963', 'GTP');
INSERT INTO VEHICLE VALUES(7, 'Porsche 963', 'GTP');
INSERT INTO VEHICLE VALUES(10, 'Acura ARX-06', 'GTP');
INSERT INTO VEHICLE VALUES(40, 'Acura ARX-06', 'GTP');
INSERT INTO VEHICLE VALUES(24, 'BMW M Hybrid V8', 'GTP');
INSERT INTO VEHICLE VALUES(25, 'BMW M Hybrid V8', 'GTP');
INSERT INTO VEHICLE VALUES(31, 'Cadillac V-Series.R', 'GTP');
INSERT INTO VEHICLE VALUES(63, 'Lamborghini SC63', 'GTP');
INSERT INTO VEHICLE VALUES(85, 'Porsche 963', 'GTP');




--LMP2--
INSERT INTO VEHICLE VALUES(04, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(2, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(22, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(8, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(11, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(18, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(20, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(33, 'Ligier JS P217', 'LMP2');
INSERT INTO VEHICLE VALUES(52, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(74, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(79, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(81, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(88, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(99, 'Oreca 07', 'LMP2');

--GTD Pro--
INSERT INTO VEHICLE VALUES(027, 'Aston Martin Vantage AMR GT3 Evo', 'GTD Pro');
INSERT INTO VEHICLE VALUES(23, 'Aston Martin Vantage AMR GT3 Evo', 'GTD Pro');
INSERT INTO VEHICLE VALUES(12, 'BMW M4 GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(3, 'Chevrolet Corvette Z06 GT3.R', 'GTD Pro');
INSERT INTO VEHICLE VALUES(44, 'Chevrolet Corvette Z06 GT3.R', 'GTD Pro');
INSERT INTO VEHICLE VALUES(9, 'McLaren 720S GT3 Evo', 'GTD Pro');
INSERT INTO VEHICLE VALUES(14, 'Lexus RC F GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(15, 'Lexus RC F GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(19, 'Lamborghini Huracán GT3 Evo 2', 'GTD Pro');
INSERT INTO VEHICLE VALUES(60, 'Lamborghini Huracán GT3 Evo 2', 'GTD Pro');
INSERT INTO VEHICLE VALUES(35, 'Ferrari 296 GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(62, 'Ferrari 296 GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(64, 'Ford Mustang GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(65, 'Ford Mustang GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(75, 'Mercedes-AMG GT3 Evo', 'GTD Pro');
INSERT INTO VEHICLE VALUES(77, 'Porsche 911 GT3 R (992)', 'GTD Pro');
INSERT INTO VEHICLE VALUES(82, 'Ferrari 296 GT3', 'GTD Pro');






--== Spensors ==--
INSERT INTO SPONSORS VALUES(1, 7, 'PPG', 7845000, null);
INSERT INTO SPONSORS VALUES(2, 7, 'Hitachi', 9200000, null);
INSERT INTO SPONSORS VALUES(3, 7, 'Root Insurance', 7600000, null);
INSERT INTO SPONSORS VALUES(4, 7, 'Snap-On', 1800000, null);
INSERT INTO SPONSORS VALUES(5, 7, 'Shell,', 11950000, null);



INSERT INTO SPONSORS VALUES(6, 1, 'The American Legion', 1500000, null);
INSERT INTO SPONSORS VALUES(7, 1, 'PNC Bank', 13200000, null);
INSERT INTO SPONSORS VALUES(8, 1, 'DHL', 16500000, null);
INSERT INTO SPONSORS VALUES(9, 1, 'Ridgeline Lubricants', 5300000, null);
INSERT INTO SPONSORS VALUES(10, 1, 'Root Insurance', 6000000, null);


INSERT INTO SPONSORS VALUES(11, 31, 'Mobil 1™ Motor Oils', 16950000, null);
INSERT INTO SPONSORS VALUES(12, 31, 'VP Racing Fuels', 5354000, null);
INSERT INTO SPONSORS VALUES(13, 31, 'Michelin Motorsports', 14700000, null);
INSERT INTO SPONSORS VALUES(14, 31, 'Factory Canopies', 2450000, null);
INSERT INTO SPONSORS VALUES(15, 31, 'Mechanix Wear', 12300000, null);


INSERT INTO SPONSORS VALUES(16, 40, 'ACURA', 35000000, null);
INSERT INTO SPONSORS VALUES(17, 40, 'DEX imaging', 65000000, null);
INSERT INTO SPONSORS VALUES(18, 40, 'MOTUL', 2150000, null);
INSERT INTO SPONSORS VALUES(19, 40, 'Mechanix Wear', 3450000, null);
INSERT INTO SPONSORS VALUES(20, 40, 'gainbridge', 7650000, null);


INSERT INTO SPONSORS VALUES(21, 24, 'United Rentals', 22050000, null);
INSERT INTO SPONSORS VALUES(22, 24, 'Total', 6350000, null);
INSERT INTO SPONSORS VALUES(23, 24, 'Fifth Third Bank', 8500000, null);
INSERT INTO SPONSORS VALUES(24, 24, 'Mi-Jack,', 4125000, null);
INSERT INTO SPONSORS VALUES(25, 24, 'Panasonic', 5500000, null);

INSERT INTO SPONSORS VALUES(26, 5, 'Mustang Sampling', 77000000, null);
INSERT INTO SPONSORS VALUES(27, 5, 'FARO', 654000, null);
INSERT INTO SPONSORS VALUES(28, 5, 'Milwakee', 13500000, null);
INSERT INTO SPONSORS VALUES(29, 5, 'LuanZhou', 5600000, null);
INSERT INTO SPONSORS VALUES(30, 5, 'STALOC', 1300000, null);


INSERT INTO SPONSORS VALUES(31, 85, 'Multimatic', 13000000, null);
INSERT INTO SPONSORS VALUES(32, 85, 'TrofiPack', 17800000, null);
INSERT INTO SPONSORS VALUES(33, 85, 'LIQUI MOLY', 45300000, null);
INSERT INTO SPONSORS VALUES(34, 85, 'KARCHER', 21000000, null);
INSERT INTO SPONSORS VALUES(35, 85, 'SALTWORKS 3D SOLUTIONS', 9800000, null);


INSERT INTO SPONSORS VALUES(36, 63, 'GOODYEAR', 71000000, null);
INSERT INTO SPONSORS VALUES(37, 63, 'PRISMA ELECTRONICS', 26000000, null);
INSERT INTO SPONSORS VALUES(38, 63, 'OMP', 7500000, null);
INSERT INTO SPONSORS VALUES(39, 63, 'CARRARO', 16700000, null);
INSERT INTO SPONSORS VALUES(40, 63, 'ItalianGesture', 33000000, null);



--== DRIVERS ==--


INSERT INTO Driver  VALUES(1, 1, 'Sébastien Bourdais', 45, 'French');
INSERT INTO Driver  VALUES(2, 1, 'Renger van der Zande', 38, 'Dutch');
INSERT INTO Driver  VALUES(3, 1, 'Scott Dixon', 44, 'New Zealand');
INSERT INTO Driver  VALUES(4, 1, 'Álex Palou', 27, 'Spanish');

INSERT INTO Driver  VALUES(5, 5, 'Gianmaria Bruni', 43, 'Italian');
INSERT INTO Driver  VALUES(6, 5, 'Bent Viscaal', 25, 'Dutch');
INSERT INTO Driver  VALUES(7, 5, 'Alessio Picariello', 31, 'Belgian');
INSERT INTO Driver  VALUES(8, 5, 'Romain Dumas', 46, 'French');
INSERT INTO Driver  VALUES(9, 5, 'Neel Jani', 40, ' Swiss');
INSERT INTO Driver  VALUES(10, 5, 'Julien Andlauer', 25, 'French');
INSERT INTO Driver  VALUES(11, 5, 'Mike Rockenfeller', 41, 'German');




--
INSERT INTO Driver  VALUES(12, 7, 'Mathieu Jaminet', 30, 'French');
INSERT INTO Driver  VALUES(13, 7, 'Nick Tandy', 40, 'British');
INSERT INTO Driver  VALUES(14, 7, 'Kévin Estre', 36, 'French');
INSERT INTO Driver  VALUES(15, 7, 'Laurens Vanthoor', 33, 'Belgian');
INSERT INTO Driver  VALUES(16, 7, 'Frédéric Makowiecki', 43, 'French');

INSERT INTO Driver  VALUES(17, 7, 'Dane Cameron', 36, 'American');
INSERT INTO Driver  VALUES(18, 7, 'Felipe Nasr', 32, 'Brazilian');
INSERT INTO Driver  VALUES(19, 7, 'Matt Campbell', 29, 'Australian');
INSERT INTO Driver  VALUES(20, 7, 'Josef Newgarden', 33, 'American');
--

--
INSERT INTO Driver  VALUES(21, 40, 'Filipe Albuquerque', 39, 'Portuguese');
INSERT INTO Driver  VALUES(22, 40, 'Ricky Taylor', 35, 'American');
INSERT INTO Driver  VALUES(23, 40, 'Brendon Hartley', 34, 'New Zealand');
INSERT INTO Driver  VALUES(24, 40, 'Marcus Ericsson', 34, 'Swiss');

INSERT INTO Driver  VALUES(25, 40, 'Louis Delétraz', 27, 'Swiss');
INSERT INTO Driver  VALUES(26, 40, 'Jordan Taylor', 33, 'American');
INSERT INTO Driver  VALUES(27, 40, 'Colton Herta', 24, 'American');
INSERT INTO Driver  VALUES(28, 40, 'Jenson Button', 44, 'England');
--

--
INSERT INTO Driver  VALUES(29, 24, 'Philipp Eng', 34, 'Austrian');
INSERT INTO Driver  VALUES(30, 24, 'Jesse Krohn', 34, 'Finnish');
INSERT INTO Driver  VALUES(31, 24, 'Augusto Farfus', 41, 'Brazilian');
INSERT INTO Driver  VALUES(32, 24, 'Dries Vanthoor', 26, ' Belgian');

INSERT INTO Driver  VALUES(33, 24, 'Connor De Phillippi', 31, 'American');
INSERT INTO Driver  VALUES(34, 24, 'Nick Yelloly', 33, 'British');
INSERT INTO Driver  VALUES(35, 24, 'Maxime Martin', 38, 'Belgian');
INSERT INTO Driver  VALUES(36, 24, 'René Rast', 38, 'German');
--

INSERT INTO Driver  VALUES(37, 31, 'Jack Aitken', 29, 'England');
INSERT INTO Driver  VALUES(38, 31, 'Pipo Derani', 31, 'Brazilian');
INSERT INTO Driver  VALUES(39, 31, 'Tom Blomqvist', 30, 'British');

INSERT INTO Driver  VALUES(40, 63, 'Matteo Cairoli', 28, 'Italian');
INSERT INTO Driver  VALUES(41, 63, 'Andrea Caldarelli', 34, 'Italian');
INSERT INTO Driver  VALUES(42, 63, 'Romain Grosjean', 38, 'Swiss');

INSERT INTO Driver  VALUES(43, 85, 'Tijmen van der Helm', 20, 'Dutch');
INSERT INTO Driver  VALUES(44, 85, 'Richard Westbrook', 49, 'British');
INSERT INTO Driver  VALUES(45, 85, 'Phil Hanson', 25, 'British');
INSERT INTO Driver  VALUES(46, 85, 'Ben Keating', 53, 'American');



--== Roster ==--
INSERT INTO ROSTER VALUES(1, 1, 01);
INSERT INTO ROSTER VALUES(2, 2, 01);
INSERT INTO ROSTER VALUES(3, 3, 01);
INSERT INTO ROSTER VALUES(4, 4, 01);

INSERT INTO ROSTER VALUES(5, 5, 5);
INSERT INTO ROSTER VALUES(6, 6, 5);
INSERT INTO ROSTER VALUES(7, 7, 5);
INSERT INTO ROSTER VALUES(8, 8, 5);
INSERT INTO ROSTER VALUES(9, 9, 5);
INSERT INTO ROSTER VALUES(10, 10, 5);
INSERT INTO ROSTER VALUES(11, 11, 5);

--
INSERT INTO ROSTER VALUES(12, 12, 6);
INSERT INTO ROSTER VALUES(13, 13, 6);
INSERT INTO ROSTER VALUES(14, 14, 6);
INSERT INTO ROSTER VALUES(15, 15, 6);
INSERT INTO ROSTER VALUES(16, 16, 6);

INSERT INTO ROSTER VALUES(17, 17, 7);
INSERT INTO ROSTER VALUES(18, 18, 7);
INSERT INTO ROSTER VALUES(19, 19, 7);
INSERT INTO ROSTER VALUES(20, 20, 7);
--


--
INSERT INTO ROSTER VALUES(21, 21, 10);
INSERT INTO ROSTER VALUES(22, 22, 10);
INSERT INTO ROSTER VALUES(23, 23, 10);
INSERT INTO ROSTER VALUES(24, 24, 10);

INSERT INTO ROSTER VALUES(25, 25, 40);
INSERT INTO ROSTER VALUES(26, 26, 40);
INSERT INTO ROSTER VALUES(27, 27, 40);
INSERT INTO ROSTER VALUES(28, 28, 40);
--


--
INSERT INTO ROSTER VALUES(29, 29, 24);
INSERT INTO ROSTER VALUES(30, 30, 24);
INSERT INTO ROSTER VALUES(31, 31, 24);
INSERT INTO ROSTER VALUES(32, 32, 24);

INSERT INTO ROSTER VALUES(33, 33, 25);
INSERT INTO ROSTER VALUES(34, 34, 25);
INSERT INTO ROSTER VALUES(35, 35, 25);
INSERT INTO ROSTER VALUES(36, 36, 25);
--


INSERT INTO ROSTER VALUES(37, 37, 31);
INSERT INTO ROSTER VALUES(38, 38, 31);
INSERT INTO ROSTER VALUES(39, 39, 31);

INSERT INTO ROSTER VALUES(40, 40, 63);
INSERT INTO ROSTER VALUES(41, 41, 63);
INSERT INTO ROSTER VALUES(42, 42, 63);

INSERT INTO ROSTER VALUES(43, 43, 85);
INSERT INTO ROSTER VALUES(44, 44, 85);
INSERT INTO ROSTER VALUES(45, 45, 85);
INSERT INTO ROSTER VALUES(46, 46, 85);