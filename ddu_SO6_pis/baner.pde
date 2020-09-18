class Bane {
  void display() {
  }
  Bane nextBane() {
    return null;
  }
}

class Startskaerm extends Bane {
  void display() {
    background(135, 206, 235);
    rect(270, 210, 540, 75);
    rect(290, 320, 500, 60);
    rect(290, 410, 500, 60);
    fill(0);
    textSize(75);
    text("Det Paludanske Eventyr", 110, 100);
    textSize(50);
    text("Start spillet", 410, 265);
    textSize(40);
    text("Hjælp", 490, 365);
    text("Afslut", 490, 455);
    fill(124, 252, 0);
    rect(-1, 670, 1081, 50);
    fill(255);
  }
  Bane nextBane() {
    if (mousePressed&&mouseX>270&&mouseX<810&&mouseY>210&&mouseY<285) {
      paludan.location.x=30;
      return bane1;
    } else { 
      return this;
    }
  }
}

class Slutskaerm extends Bane {
  void display() {
    background(0);
    textSize(50);
    text("du døde haha det sjov", 275, 300);
    fill(150, 0, 0);
  }
  Bane nextBane() {
    if (keyPressed && key == ' ') {
      return startskaerm;
    } else { 
      return this;
    }
  }
}

class Vinderskaerm extends Bane {
  void display() {
    background(150, 200, 75);
    textSize(50);
    text("du vandt din fucking taber", 225, 300);
    fill(230, 15, 200);
  }
  Bane nextBane() {
    if (keyPressed && key == ' ') {
      return startskaerm;
    } else { 
      return this;
    }
  }
}

class Bane1 extends Bane {
  int[]   platformeX1 = new int[7];
  int[]   platformeY1 = new int[7];
  int[]   platformeW1 = new int[7];
  int[]   platformeH1 = new int[7];

  void display() {
    rect(-5, 670, 1086, 50); //jorden
    rect(platformeX1[0], platformeY1[0], platformeW1[0], platformeH1[0]); //nederste blok
    rect(platformeX1[1], platformeY1[1], platformeW1[1], platformeH1[1]); //anden nederste blok
    rect(platformeX1[2], platformeY1[2], platformeW1[2], platformeH1[2]); //trejde nederste blok
    rect(platformeX1[3], platformeY1[3], platformeW1[3], platformeH1[3]); //fjerde nederste blok
    rect(platformeX1[4], platformeY1[4], platformeW1[4], platformeH1[4]); //anden øverste blok
    rect(platformeX1[5], platformeY1[5], platformeW1[5], platformeH1[5]); //øverste blok
    rect(platformeX1[6], platformeY1[6], platformeW1[6], platformeH1[6]); //forhindring
    fill(255);
    rect(1000, 600, 30, 70); //"dør"
    fill(124, 252, 0); //gras grøn farve
  }
  void platforme() {
    for (int i = 0; i<7; i++) {
      platformeX1[i] = (280 + (150*i));
      platformeY1[i] = (610 - (80*i));
      platformeX1[6] = 900;
      platformeY1[6] = 200;
      platformeW1[i] = 70;
      platformeH1[i] = 30;
      platformeW1[6] = 30;
      platformeH1[6] = 470;
    }
  }

  Bane nextBane() {
    if (paludan.location.x>width-100) {
      paludan.location.x=30;
      return bane2;
    } else { 
      return this;
    }
  }
}



class Bane2 extends Bane {
  void display() {
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

  Bane nextBane() {
    if (paludan.location.x>width-100) {
      paludan.location.x=30;
      return baneU;
    } else { 
      return this;
    }
  }
}
class BaneU extends Bane {
  Boolean turn = false;
  int uffeX = 640;

  void display() {
    rect(-5, 670, 1086, 50); //jorden
    rect(90, 400, 70, 30); //første blok fra venstre
    rect(190, 570, 70, 30); //anden blok fra venstre
    rect(240, 470, 70, 30); //tredje blok fra venstre
    rect(600, 560, 70, 30); //fjerde blok fra venstre
    rect(800, 530, 70, 30); //femte blok fra venstre
    rect(1000, 540, 70, 30); //sjette blok fra venstre
    fill(124, 252, 0); //gras grøn farve
    image(uffeElbk, uffeX, 620);

    if (turn==false) {
      uffeX=uffeX+5;
    } else if (turn==true) {
      uffeX=uffeX-5; 
    }
    if (uffeX>1000) {
        turn=true;
      } else if (uffeX<80){
        turn=false;
      }
      
      if(uffeX<paludan.location.x+50 && uffeX+50>paludan.location.x+100 && 580 < paludan.location.y || uffeX>paludan.location.x-50 && uffeX-10<paludan.location.x && 580 < paludan.location.y){
        bane=taberskaerm;
      }
    }
    Bane nextBane() {
      if (paludan.location.x>width-100) {
        paludan.location.x=30;
        return bane3;
      } else { 
        return this;
      }
    }

  }
  class Bane3 extends Bane {
    void display() {
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

    Bane nextBane() {
      if (paludan.location.x>width-100) {
        paludan.location.x=30;
        return bane4;
      } else { 
        return this;
      }
    }
  }
  class Bane4 extends Bane {
    void display() {
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

    Bane nextBane() {
      if (paludan.location.x>width-100) {
        paludan.location.x=30;
        return baneD;
      } else { 
        return this;
      }
    }
  }
  class BaneD extends Bane {
    void display() {
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
    Bane nextBane() {
      if (paludan.location.x>width-100) {
        return vinderskaerm;
      } else { 
        return this;
      }
    }
  }
