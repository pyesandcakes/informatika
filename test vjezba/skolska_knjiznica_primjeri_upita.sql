-- dohvaćanje podataka
/*
 1. ispiši imena i prezimena svih nastavnika
*/
SELECT "Ime", "Prezime" FROM "Nastavnik";

/*
 2. ispiši primarne ključeve svih nastavnika čije je ime
	jednako imenu tvog razrednika
*/
SELECT "ID_nastavnika" FROM "Nastavnik"
WHERE "Ime" = "Branka";

/*
 3. ispiši primarni ključ za trenutačnu školsku godinu
*/


/*
 4. ispiši sve podatke o učenicima kojima ime
	počinje slovom 'M'
*/
SELECT * FROM "Ucenik"
WHERE "Ime" LIKE "M%";

/*
 5. ispiši sve podatke o nastavnicima kojima prezime
	počinje slovom 'B'
*/


/*
 6. ispiši imena i prezimena svih učenika kojima ime
	završava slovom 'a', poredane po prezimenu silazno
*/
SELECT "Ime", "Prezime" FROM "Ucenik"
WHERE "Ime" LIKE "%a"
ORDER BY "Prezime" DESC;

/*
 7. ispiši imena, prezimena i datume rođenja
	svih učenika rođenih u lipnju
*/
SELECT "Ime", "Prezime", "Datum_rodenja"
FROM "Ucenik"
WHERE "Datum_rodenja" LIKE "%-06-%";

/*
 8. ispiši oznake svih razreda u trenutačnoj školskoj godini,
	poredane prema oznakama razreda silazno
*/


/*
 9. ispiši sve podatke o nastavnicima koji su
	u nekom trenutku bili razrednici
*/
SELECT *
FROM "Nastavnik"
WHERE "ID_nastavnika" IN (SELECT "ID_razrednika" FROM "Razredno_odjeljenje");


/*
 10. ispiši sve podatke o nastavnicima koji nikada
	 nisu bili razrednici, poredano prema prezimenu uzlazno
*/
SELECT *
FROM "Nastavnik"
WHERE "ID_nastavnika" NOT IN (SELECT "ID_razrednika" FROM "Razredno_odjeljenje")
ORDER BY "Prezime";

/*
 11. ispiši nazive svih djela koje je posudila Marija Marić
*/
SELECT "Naziv"
FROM "Djelo"
JOIN "Posudba" USING ("ID_djela")
WHERE "ID_ucenika"=(SELECT "ID_ucenika" FROM "Ucenik" WHERE "Ime"="Marija" AND "Prezime"="Marić");

/*
 12. ispiši oznake razreda i školske godine za sve razrede
	 kojima je Nikola Petrić bio razrednik
*/
SELECT "Odjeljenje","Godina"
FROM "Razredno_odjeljenje"
JOIN "Skolska_godina" USING ("ID_godine")
WHERE "ID_razrednika"=(SELECT "ID_nastavnika" FROM "Nastavnik" WHERE "Ime"="Nikola" AND "Prezime"="Petrić");

/*
 13. za sve učenike u trenutačnoj školskoj godini ispiši
	 njihovo ime, prezime i razred koji pohađaju,
	 poredano prema prezimenu uzlazno
*/
SELECT "Ime","Prezime","Odjeljenje"
FROM "Ucenik"
JOIN "Ucenik_razred" USING ("ID_ucenika")
JOIN "Razredno_odjeljenje" USING ("ID_razreda")
WHERE "Odjeljenje"="4.C" AND "ID_godine"=(SELECT "ID_godine" FROM "Skolska_godina" WHERE "Godina"="2023./2024.");

/*
 14. ispiši imena i prezimena učenika koji u trenutačnoj
	 školskoj godini pohađaju 4.C razred
*/
SELECT "Ime","Prezime"
FROM "Ucenik"
JOIN "Ucenik_razred" USING ("ID_ucenika")
JOIN "Razredno_odjeljenje" USING ("ID_razreda")
WHERE "Odjeljenje"="4.C" AND "ID_godine"=(SELECT "ID_godine" FROM "Skolska_godina" WHERE "Godina"="2023./2024.");

/*
 15. ispiši imena, prezimena i datume rođenja svih učenika
	 koji su u nekoj školskoj godini pohađali 4.A razred,
	 kao i oznake tih školskih godina
*/


