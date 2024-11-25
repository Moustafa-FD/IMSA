

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



--== championship ==--
INSERT INTO CHAMPIONSHIP  values (1, 'IMSA SportsCar Championship', 2024);
INSERT INTO CHAMPIONSHIP  values (2, 'IMSA SportsCar Championship', 2023);




--== Tournament ==--
INSERT INTO Tournament VALUES(1, 1, 1, 'Rolex 24 at Daytona', TO_DATE('27-01-2024', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(2, 2, 1, 'Mobil 1 Twelve Hours of Sebring', TO_DATE('16-03-2024', 'DD-MM-YYYY'), 12);
INSERT INTO Tournament VALUES(3, 3, 1, 'Acura Grand Prix of Long Beach', TO_DATE('20-04-2024', 'DD-MM-YYYY'), 1.7);
INSERT INTO Tournament VALUES(4, 4, 1, 'Motul Course de Monterey', TO_DATE('12-05-2024', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(5, 5, 1, 'Chevrolet Detroit Sports Car Classic', TO_DATE('01-06-2024', 'DD-MM-YYYY'), 1.7);
INSERT INTO Tournament VALUES(6, 6, 1, 'Sahlen s Six Hours of The Glen', TO_DATE('23-06-2024', 'DD-MM-YYYY'), 6);
INSERT INTO Tournament VALUES(7, 7, 1, 'Chevrolet Grand Prix', TO_DATE('14-07-2024', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(8, 8, 1, 'IMSA Sportscar Weekend', TO_DATE('04-08-2024', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(9, 9, 1, 'Michelin GT Challenge at VIR', TO_DATE('25-08-2024', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(10, 10, 1, 'Tirerack.com Battle on the Bricks', TO_DATE('22-09-2024', 'DD-MM-YYYY'), 6);
INSERT INTO Tournament VALUES(11, 11, 1, 'Motul Petit Le Mans', TO_DATE('12-10-2024', 'DD-MM-YYYY'), 10);


INSERT INTO Tournament VALUES(12, 1, 2, 'Rolex 24 at Daytona', TO_DATE('27-01-2023', 'DD-MM-YYYY'), 24);
INSERT INTO Tournament VALUES(13, 2, 2, 'Mobil 1 Twelve Hours of Sebring', TO_DATE('16-03-2023', 'DD-MM-YYYY'), 12);
INSERT INTO Tournament VALUES(14, 3, 2, 'Acura Grand Prix of Long Beach', TO_DATE('20-04-2023', 'DD-MM-YYYY'), 1.7);
INSERT INTO Tournament VALUES(15, 4, 2, 'Motul Course de Monterey', TO_DATE('12-05-2023', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(16, 5, 2, 'Chevrolet Detroit Sports Car Classic', TO_DATE('01-06-2023', 'DD-MM-YYYY'), 1.7);
INSERT INTO Tournament VALUES(17, 6, 2, 'Sahlen s Six Hours of The Glen', TO_DATE('23-06-2023', 'DD-MM-YYYY'), 6);
INSERT INTO Tournament VALUES(18, 7, 2, 'Chevrolet Grand Prix', TO_DATE('14-07-2023', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(19, 8, 2, 'IMSA Sportscar Weekend', TO_DATE('04-08-2023', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(20, 9, 2, 'Michelin GT Challenge at VIR', TO_DATE('25-08-2023', 'DD-MM-YYYY'), 2.7);
INSERT INTO Tournament VALUES(21, 10, 2, 'Tirerack.com Battle on the Bricks', TO_DATE('22-09-2023', 'DD-MM-YYYY'), 6);
INSERT INTO Tournament VALUES(22, 11, 2, 'Motul Petit Le Mans', TO_DATE('12-10-2023', 'DD-MM-YYYY'), 10);











--== Teams ==--
--Grand Touring Prototype (GTP)

INSERT INTO TEAMS VALUES(63, 'Lamborghini – Iron Lynx', 'Iron Lynx');
INSERT INTO TEAMS VALUES(7, 'Porsche Penske Motorsport', 'Porsche AG');
INSERT INTO TEAMS VALUES(1, 'Cadillac Racing', 'General Motors');



--Le Mans Prototype 2 (LMP2)

INSERT INTO TEAMS VALUES(04, 'CrowdStrike Racing by APR', 'CrowdStrike');
INSERT INTO TEAMS VALUES(2, 'United Autosports USA', 'United Autosports');
INSERT INTO TEAMS VALUES(8, 'Tower Motorsports', 'DD');




--GTD Pro
INSERT INTO TEAMS VALUES(27, 'Heart of Racing Team', 'Aston Martin');
INSERT INTO TEAMS VALUES(111, 'Paul Miller Racing', 'BMW AG');
INSERT INTO TEAMS VALUES(3, 'Corvette Racing by Pratt Miller Motorsports', 'General Motors');




--GTD
INSERT INTO TEAMS VALUES(23, 'Triarsi Competizione', 'Ferrari');
INSERT INTO TEAMS VALUES(21, 'Vasser Sullivan', 'Vasser Sullivan Racing');
INSERT INTO TEAMS VALUES(13, 'AWA', 'Chevrolet');











-- == Vehicles ==--

--GTP--
INSERT INTO VEHICLE VALUES(63, 'Lamborghini SC63', 'GTP');
INSERT INTO VEHICLE VALUES(67, 'Lamborghini SC63', 'GTP');

INSERT INTO VEHICLE VALUES(6, 'Porsche 963', 'GTP');
INSERT INTO VEHICLE VALUES(7, 'Porsche 963', 'GTP');

INSERT INTO VEHICLE VALUES(01, 'Cadillac V-Series.R', 'GTP');
INSERT INTO VEHICLE VALUES(02, 'Cadillac V-Series.R', 'GTP');




--LMP2--
INSERT INTO VEHICLE VALUES(04, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(05, 'Oreca 07', 'LMP2');

INSERT INTO VEHICLE VALUES(222, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(22, 'Oreca 07', 'LMP2');

INSERT INTO VEHICLE VALUES(8, 'Oreca 07', 'LMP2');
INSERT INTO VEHICLE VALUES(9, 'Oreca 07', 'LMP2');



--GTD Pro--
INSERT INTO VEHICLE VALUES(027, 'Aston Martin Vantage AMR GT3 Evo', 'GTD Pro');
INSERT INTO VEHICLE VALUES(23, 'Aston Martin Vantage AMR GT3 Evo', 'GTD Pro');

INSERT INTO VEHICLE VALUES(12, 'BMW M4 GT3', 'GTD Pro');
INSERT INTO VEHICLE VALUES(13, 'BMW M4 GT3', 'GTD Pro');

INSERT INTO VEHICLE VALUES(3, 'Chevrolet Corvette Z06 GT3.R', 'GTD Pro');
INSERT INTO VEHICLE VALUES(44, 'Chevrolet Corvette Z06 GT3.R', 'GTD Pro');


--GTD
INSERT INTO VEHICLE VALUES(021, 'Ferrari 296 GT3', 'GTD');
INSERT INTO VEHICLE VALUES(024, 'Ferrari 296 GT3', 'GTD');

INSERT INTO VEHICLE VALUES(15, 'Lexus RC F GT3', 'GTD');
INSERT INTO VEHICLE VALUES(89, 'Lexus RC F GT3', 'GTD');

INSERT INTO VEHICLE VALUES(31, 'Chevrolet Corvette Z06 GT3.R', 'GTD');
INSERT INTO VEHICLE VALUES(17, 'Chevrolet Corvette Z06 GT3.R', 'GTD');













--== DRIVERS ==--

--GTP
INSERT INTO Driver  VALUES(56, 63, 'Matteo Cairoli', 28, 'Italian');
INSERT INTO Driver  VALUES(6, 63, 'Andrea Caldarelli', 34, 'Italian');

INSERT INTO Driver  VALUES(912, 7, 'Mathieu Jaminet', 30, 'French');
INSERT INTO Driver  VALUES(66, 7, 'Dane Cameron', 36, 'American');

INSERT INTO Driver  VALUES(29, 1, 'Sébastien Bourdais', 45, 'French');
INSERT INTO Driver  VALUES(01, 1, 'Renger van der Zande', 38, 'Dutch');


--LMP2
INSERT INTO Driver  VALUES(51, 04, 'Colin Braun', 36, 'American');
INSERT INTO Driver  VALUES(27, 04, 'George Kurtz', 54, 'American');

INSERT INTO Driver  VALUES(21, 2, 'Ben Hanley', 39, 'British');
INSERT INTO Driver  VALUES(94, 2, 'Paul di Resta', 38, 'Scotish');

INSERT INTO Driver  VALUES(8, 8, 'John Farano', 64, 'Canadian');
INSERT INTO Driver  VALUES(28, 8, 'Charlie Eastwood', 29, 'Irish');



--GTD PRO
INSERT INTO Driver  VALUES(23, 27, 'Mario Farnbacher', 32, 'German');
INSERT INTO Driver  VALUES(233, 27, 'Ross Gunn', 27, 'British');

INSERT INTO Driver  VALUES(102, 111, 'Bryan Sellers', 42, 'American');
INSERT INTO Driver  VALUES(103, 111, 'Madison Snow', 28, 'American');

INSERT INTO Driver  VALUES(53, 3, 'Antonio García', 44, 'Spanish');
INSERT INTO Driver  VALUES(33, 3, 'Nicky Catsburg', 32, 'Dutch');


--GTD
INSERT INTO Driver  VALUES(83, 23, 'Alessio Rovera', 29, 'Italian');
INSERT INTO Driver  VALUES(255, 23, 'Riccardo Agostini', 30, 'Italian');

INSERT INTO Driver  VALUES(12, 21, 'Frankie Montecalvo', 33, 'American');
INSERT INTO Driver  VALUES(122, 21, 'Parker Thompson', 26, 'Canadian');

INSERT INTO Driver  VALUES(13, 13, 'Orey Fidani', 38, 'Canadian');
INSERT INTO Driver  VALUES(32, 13, 'Nicolás Varrone', 24, 'Argentine');



--








--==vehicleDriver==--


-- GTP Class
INSERT INTO VehicleDriver VALUES (56063, 56, 63);
INSERT INTO VehicleDriver VALUES (5067, 6, 67);
INSERT INTO VehicleDriver VALUES (912006, 912, 6);
INSERT INTO VehicleDriver VALUES (66007, 66, 7);
INSERT INTO VehicleDriver VALUES (29001, 29, 1);
INSERT INTO VehicleDriver VALUES (1002, 1, 2);

-- LMP2 Class
INSERT INTO VehicleDriver VALUES (51004, 51, 4);
INSERT INTO VehicleDriver VALUES (27005, 27, 5);
INSERT INTO VehicleDriver VALUES (212222, 21, 222);
INSERT INTO VehicleDriver VALUES (94022, 94, 22);
INSERT INTO VehicleDriver VALUES (8008, 8, 8);
INSERT INTO VehicleDriver VALUES (28009, 28, 9);

-- GTDpro Class
INSERT INTO VehicleDriver VALUES (23027, 23, 27);
INSERT INTO VehicleDriver VALUES (233023, 233, 23);
INSERT INTO VehicleDriver VALUES (102012, 102, 12);
INSERT INTO VehicleDriver VALUES (103013, 103, 13);
INSERT INTO VehicleDriver VALUES (53003, 53, 3);
INSERT INTO VehicleDriver VALUES (33044, 33, 44);

-- GTD Class
INSERT INTO VehicleDriver VALUES (83021, 83, 21);
INSERT INTO VehicleDriver VALUES (255024, 255, 24);
INSERT INTO VehicleDriver VALUES (12015, 12, 15);
INSERT INTO VehicleDriver VALUES (122089, 122, 89);
INSERT INTO VehicleDriver VALUES (13031, 13, 31);
INSERT INTO VehicleDriver VALUES (32017, 32, 17);














