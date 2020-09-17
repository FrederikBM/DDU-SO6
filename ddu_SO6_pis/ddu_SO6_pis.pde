PImage paludanStillR, paludanStillL;
Boolean right = true;
Bane bane;
Startskaerm startskaerm = new Startskaerm();
Bane1 bane1 = new Bane1();
Bane2 bane2 = new Bane2();
BaneU baneU = new BaneU();
Bane3 bane3 = new Bane3();
Bane4 bane4 = new Bane4();
BaneD baneD = new BaneD();

Paludan paludan = new Paludan(new PVector(30, 100));

PVector gravity = new PVector(0, 0.07);


void setup() {
  frameRate(30);
  size(1080, 720);
  bane=startskaerm;
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
  bane1.platforme();
  bane.display();
  bane=bane.nextBane();
  paludan.display();
}

class Paludan {
  float mass = 2;
  PVector acceleration;
  PVector velocity;
  PVector location;

  Paludan(PVector locationP) {
    location = locationP;
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
    } else if (keyPressed && key == 'q') {
      PVector hop = new PVector(-0.6, -5);
      paludan.applyForce(hop);
      right = false;
    } else if (keyPressed && key == 'e') {
      PVector hop = new PVector(0.6, -5);
      paludan.applyForce(hop);
      right = true;
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
      velocity.y *= 0;
      acceleration.mult(-1);
    } 
    for (int t = 0; t<7; t++) {
      //bane 1:
      //rammer toppen:
      if(bane==bane1 && location.y > bane1.platformeY1[t]-30 && location.y < bane1.platformeY1[t]-20 &&  location.x+35 > bane1.platformeX1[t] && location.x < bane1.platformeX1[t]+70){
        location.y = bane1.platformeY1[t]-15;
        paludan.velocity.y *= 0;
        paludan.acceleration.mult(0);
      } //rammer bunden:
      else if (bane==bane1 && location.y+20 > bane1.platformeY1[t]-bane1.platformeH1[t] && location.y < bane1.platformeY1[t]-20 &&  location.x+35 > bane1.platformeX1[t] && location.x < bane1.platformeX1[t]+bane1.platformeW1[t]) {
        location.y = bane1.platformeY1[t]-50;
        paludan.velocity.y *= 0;
        paludan.acceleration.mult(0);
      } //rammer venstre side
      if(bane==bane1 && location.y > bane1.platformeY1[t]-bane1.platformeH1[t] && location.y < bane1.platformeY1[t]-20 &&  location.x+35 > bane1.platformeX1[t] && location.x < bane1.platformeX1[t]+bane1.platformeW1[t]){
        location.x = bane1.platformeX1[t];
        paludan.velocity.x *= 0;
        paludan.acceleration.mult(0);
      } //rammer højre side
      else if(bane==bane1 && location.y > bane1.platformeY1[t]-bane1.platformeH1[t] && location.y < bane1.platformeY1[t]-20 &&  location.x+35 > bane1.platformeX1[t] && location.x < bane1.platformeX1[t]+bane1.platformeW1[t]){
        location.x = bane1.platformeX1[t];
        paludan.velocity.x *= 0;
        paludan.acceleration.mult(0);
      } 
      //bane 2:
    }
  }
}
