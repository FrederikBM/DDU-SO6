PImage paludanStillR, paludanStillL;
Boolean right = true;
Bane bane;
Bane1 bane1 = new Bane1();
Bane2 bane2 = new Bane2();
BaneU baneU = new BaneU();
Bane3 bane3 = new Bane3();
Bane4 bane4 = new Bane4();
BaneD baneD = new BaneD();
Paludan paludan = new Paludan(location = new PVector(30, 400));
ArrayList<Platform> platform = new ArrayList<Platform>();
PVector location;
PVector gravity = new PVector(0, 0.07);


void setup() {
  frameRate(30);
  size(1080, 720);
  bane=bane1;
  paludanStillR = loadImage("Paludan_Still_Right.png");
  paludanStillL = loadImage("Paludan_Still_Left.png");
}
void draw() {

  paludan.bevaegelser();

  background(135, 206, 235);
  for (int i = 0; i<100; i++) {
    paludan.applyForce(gravity);
    paludan.update();
    paludan.checkEdges();
  }
  bane.display();
  bane=bane.nextBane();
  paludan.display();
}

class Paludan {
  float mass = 2;
  PVector acceleration;
  PVector velocity;


  Paludan(PVector locationP) {
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void bevaegelser() {
    if (keyPressed && key == 'a' || keyPressed && keyCode == LEFT) {
      PVector tilbage = new PVector(-0.3, 0);
      paludan.applyForce(tilbage);
      right = false;
    } else if (keyPressed && key == 'd' || keyPressed && keyCode == RIGHT) {
      PVector fremad = new PVector(0.3, 0);
      paludan.applyForce(fremad);
      right = true;
    } else if (keyPressed && key == 'w' || keyPressed && keyCode == UP) {
      PVector hop = new PVector(0, -7);
      paludan.applyForce(hop);
    }
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    velocity.mult(0.99);
    location.add(velocity);
    acceleration.mult(0.1);
  }

  void display() {
    if (right==true) {
      image(paludanStillR, location.x, location.y);
    } else if (right==false) {
      image(paludanStillL, location.x, location.y);
    }
  }

  void checkEdges() {
    if (location.x > width - 50) {
      location.x = width - 50;
      velocity.x *= - 1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y  > height- 100) {
      location.y = height- 100;
      velocity.y *= -1;
      acceleration.mult(-1);
    }
  }
}

class Platform {
  int xPos;
  int yPos;
  int xSize;
  int ySize;
  boolean hul = false;
  int jordLaengde = 1080;
  int jordHoejde = 50;

  Platform(int a, int b, boolean c) {
    xPos = a;
    yPos = b;
    hul = c;
  }

  void hul() {
    if (hul == false) {
      rect(0, 670, jordLaengde, jordHoejde);
    } else if (hul == true) {
      rect(0, 670, jordLaengde*0.6, jordHoejde);
    }
  }
}

class Startskaerm {
  void draw() {
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
}
