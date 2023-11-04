#Koristeći objektno usmjeren pristup napiši program koji učitava naziv i nabavnu cijenu prehrambenog proizvoda pa ispisuje Prodajna cijena proizvoda 'Grašak smrznuti' iznosi 1.59€.
# (PDV iznosi 13%).

class Proizvod:
    def __init__(self,naziv,cijena):
        self.cijena=cijena 
        self.naziv=naziv
    def prodajna_cijena(self):
        return (cijena*(1+0.13))
naziv=input("Unesi naziv proizvoda: ")
cijena=float(input("Unesi cijenu proizvoda: "))
proizvod=Proizvod(naziv,cijena)
print("Prodajna cijena proizvoda", proizvod.naziv, "iznosi", round(proizvod.prodajna_cijena(),2),"€")

class Manjipdv(Proizvod):
    def __init__(self,naziv,cijena):
        super().__init__(naziv,cijena)
    def prodajna_cijena(self):
        return (cijena*(1+0.05))
proizvod2=Manjipdv(naziv,cijena)
print("Prodajna cijena proizvoda", proizvod2.naziv, "iznosi", round(proizvod2.prodajna_cijena(),2),"€")
        
