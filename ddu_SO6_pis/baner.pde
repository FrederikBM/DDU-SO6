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
  void display(){
    rect(-5, 670, 1086, 50); //jorden
    rect(90, 400, 70, 30); //første blok fra venstre
    rect(190, 570, 70, 30); //anden blok fra venstre
    rect(240, 470, 70, 30); //tredje blok fra venstre
    rect(600, 560, 70, 30); //fjerde blok fra venstre
    rect(800, 530, 70, 30); //femte blok fra venstre
    rect(1000, 540, 70, 30); //sjette blok fra venstre
    fill(124, 252, 0); //gras grøn farve
  }
}
class Bane3 {
  void display(){
    rect(-5, 670, 1086, 50); //jorden
    rect(570, 540, 60, 130); //bund af forhindring
    rect(570, 340, 60, 100); //top af forhindring
    rect(450, 600, 70, 30); //nedereste blok
    rect(430, 450, 70, 30); //anden nederste blok
    rect(320, 370, 70, 30); //tredje nederste blok
    rect(430, 300, 70, 30); //øverste blok
    rect(770, 600, 50, 30); //stor lille blok
    rect(700, 650, 20, 20); //lille blok
    fill(255); //"dør" farve
    rect(1000, 600, 30, 70); //"dør"
    fill(95, 2, 31); // hul farve
    rect(630, 670, 170, 50); //hul i jorden
    rect(300, 670, 100, 50); //hul i jorden
    fill(124, 252, 0); //gras grøn farve
}
}
class Bane4 {
  void display(){
    rect(-5, 670, 1086, 50); //jorden
    rect(570, 440, 60, 230); //bund af forhindring
    rect(570, 240, 20, 130); //top af forhindring
    rect(450, 600, 70, 30); //nedereste blok
    rect(400, 500, 70, 30); //anden nederste blok
    rect(320, 370, 70, 30); //tredje nederste blok
    rect(430, 300, 70, 30); //øverste blok
    rect(300, 600, 70, 20); //venstre blok
    rect(700, 600, 10, 15); //lille blok
    fill(255); //"dør" farve
    rect(1000, 600, 30, 70); //"dør"
    fill(95, 2, 31); // hul farve
    rect(630, 670, 170, 50); //hul i jorden
    rect(300, 670, 200, 50); //hul i jorden
    fill(124, 252, 0); //gras grøn farve
}
}
class BaneD {
  void display(){
    rect(-5, 670, 1086, 50); //jorden
    rect(68, 270, 50, 400); //forhindring
    rect(962, 270, 50, 400); //forhindring
    rect(118, 560, 50, 30); //blok side fast på forhindring
    rect(190, 475, 70, 30); //først blok fra venstre
    rect(310, 400, 150, 30); //anden blok fra venstre
    rect(610, 400, 150, 30); //tredje blok fra venstre
    rect(830, 350, 70, 30);
    fill(95, 2, 31); // hul farve
    rect(-2, 670, 70, 50); //hul i jorden
    rect(1012, 670, 70, 50); //hul i jorden
    fill(124, 252, 0); //gras grøn farve
  }
}
