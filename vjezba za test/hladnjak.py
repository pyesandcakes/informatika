#Koristeći objektno usmjeren pristup napiši program koji učitava zapremninu hladnjaka pa ispisuje njegovu godišnju potrošnju struje (zapremnina * 0.7).

class Hladnjak():
    def __init__(self,zapremnina):
        self.zapremnina=zapremnina
    def potrosnja(self):
        return self.zapremnina*0.7
hladnjak=(int(input("Unesi zapremninu hladnjaka: ")))
hladn=Hladnjak(hladnjak)
#print("Hladnjak zapremnine", str(hladnjak.zapremnina) + "L","godišnje potroši",round(hladnjak.potrosnja(),2),"kWh")

class Zamrzivac(Hladnjak):
    def __init__(self, zapremnina,zapremnina_zamrzivaca):
        super().__init__(zapremnina)
        self.zapremnina_zamrzivaca=zapremnina_zamrzivaca
    def potrosnja(self):
        return (self.zapremnina*0.7)+(self.zapremnina_zamrzivaca*0.85)
    
hladizamr=Zamrzivac(hladnjak,int(input("Unesi zapremninu zamrzivača: ")))
print("Kombinirani hladnjak zapremnine", str(hladizamr.zapremnina+hladizamr.zapremnina_zamrzivaca) + "L","godišnje potroši",round(hladizamr.potrosnja(),2),"kWh")