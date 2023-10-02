class Pravac():
    def __init__(self,A,B,C):
        self.A=A
        self.B=B
        self.C=C
    def paralelan(self,p2):
        if ((self.B==0)&(p2.B==0)):
            return("Paralelni")
        elif((self.A/self.B)==(p2.A/p2.B)):
            return("Paralelni")
        else:
            return("Nije paralelan")
        
p1=Pravac(5,4,3)
p2=Pravac(5,3,3)
print(p1.paralelan(p2))
            
    
