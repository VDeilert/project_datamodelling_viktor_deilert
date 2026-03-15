CREATE TABLE Program (
    program_id SERIAL PRIMARY KEY,
    namn VARCHAR(100) NOT NULL
);

CREATE TABLE Utbildningsledare (
    ul_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Kurs (
    kurs_id SERIAL PRIMARY KEY,
    kurskod VARCHAR(10) UNIQUE NOT NULL,
    namn VARCHAR(100) NOT NULL,
    poang INTEGER NOT NULL,
    beskrivning TEXT
);

CREATE TABLE Foretag (
    foretag_id SERIAL PRIMARY KEY,
    namn VARCHAR(100) NOT NULL,
    organisationsnummer VARCHAR(20) UNIQUE NOT NULL,
    har_f_skatt BOOLEAN DEFAULT TRUE,
    adress VARCHAR(255)
);

CREATE TABLE Klass (
    klass_id SERIAL PRIMARY KEY,
    namn VARCHAR(50) NOT NULL,
    program_id INTEGER REFERENCES Program(program_id),
    utbildningsledare_id INTEGER REFERENCES Utbildningsledare(ul_id)
);

CREATE TABLE Student (
    student_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    klass_id INTEGER REFERENCES Klass(klass_id)
);

CREATE TABLE Utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Student_Kansligt (
    student_id INTEGER PRIMARY KEY REFERENCES Student(student_id) ON DELETE CASCADE,
    personnummer VARCHAR(13) UNIQUE NOT NULL
);

CREATE TABLE UL_Kansligt (
    ul_id INTEGER PRIMARY KEY REFERENCES Utbildningsledare(ul_id) ON DELETE CASCADE,
    personnummer VARCHAR(13) UNIQUE NOT NULL
);


CREATE TABLE Konsult (
    utbildare_id INTEGER PRIMARY KEY REFERENCES Utbildare(utbildare_id) ON DELETE CASCADE,
    foretag_id INTEGER REFERENCES Foretag(foretag_id),
    timarvode_sek DECIMAL(10, 2)
);

CREATE TABLE Klass_Kurs (
    klass_id INTEGER REFERENCES Klass(klass_id),
    kurs_id INTEGER REFERENCES Kurs(kurs_id),
    utbildare_id INTEGER REFERENCES Utbildare(utbildare_id),
    PRIMARY KEY (klass_id, kurs_id) 
);