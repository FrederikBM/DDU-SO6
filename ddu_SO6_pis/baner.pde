class Bane {
  int antalPlatforme;
  Bane(int antal) {
    antalPlatforme = antal;
  }
}
class Bane1 {
  void display() {
    rect(-5, 670, 1086, 50); //jorden
    rect(280, 610, 70, 30); //nederste blok
    rect(400, 540, 70, 30); //anden nederste blok
    rect(300, 450, 70, 30); //trejde nederste blok
    rect(450, 410, 70, 30); //fjerde nederste blok
    rect(590, 320, 70, 30); //anden øverste blok
    rect(750, 250, 70, 30); //øverste blok
    rect(900, 200, 30, 450); //forhindring
    fill(255);
    rect(1000, 600, 30, 70); //"dør"
    fill(124, 252, 0); //gras grøn farve
  }
}
class Bane2 {
  void display(){
    rect(-5, 670, 1086, 50); //jorden
    rect(570, 540, 60, 130); //bund af forhindring
    rect(600, 440, 30, 100); //midt af forhindring
    rect(570, 340, 60, 100); //top af forhindring
    rect(450, 600, 70, 30); //nedereste blok
    rect(430, 450, 70, 30); // anden nederste blok
    rect(320, 370, 70, 30); // tredje nederste blok
    rect(430, 300, 70, 30); //øverste blok
    rect(700, 650, 20, 20); //lille blok
    fill(255); //"dør" farve
    rect(1000, 600, 30, 70); //"dør"
    fill(95, 2, 31); // hul farve
    rect(630, 670, 170, 50); //hul i jorden
    fill(124, 252, 0); //gras grøn farve
  }
}
class BaneU {
}
class Bane3 {
}
class Bane4 {
}
class BaneD {
}
