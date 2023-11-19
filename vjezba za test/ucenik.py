#Koristeći objektno usmjeren pristup napiši program koji učitava ime i prezime učenika pa ispisuje broj dana koji je tom učeniku ostao do kraja nastavne godine. Datum kraja nastavne godine potrebno je proslijediti metodi za izračun broja dana.

from datetime import date
class Vrijeme():
    def __init__(self,ucenik):
        self.ucenik=ucenik
    def preostalo(self,kraj,danas):
        return(kraj-danas).days
    
datum_kraja = date(2024, 6, 21)
danasnji_datum = date.today()
ime=input("Unesi ime učenika: ")
broj=Vrijeme(ime)
#print(broj.ucenik, "do kraja nastavne godine ima još", broj.preostalo(datum_kraja,danasnji_datum),"dana.")

class Maturant(Vrijeme):
    def __init__(self, ucenik):
        super().__init__(ucenik)
    def preostalo(self,kraj,danas):
        return(kraj-danas).days
datum_kraja_matur = date(2024, 5, 26)
broj2=Maturant(ime)
print(broj.ucenik, "do kraja nastavne godine ima još", broj2.preostalo(datum_kraja_matur,danasnji_datum),"dana.")