class Kartica():
    def __init__(self,banka,stanje):
        self.stanje=stanje
        self.vlasnik=banka
    def isplata(self,trazeni):
        if self.stanje>=trazeni:
            self.stanje-=trazeni
            return(True)
        else:
            return(False)
class Bankomat():
    def __init__(self,novci,banka):
        self.novci=novci
        self.banka=banka
    def isplata(self,iznos,kartica):
        if self.novci>=iznos:
            vrijednost=kartica.isplata(iznos)
            if vrijednost==True:
                self.novci-=iznos
                return("BACAJ PARE")
            else:
                return("Il mi nemamo para, il ti nemas.")
class OTP(Bankomat):
    def __init__(self, novci, banka="OTP"):
        super().__init__(novci, banka)
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            provizija=0.025*iznos
            if provizija<3.32:
                provizija=3.32
            iznos+=provizija
        return super().isplata(iznos,kartica)
class Zaba(Bankomat):
    def __init__(self, novci, banka="Zaba"):
        super().__init__(novci, banka)
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            provizija=0.25*iznos
            if provizija<3.50:
                provizija=3.50
            iznos+=provizija
        return super().isplata(iznos,kartica)
class Addiko(Bankomat):
    def __init__(self, novci, banka="Addiko"):
        super().__init__(novci, banka)
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            provizija=3.52*iznos
            if provizija<1:
                provizija=1
            iznos+=provizija
        return super().isplata(iznos,kartica)
class Euronet(Bankomat):
    def __init__(self, novci, banka="Euronet"):
        super().__init__(novci, banka)
    def isplata(self, iznos, kartica):
        if kartica.vlasnik=="Revolut":
            provizija=0
        else:
            provizija=8*iznos
            if provizija<20:
                provizija=20
        iznos+=provizija
        return super().isplata(iznos,kartica)
visa=Kartica("Zaba",55000)
bankomat=Euronet(20000)
print(bankomat.isplata(5000,visa))
print("Stanje kartice je: ",visa.stanje)
print("Stanje bankomata je: ",bankomat.novci)
print("Banka kartice je: ",visa.vlasnik)
print("Vlasnik bankomata je: ",bankomat.banka)
print("Preostalo novaca u bankomatu je: ",bankomat.novci)
