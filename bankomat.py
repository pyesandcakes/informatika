class Kartica():
    def __init__(self,stanje,banka):
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
        if kartica.vlasnik!=self.banka:
            provizija=0.025*iznos
            if provizija<3.32:
                provizija=3.32
            iznos+=provizija
        return super().isplata(iznos,kartica)


visa=Kartica(5000,"ZABA")
bankomat=OTP(20000)
print(bankomat.isplata(5000,visa))