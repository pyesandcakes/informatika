import random
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
                return("Procesiranje u tijeku")
            else:
                return("Il mi nemamo para, il ti nemas.")
class OTP(Bankomat):
    def __init__(self, novci, banka="OTP",provizija=0.025):
        super().__init__(novci, banka)
        self.provizija=provizija
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            if self.provizija*iznos<3.32:
                self.provizija=3.32
            else:
                iznos+=self.provizija
        return super().isplata(iznos,kartica)
class Zaba(Bankomat):
    def __init__(self, novci, banka="Zaba",provizija=0.28):
        super().__init__(novci, banka)
        self.provizija=provizija
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            if self.provizija*iznos<1.25:
                self.provizija=1.25
            else:
                iznos+=self.provizija
        return super().isplata(iznos,kartica)
class Addiko(Bankomat):
    def __init__(self, novci, banka="Addiko",provizija=1.5):
        super().__init__(novci, banka)
        self.provizija=provizija
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!=self.banka and kartica.vlasnik!="Revolut":
            if self.provizija*iznos<3.75:
                self.provizija=3.75
            else:
                iznos+=self.provizija
        return super().isplata(iznos,kartica)
class Euronet(Bankomat):
    def __init__(self, novci, banka="Euronet",provizija=8):
        super().__init__(novci, banka)
        self.provizija=provizija
    def isplata(self, iznos, kartica):
        if kartica.vlasnik!="Revolut":
            if self.provizija*iznos<20:
                self.provizija=20
            else:
                iznos+=self.provizija
        return super().isplata(iznos,kartica)
stanje=random.randint(1000,10000)
iznos=random.randint(100,10000)
visa=Kartica("OTP",stanje)
bankomat=Zaba(20000)
if visa.vlasnik!=bankomat.banka:
    print("Provizija je: ",bankomat.provizija)
x=bankomat.isplata(iznos,visa)
print(x)
if x=="Il mi nemamo para, il ti nemas.":
    quit()
if (input("Želite li vidjeti podatke transakcije? (da/ne) ")=="da"):
    print("Stanje kartice je: ",round(visa.stanje,2))
    print("Stanje bankomata je: ",round(bankomat.novci,2))
    print("Banka kartice je: ",visa.vlasnik)
    print("Vlasnik bankomata je: ",bankomat.banka)
    print("Preostalo novaca u bankomatu je: ",round(bankomat.novci,2))
if x=="Procesiranje u tijeku":
    print("")
    print("Uspješno ste podigli: ",iznos,"eura.")

