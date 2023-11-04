#Koristeći objektno usmjeren pristup napiši program koji učitava duljine stranica četverokuta 
#pa ispisuje njegov opseg.

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