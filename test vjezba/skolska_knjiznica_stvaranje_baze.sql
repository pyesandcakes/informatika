CREATE TABLE "Djelo" (
	"ID_djela" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Naziv" TEXT NOT NULL,
    "Ime_autora" TEXT NOT NULL,
    "Prezime_autora" TEXT NOT NULL,
    "Godina_izdanja" TEXT DEFAULT NULL,
    "Izdavac" TEXT DEFAULT NULL
);

CREATE TABLE "Ucenik" (
	"ID_ucenika" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Ime" TEXT NOT NULL,
    "Prezime" TEXT NOT NULL,
    "Datum_rodenja" date DEFAULT NULL
);

CREATE TABLE "Posudba" (
	"ID_posudbe" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Datum_posudbe" date NOT NULL,
    "ID_ucenika" INTEGER NOT NULL,
    "ID_djela" INTEGER NOT NULL,
    "Datum_povratka" date DEFAULT NULL,
    FOREIGN KEY ("ID_ucenika") REFERENCES "Ucenik" ("ID_ucenika"),
    FOREIGN KEY ("ID_djela") REFERENCES "Djelo" ("ID_djela")
);

CREATE TABLE "Nastavnik" (
	"ID_nastavnika" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Ime" TEXT NOT NULL,
    "Prezime" TEXT NOT NULL
);

CREATE TABLE "Skolska_godina" (
	"ID_godine" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Godina" TEXT NOT NULL
);

CREATE TABLE "Razredno_odjeljenje" (
	"ID_razreda" INTEGER PRIMARY KEY AUTOINCREMENT,
    "Odjeljenje" TEXT NOT NULL,
    "ID_razrednika" INTEGER NOT NULL,
    "ID_godine" INTEGER NOT NULL,
    FOREIGN KEY ("ID_razrednika") REFERENCES "Nastavnik" ("ID_nastavnika"),
    FOREIGN KEY ("ID_godine") REFERENCES "Skolska_godina" ("ID_godine")
);

CREATE TABLE "Ucenik_razred" (
	"ID_ucenika" INTEGER,
    "ID_razreda" INTEGER,
	PRIMARY KEY ("ID_ucenika", "ID_razreda"),
    FOREIGN KEY ("ID_ucenika") REFERENCES "Ucenik" ("ID_ucenika"),
    FOREIGN KEY ("ID_razreda") REFERENCES "Razredno_odjeljenje" ("ID_razreda")
);



