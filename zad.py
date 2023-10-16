#Koristeći nasljeđivanje kreirane klase "Cetverokut" napiši program koji učitava duljine stranica pravokutnika pa ispisuje njegov opseg i površinu.


class Cetverokut():
    def __init__(self,x,y,z,q):
        self.X=x
        self.Y=y
        self.Q=q
        self.Z=z
    def opseg(self):
        return(self.X+self.Y+self.Z+self.Q)
    
class Pravokutnik(Cetverokut):
    def __init__(self, x, y):
        super().__init__(x, y, x, y)
    def povrsina(self):
        return(self.X*self.Y)

a,b=map(int,input().split())
stranice=Pravokutnik(a,b)
print("Opseg:",stranice.opseg())
print("Površina:",stranice.povrsina())        