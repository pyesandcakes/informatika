class Prostor:
    def __init__(self,povrsina,kvart,rezija):
        self.povrsina = povrsina
        self.kvart = kvart
        self.rezija = rezija

    def cijena(self, dani):
        return round(((self.rezija + (9.5 * self.povrsina)) / 30) * dani, 2)

class PoslovniProstor(Prostor):
    def __init__(self,povrsina,kvart,rezija,naknada,promjena):
        super().__init__(povrsina, kvart, rezija)
        self.naknada = naknada
        self.promjena = promjena

    def cijena(self, mjeseci):
        return round((self.rezija + (9.5 * self.povrsina) + (self.promjena + self.naknada)) * mjeseci, 2)

povrsina = 120
kvart = ("Centar")
rezija = 300
naknada = 50
promjena = 100
mjeseci = 6

prostor = Prostor(povrsina, kvart, rezija)
stambeni_prostor = PoslovniProstor(povrsina, kvart, rezija, naknada, promjena)

cijena = prostor.cijena(mjeseci)
print("Prostor površine",povrsina,"kvadrata u",kvart,"iznajmljuje se po cijeni od",cijena,"€.")
