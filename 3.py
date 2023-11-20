class Ucenik:
    def __init__(self, ime, prezime, opravdanih, neopravdanih):
        self.ime = ime
        self.prezime = prezime
        self.broj_opravdanih = opravdanih
        self.broj_neopravdanih = neopravdanih
    
    def ukupno_izostanaka(self):
        return self.broj_opravdanih + self.broj_neopravdanih

    def __repr__(self):
        return self.ime + " " + self.prezime

class Razred:
    def __init__(self):
        self.ucenici = []

    def dodaj_ucenika(self, ucenik):
        self.ucenici.append(ucenik)

    def najvise_izostanaka(self):
        broj_ucenika = len(self.ucenici) - 1
        najvise = self.ucenici[0].ukupno_izostanaka()
        pozicija = 0

        for i in range(broj_ucenika):
            if self.ucenici[i].ukupno_izostanaka() > najvise:
                najvise = self.ucenici[i].ukupno_izostanaka()
                pozicija = i

        return self.ucenici[pozicija]

razred = Razred()

for i in range(5):
    ime, prezime = input().split()
    broj_opravdanih = int(input())
    broj_neopravdanih = int(input())
    ucenik = Ucenik(ime, prezime, broj_opravdanih, broj_neopravdanih)
    razred.dodaj_ucenika(ucenik)

print("Najviše izostanaka u razredu ima %s." %razred.najvise_izostanaka())
