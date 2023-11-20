#ucitava prirodni broj pa ispisuje prvo parne, a potom neparne znamenke tog broja

from collections import deque

class Red(deque):
    def __init__(self):
        super().__init__()
        

    def dodaj(self,objekt):
        self.append(objekt)

    def makni(self):
        return self.popleft()

    def prazan(self):
        return len(self) == 0

""" red=Red()
broj=input()
novi_broj=""
for i in broj:
    if int(i)%2==0:
        novi_broj+=i
    else:
        red.dodaj(i)
while red.prazan()!=True:
    novi_broj+=red.makni()
print(novi_broj) """
red=Red()
tekst=""

novi_tekst=""
while tekst!="zavrsi":
    tekst=input()
    if tekst=="ispis":
        while red.prazan()!=True:
            novi_tekst+=red.makni()+" "
        print(novi_tekst)
        novi_tekst=""
    else:
        samo=0
        sugl=0
        for sl in tekst:
            if sl in "aeiou":
                samo+=1
            else:
                sugl+=1
        if samo>=sugl:
            red.dodaj(tekst)