/*
 16. ispiši imena i prezimena te oznaku razreda svih učenika
	 koji su 2021./2022. pohađali 2. razred,
	 poredano po datumu rođenja uzlazno
*/
SELECT "Ime","Prezime","Odjeljenje"
FROM "Ucenik"
JOIN "Ucenik_razred" USING ("ID_ucenika")
JOIN "Razredno_odjeljenje" USING ("ID_razreda")
WHERE "Odjeljenje" LIKE "2.%" AND "ID_godine"=(SELECT "ID_godine" FROM "Skolska_godina" WHERE "Godina"="2021./2022.")
ORDER BY "Datum_rodenja";

/*
 17. za svaku knjigu ispiši naziv te koliko je ukupno
	 puta bila posuđivana
*/
SELECT "Naziv", count("ID_djela") AS "Broj posudbi"
FROM "Djelo"
JOIN "Posudba" USING ("ID_djela")
GROUP BY "Naziv";

/*
 18. za svakog učenika ispiši ime i prezime te
	 koliko je knjiga ukupno posudio
*/
SELECT "Ime","Prezime", count("ID_ucenika") AS "Broj posudbi"
FROM "Ucenik"
JOIN "Posudba" USING ("ID_ucenika")
GROUP BY "Ime","Prezime";

/*
 19. za svakog učenika ispiši ime i prezime te
	 koliko knjiga još nije vratio
*/
SELECT "Ime","Prezime", count("ID_ucenika") AS "Broj posudbi"
FROM "Ucenik"
JOIN "Posudba" USING ("ID_ucenika")
WHERE "Datum_povratka" IS NULL
GROUP BY "Ime","Prezime";

/*
 20. ispiši imena i prezimena nastavnika te ukupni broj razreda
	 kojima su u nekoj školskoj godini bili razrednici,
	 poredano prema prezimenu silazno
*/


/*
 21. za svaki razred u trenutačnoj školskoj godini ispiši
	 oznaku razreda te broj učenika po razredu
*/


/*
 22. ispiši imena i prezimena, oznaku razreda te školsku godinu
	 za sve učenike kojima je Branka Brankić bila razrednica
*/


/*
 23. ispiši ime i prezime nastavnika koji je bio razrednik
	 najviše puta
*/


/*
 24. ispiši imena i prezimena svih učenika koji
	 idu u razred s Damirom Makom
*/


-- upisivanje podataka
/*
 25. dodaj podatke o sebi u tablicu "Ucenik"
*/
INSERT INTO "Ucenik" ("Ime", "Prezime", "Datum_rodenja")
VALUES ("Lucija", "Medak", "2000-01-01");

/*
 26. dodaj ime i prezime svog razrednika u tablicu "Nastavnik"
*/
INSERT INTO "Nastavnik" ("Ime", "Prezime")
VALUES ("Mila", "Sila");

/*
 27. dodaj podatke o svom razredu u tablicu "Razredno_odjeljenje"
*/
INSERT INTO "Razredno_odjeljenje" (
	"Odjeljenje",
	"ID_razrednika",
	"ID_godine"
)
VALUES (
	"4.L",
	(SELECT "ID_nastavnika" FROM "Nastavnik"
	 WHERE "Ime" = "Mila"
	 AND "Prezime" = "Sila"),
	(SELECT "ID_godine" FROM "Skolska_godina"
	 WHERE "Godina" = "2020./2021.")
);

/*
 28. dodaj sebe u razred koji pohađaš ove školske godine
*/
INSERT INTO "Ucenik_razred" (
    "ID_ucenika",
    "ID_razreda"
)
VALUES (
    (SELECT "ID_ucenika" FROM "Ucenik"
	 WHERE "Ime" = "Lucija" AND "Prezime" = "Medak"),
    (SELECT "ID_razreda" FROM "Razredno_odjeljenje"
	 WHERE "Odjeljenje" = "4.L")
)

-- ažuriranje podataka
/*
 29. Mate Matić danas je vratio djelo "Preobražaj"
	 u knjižnicu
*/
UPDATE "Posudba" 
SET "Datum_povratka"= CURRENT_DATE 
WHERE "Id_ucenika" = (SELECT "Id_ucenika" FROM "Ucenik" WHERE "IME"="Mate" AND "PREZIME"="Matić")
AND "ID_djelo" = (SELECT "ID_djelo" FROM "Djelo" WHERE "Naziv_djela"="Preobražaj");

-- brisanje podataka
/*
 30. Petar Nikolić dao je otkaz
*/
DELETE FROM "Nastavnik" WHERE "Ime"="Petar" and "Prezime"="Nikolić"
