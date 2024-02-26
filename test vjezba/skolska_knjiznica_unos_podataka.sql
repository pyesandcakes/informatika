INSERT INTO "Djelo"
	("Naziv", "Ime_autora", "Prezime_autora", "Godina_izdanja", "Izdavac")
VALUES
	("Božanstvena komedija", "Dante", "Alighieri", "1996.", "Algoritam"),
    ("Hamlet", "William", "Shakespeare", "2000.", "Algoritam");

INSERT INTO "Djelo"
	("Naziv", "Ime_autora", "Prezime_autora")
VALUES
	("Prokleta avlija", "Ivo", "Andrić"),
    ("Stranac", "Albert", "Camus");

INSERT INTO "Djelo"
	("Naziv", "Ime_autora", "Prezime_autora", "Godina_izdanja", "Izdavac")
VALUES
    ("Zločin i kazna", "Fjodor", "Dostojevski", "1988.", "Profil");

INSERT INTO "Djelo"
	("Naziv", "Ime_autora", "Prezime_autora")
VALUES
    ("Preobražaj", "Franz", "Kafka");
    
INSERT INTO "Ucenik"
	("Ime", "Prezime", "Datum_rodenja")
VALUES
	("Ana", "Anić", "2005-09-18"),
    ("Iva", "Ivić", "2005-10-18"),
    ("Pero", "Perić", "2005-11-18"),
    ("Ruža", "Ružić", "2005-12-18"),
    ("Marija", "Marić", "2005-06-18"),
    ("Luka", "Lukić", "2005-07-18"),
    ("Mate", "Matić", "2005-08-18"),
	("Ines", "Marković", "2006-01-18"),
	("Ivana", "Vekić", "2006-02-18"),
	("Iva", "Horvat", "2006-03-18"),
	("Matko", "Badjuk", "2006-04-18"),
	("Damir", "Mak", "2006-05-18");
    
INSERT INTO "Nastavnik"
	("Ime", "Prezime")
VALUES
    ("Anka", "Ankić"),
    ("Branka", "Brankić"),
	("Tonka", "Tomić"),
    ("Petar", "Nikolić"),
	("Marija", "Jurić"),
    ("Zdenka", "Zdenkić"),
	("Cvjetka", "Cvjetkić"),
    ("Nikola", "Petrić");

INSERT INTO "Skolska_godina"
	("Godina")
VALUES
    ("2020./2021."),
    ("2021./2022."),
	("2022./2023."),
    ("2023./2024.");

INSERT INTO "Posudba"
(
	"Datum_posudbe",
    "ID_ucenika",
    "ID_djela",
    "Datum_povratka"
)
VALUES
(
	"2020-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-09-27"
),
(
	"2020-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-09-23"
),
(
	"2020-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-10-02"
),
(
	"2020-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-10-04"
),
(
	"2020-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-09-23"
),
(
	"2020-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-09-28"
),
(
	"2020-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Božanstvena komedija"),
    "2020-09-28"
),
(
	"2021-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-09-27"
),
(
	"2021-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-09-23"
),
(
	"2021-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-10-02"
),
(
	"2021-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-10-04"
),
(
	"2021-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-09-23"
),
(
	"2021-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-09-28"
),
(
	"2021-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Hamlet"),
    "2021-09-28"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-09-27"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-09-23"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-10-02"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-10-04"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-09-23"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-09-28"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Prokleta avlija"),
    "2022-09-28"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-09-27"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-09-23"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-10-02"
),
(
	"2022-09-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-10-04"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-09-23"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-09-28"
),
(
	"2022-09-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Stranac"),
    "2022-09-28"
),
(
	"2023-12-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_djela" FROM "Djelo"
	WHERE "Naziv" = "Zločin i kazna"),
    "2024-01-27"
);

INSERT INTO "Posudba"
(
	"Datum_posudbe",
    "ID_ucenika",
    "ID_djela"
)
VALUES
(
	"2023-12-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Zločin i kazna")
);

INSERT INTO "Posudba"
(
	"Datum_posudbe",
    "ID_ucenika",
    "ID_djela",
    "Datum_povratka"
)
VALUES
(
	"2023-12-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Zločin i kazna"),
    "2024-01-29"
),
(
	"2023-12-12",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Zločin i kazna"),
    "2024-01-25"
),
(
	"2023-12-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Zločin i kazna"),
    "2024-01-27"
),
(
	"2024-02-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj"),
    "2024-02-26"
);

INSERT INTO "Posudba"
(
	"Datum_posudbe",
    "ID_ucenika",
    "ID_djela"
)
VALUES
(
	"2024-02-15",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
),
(
	"2024-02-26",
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_djela" FROM "Djelo"
		WHERE "Naziv" = "Preobražaj")
);

INSERT INTO "Razredno_odjeljenje"
(
	"Odjeljenje",
    "ID_razrednika",
    "ID_godine"
)
VALUES
(
	"1.A",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Anka" AND "Prezime" = "Ankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2020./2021.")
),
(
	"1.B",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Branka" AND "Prezime" = "Brankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2020./2021.")
),
(
	"1.C",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Jurić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2020./2021.")
),
(
	"1.D",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Nikola" AND "Prezime" = "Petrić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2020./2021.")
),
(
	"2.A",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Anka" AND "Prezime" = "Ankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2021./2022.")
),
(
	"2.B",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Branka" AND "Prezime" = "Brankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2021./2022.")
),
(
	"2.C",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Jurić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2021./2022.")
),
(
	"2.D",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Nikola" AND "Prezime" = "Petrić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2021./2022.")
),
(
	"3.A",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Anka" AND "Prezime" = "Ankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2022./2023.")
),
(
	"3.B",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Branka" AND "Prezime" = "Brankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2022./2023.")
),
(
	"3.C",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Jurić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2022./2023.")
),
(
	"3.D",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Nikola" AND "Prezime" = "Petrić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2022./2023.")
),
(
	"4.A",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Anka" AND "Prezime" = "Ankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2023./2024.")
),
(
	"4.B",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Branka" AND "Prezime" = "Brankić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2023./2024.")
),
(
	"4.C",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Jurić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2023./2024.")
),
(
	"4.D",
    (SELECT "ID_nastavnika" FROM "Nastavnik"
		WHERE "Ime" = "Nikola" AND "Prezime" = "Petrić"),
    (SELECT "ID_godine" FROM "Skolska_godina"
		WHERE "Godina" = "2023./2024.")
);

INSERT INTO "Ucenik_razred"
(
    "ID_ucenika",
    "ID_razreda"
)
VALUES
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "1.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "2.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "3.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ana" AND "Prezime" = "Anić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Ivić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Pero" AND "Prezime" = "Perić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.A")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ruža" AND "Prezime" = "Ružić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Marija" AND "Prezime" = "Marić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Luka" AND "Prezime" = "Lukić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.B")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Mate" AND "Prezime" = "Matić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ines" AND "Prezime" = "Marković"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Ivana" AND "Prezime" = "Vekić"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.C")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Iva" AND "Prezime" = "Horvat"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Matko" AND "Prezime" = "Badjuk"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.D")
),
(
    (SELECT "ID_ucenika" FROM "Ucenik"
		WHERE "Ime" = "Damir" AND "Prezime" = "Mak"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
		WHERE "Odjeljenje" = "4.D")
);