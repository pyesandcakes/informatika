#Koristeći nasljeđivanje kreirane klase "Cetverokut" napiši program koji učitava duljine stranica pravokutnika pa ispisuje njegov opseg i površinu.

class Cetverokut:
    def __init__(self,a,b,c,d):
        self.A = a
        self.B = b
        self.C = c
        self.D = d
    def opseg(self):
        return self.A + self.B + self.C + self.D
a = int(input("Unesi duljinu stranice a: "))
b = int(input("Unesi duljinu stranice b: "))
c = int(input("Unesi duljinu stranice c: "))
d = int(input("Unesi duljinu stranice d: "))
cetverokut = Cetverokut(a,b,c,d)
print("Opseg četverokuta je: ",cetverokut.opseg())


class Pravokutnik(Cetverokut):
    def __init__(self,a,b,c,d):
        super().__init__(a,b,c,d)
    def povrsina(self):
        return self.A * self.B
pravokutnik = Pravokutnik(a,b,c,d)
print("Površina pravokutnika je: ",pravokutnik.povrsina())