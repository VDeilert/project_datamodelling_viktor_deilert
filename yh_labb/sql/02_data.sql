INSERT INTO Program (namn) 
VALUES ('UX Design 2024'), 
       ('Java-utvecklare 2025'),
       ('Front-end Developer 2024');

INSERT INTO Utbildningsledare (fornamn, efternamn, email) 
VALUES ('Anna', 'Andersson', 'anna.a@yrkesco.se'), 
       ('Berit', 'Bengtsson', 'berit.b@yrkesco.se');

INSERT INTO UL_Kansligt (ul_id, personnummer) 
VALUES (1, '19800101-1234'), 
       (2, '19750512-5678');

INSERT INTO Klass (namn, program_id, utbildningsledare_id) 
VALUES ('UX24', 1, 1), 
       ('JAVA25', 2, 2);

INSERT INTO Student (fornamn, efternamn, email, klass_id) 
VALUES ('Viktor', 'Deilert', 'viktor.d@student.se', 1), 
       ('Erik', 'Eriksson', 'erik.e@student.se', 2),
       ('Maria', 'Svensson', 'maria.s@student.se', 1);

INSERT INTO Student_Kansligt (student_id, personnummer) 
VALUES (1, '19950820-1111'), 
       (2, '19981224-2222'),
       (3, '19920315-3333');

INSERT INTO Kurs (kurskod, namn, poang, beskrivning) 
VALUES ('DB101', 'Databasteknik', 25, 'Grunderna i SQL och datamodellering'),
       ('UX102', 'Användarcentrerad design', 30, 'Lär dig förstå användarbehov'),
       ('PROJ200', 'Examensarbete', 50, 'Slutprojektet för utbildningen');

INSERT INTO Foretag (namn, organisationsnummer, har_f_skatt, adress) 
VALUES ('Kodkonsult AB', '556677-8899', TRUE, 'Storgatan 1, Stockholm'),
       ('Designbyrån Syd', '554433-2211', TRUE, 'Lillatorget 5, Malmö');

INSERT INTO Utbildare (fornamn, efternamn, email) 
VALUES ('Marcus', 'Lärare', 'marcus.l@yrkesco.se'), 
       ('Sara', 'Konsultsson', 'sara.k@konsult.se');

INSERT INTO Konsult (utbildare_id, foretag_id, timarvode_sek) 
VALUES (2, 1, 950.00);

INSERT INTO Klass_Kurs (klass_id, kurs_id, utbildare_id) 
VALUES 
    (1, 1, 1),
    (2, 1, 1),
    (1, 2, 2);