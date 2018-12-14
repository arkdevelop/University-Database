/* INSERT INTO University */
INSERT INTO University VALUES ('TORONTO', 400, 'TORONTO', 'ON', 'https://www.utoronto.ca');
INSERT INTO University VALUES ('TRENT', 500, 'PETERBOROUGH', 'ON', 'https://www.trentu.ca/');
INSERT INTO University VALUES ('SHERBROOKE', 600, 'SHERBROOKE', 'QC', 'https://www.usherbrooke.ca/');
INSERT INTO University VALUES ('WINDSOR', 200, 'WINDSOR', 'ON', 'https://www.uwindsor.ca/');
INSERT INTO University VALUES ('GUELPH', 100, 'GUELPH', 'ON', 'https://www.uoguelph.ca/');
INSERT INTO University VALUES ('BROCK', 300, 'St. Catherines', 'ON', 'https://www.brocku.ca/');

/* INSERT INTO Degree */
INSERT INTO Degree VALUES ('B.Sc.', 'UG', 1);
INSERT INTO Degree VALUES ('M.Eng', 'PG', 2);
INSERT INTO Degree VALUES ('MAC', 'PG', 3);
INSERT INTO Degree VALUES ('MSW', 'PG', 4);
INSERT INTO Degree VALUES ('BAC', 'UG', 5);

/* INSERT INTO Country */
INSERT INTO Country VALUES ('INDIA', 91);
INSERT INTO Country VALUES ('CHINA', 86);
INSERT INTO Country VALUES ('USA', 1);
INSERT INTO Country VALUES ('FRANCE', 33);

/* INSERT INTO Agent */
INSERT INTO Agent VALUES ('MAHIA', 'JAIN', 1, 911234567890, 'jain@gmail.com', 8.00, 'DELHI', 91, 100);
INSERT INTO Agent VALUES ('SUKH', 'VIN', 2, 911234567891, 'vin@gmail.com', 5.00, 'MUMBAI', 91, 100);
INSERT INTO Agent VALUES ('JIN', 'LU', 3, 861234567892, 'jin_lu@gmail.com', 7.00, 'XIAN', 86, 200);
INSERT INTO Agent VALUES ('HOANG', 'CHEN', 4, 861234567893, 'hoangc@gmail.com', 8.00, 'SHANGHAI', 86, 100);
INSERT INTO Agent VALUES ('HUN', 'HAO', 14, 861234567894, 'hun.hao@gmail.com', 9.00, 'BEIJING', 86, 200);
INSERT INTO Agent VALUES ('JIM', 'SPIDER', 8, 12345678951, 'jspider@gmail.com', 7.00, 'DETROIT', 1, 400);
INSERT INTO Agent VALUES ('ASHA', 'CHUG', 11, 911345678962, 'chuga@gmail.com', 9.00, 'DELHI', 91, 400);
INSERT INTO Agent VALUES ('VANSH', 'SUD', 6, 913456789721, 'vanshs@gmail.com', 6.00, 'DELHI', 91, 300);
INSERT INTO Agent VALUES ('RITU', 'TRIVEDI', 40, 911256789843, 'rituTrivedi@gmail.com', 9.00, 'VARANASI', 91, 100);
INSERT INTO Agent VALUES ('MELISSA', 'MENSAH', 20, 12356789914, 'mmensah@gmail.com', 9.00, 'DALLAS', 1, 600);
INSERT INTO Agent VALUES ('ELON', 'MACRON', 5, 339876543210, 'elonm@gmail.com', 5.00, 'PARIS', 33, 400);

/* INSERT INTO Degree_Offered */
INSERT INTO Degree_Offered VALUES (100, 2);
INSERT INTO Degree_Offered VALUES (100, 3);
INSERT INTO Degree_Offered VALUES (100, 4);
INSERT INTO Degree_Offered VALUES (200, 1);
INSERT INTO Degree_Offered VALUES (200, 2);
INSERT INTO Degree_Offered VALUES (200, 3);
INSERT INTO Degree_Offered VALUES (200, 4);
INSERT INTO Degree_Offered VALUES (200, 5);
INSERT INTO Degree_Offered VALUES (300, 3);
INSERT INTO Degree_Offered VALUES (400, 2);
INSERT INTO Degree_Offered VALUES (400, 3);
INSERT INTO Degree_Offered VALUES (400, 4);
INSERT INTO Degree_Offered VALUES (400, 5);
INSERT INTO Degree_Offered VALUES (500, 3);
INSERT INTO Degree_Offered VALUES (500, 4);
INSERT INTO Degree_Offered VALUES (600, 2);
INSERT INTO Degree_Offered VALUES (600, 4);
INSERT INTO Degree_Offered VALUES (600, 5);

/* INSERT INTO Recruits_From */
INSERT INTO Recruits_From VALUES (100, 91, 430);
INSERT INTO Recruits_From VALUES (100, 86, 980);
INSERT INTO Recruits_From VALUES (100, 1, 78);
INSERT INTO Recruits_From VALUES (200, 91, 1000);
INSERT INTO Recruits_From VALUES (200, 86, 3000);
INSERT INTO Recruits_From VALUES (200, 33, 690);
INSERT INTO Recruits_From VALUES (300, 91, 100);
INSERT INTO Recruits_From VALUES (300, 86, 150);
INSERT INTO Recruits_From VALUES (300, 1, 150);
INSERT INTO Recruits_From VALUES (300, 33, 40);
INSERT INTO Recruits_From VALUES (400, 91, 1200);
INSERT INTO Recruits_From VALUES (400, 86, 1400);
INSERT INTO Recruits_From VALUES (400, 1, 1300);
INSERT INTO Recruits_From VALUES (400, 33, 900);
INSERT INTO Recruits_From VALUES (500, 91, 80);
INSERT INTO Recruits_From VALUES (500, 86, 90);
INSERT INTO Recruits_From VALUES (600, 33, 900);
INSERT INTO Recruits_From VALUES (600, 1, 100);
