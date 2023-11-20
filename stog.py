from collections import deque

class Stog(deque):
    def __init__(self):
        super().__init__()

    def dodaj(self, objekt):
        self.append(objekt)

    def makni(self):
        return self.pop()

    def prazan(self):
        return len(self) == 0

naredba="map(int,input.split()"
stog=Stog()
for i in naredba:
    if i=="(":
        stog.dodaj(i)
    if i==")":
        if not stog.prazan():
            stog.makni()
        else:
            print("Ima manjak zagrada")
if stog.prazan()==False:
    print("Ima previse zagrada")