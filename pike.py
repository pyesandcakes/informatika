#ucitava koorditane 3 tocaka pa ispisuje jel trokut definiran njima jednakostranica, raznostranicak ili jednakokracan
class Tocka:
    def __init__(self,x,y):
        self.X=x
        self.Y=y
    def udaljenost(self,t2):
        return(((self.X-t2.X)**2+(self.Y-t2.Y)**2)**0.5)
class Trokut:
    def __init__(self,x,y,z):
        self.X=x
        self.Y=y
        self.Z=z
        self.a=self.X.udaljenost(self.Y)
        self.b=self.Y.udaljenost(self.Z)
        self.c=self.Z.udaljenost(self.X)
    def usporedivanje(self):
        if (self.a==self.b==self.c):
            return ("Jednakostranican")
        elif (self.a!=self.b!=self.c):
            return  ("Raznostranican")
        else:
            return  ("Jednakokracan")

x1=int(5)
y1=int(7)
x2=int(5)
y2=int(2)
x3=int(4)
y3=int(12)
t1=Tocka(x1,y1)
t2=Tocka(x2,y2)
t3=Tocka(x3,y3)
t=Trokut(t1,t2,t3)
print(t.usporedivanje())