class Osoba:
    def __init__(self, ime, iznos):
        self.ime = ime
        self.iznos = iznos

    def uplata(self, placa):
        self.iznos += placa
        return round(self.iznos, 2)

class Djelatnik(Osoba):
    def __init__(self, ime, iznos, placa, postotak):
        super().__init__(ime, iznos)
        self.postotak = postotak
        self.placa = placa

    def uplata_place(self):
        self.placa += self.placa * (self.postotak / 100)
        return round(self.placa, 2)

ime = input("Unesi ime i prezime: ")
iznos = float(input("Unesi iznos: "))
placa = float(input("Unesi placa: "))

osoba = Osoba(ime, iznos)
#print("Novo stanje na računu korisnika", osoba.ime + ":", str(osoba.uplata(placa)) + "€")

postotak = float(input("Unesi postotak: "))
djelatnik = Djelatnik(ime, iznos, placa, postotak)
print("Novo stanje na računu korisnika", djelatnik.ime + ":", str(osoba.uplata(djelatnik.uplata_place())) + "€")
        
    
    