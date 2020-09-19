class Bane {
  int platform=1;
  int[]   platformeX1 = new int[9];
  int[]   platformeY1 = new int[9];
  int[]   platformeW1 = new int[9];
  int[]   platformeH1 = new int[9];

  Bane() {
  }

  void display() {
  }
  void platforme() {
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
      platformeW1[i] = 70;
      platformeH1[i] = 30;
      platformeX1[6] = 900;
      platformeY1[6] = 200;
      platformeW1[6] = 30;
      platformeH1[6] = 470;
    }
  }

  Bane nextBane() {
    if (paludan.location.x>width-90 && paludan.location.y>height-130) {
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
    rect(platformeX1[1], platformeY1[1], platformeW1[1], platformeH1[1]); //øverste blok
    rect(platformeX1[2], platformeY1[2], platformeW1[2], platformeH1[2]); // anden nederste blok
    rect(platformeX1[3], platformeY1[3], platformeW1[3], platformeH1[3]); //nederste blok
    rect(platformeX1[4], platformeY1[4], platformeW1[4], platformeH1[4]); // tredje nederste blok
    rect(platformeX1[4], platformeY1[5], platformeW1[5], platformeH1[5]); // tredje nederste blok2
    rect(platformeX1[6], platformeY1[6], platformeW1[6], platformeH1[6]); //bund af forhindring
    fill(255); //"dør" farve
    rect(1000, 600, 30, 70); //"dør"
    fill(95, 2, 31); // hul farve
    rect(630, 670, 170, 50); //hul i jorden
    fill(124, 252, 0); //gras grøn farve
  }

  void platforme() {
    for (int i = 0; i<8; i++) {
      if (i<6) {
        platformeX1[i]=430;
        platformeY1[i]=750-160*i;
        platformeW1[i] = 70;
        platformeH1[i] = 30;
        platformeX1[4]=280;
        platformeX1[5]=280;
        platformeY1[4]=340;
        platformeY1[5]=510;
      } else if (i<=7) {
        platformeX1[6]=570;
        platformeY1[6]=300;
        platformeW1[6] = 60;
        platformeH1[6] = 370;
      }
    }
  }
  Bane nextBane() {
    if (paludan.location.x>630&&paludan.location.x<800&&paludan.location.y>610) {
      paludan.location.x=30;
      return taberskaerm;
    } else if (paludan.location.x>width-90 && paludan.location.y>height-130) {
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
    rect(platformeX1[0], platformeY1[0], platformeW1[0], platformeH1[0]); //første blok fra venstre
    rect(platformeX1[1], platformeY1[1], platformeW1[1], platformeH1[1]); //anden blok fra venstre
    rect(platformeX1[2], platformeY1[2], platformeW1[2], platformeH1[2]); //tredje blok fra venstre
    rect(platformeX1[3], platformeY1[3], platformeW1[3], platformeH1[3]); //fjerde blok fra venstre
    rect(platformeX1[4], platformeY1[4], platformeW1[4], platformeH1[4]); //femte blok fra venstre
    rect(platformeX1[5], platformeY1[5], platformeW1[5], platformeH1[5]); //sjette blok fra venstre
    fill(255);
    rect(1000, 600, 30, 70); //"dør"
    fill(124, 252, 0); //gras grøn farve
    image(uffeElbk, uffeX, 590);

    if (turn==false) {
      uffeX=uffeX+20;
    } else if (turn==true) {
      uffeX=uffeX-20;
    }
    if (uffeX>1000) {
      turn=true;
    } else if (uffeX<80) {
      turn=false;
    }

    if (uffeX<paludan.location.x+50 && uffeX+50>paludan.location.x+100 && 580 < paludan.location.y || uffeX>paludan.location.x-50 && uffeX-10<paludan.location.x && 580 < paludan.location.y) {
      bane=taberskaerm;
    }
  }
  
  void platforme() {
    for (int i = 0; i<7; i++) {
      if(i!=2&&i!=3){
      platformeX1[i] = 100+160*i;
      platformeY1[i] = 550;
      platformeW1[i] = 70;
      platformeH1[i] = 30;
      } else {
      platformeX1[i] = 100+160*i;
      platformeY1[i] = 420;
      platformeW1[i] = 70;
      platformeH1[i] = 30;
      }
    }
  }
  
  Bane nextBane() {
    if (paludan.location.x>width-90 && paludan.location.y>height-130) {
      paludan.location.x=30;
      return vinderskaerm;
    } else { 
      return this;
    }
  }
}
