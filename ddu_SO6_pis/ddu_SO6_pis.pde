Bane bane1;
Bane bane2;
Bane baneU;
Bane bane3;
Bane bane4;
Bane baneD;
Platform platform;

class Bane {
  int antalPlatforme;
  Bane(int antal) {
    antalPlatforme = antal;
  }

  void display() {
    rect(0, 670, 1080, 50);
    fill(124, 252, 0);
    noStroke();
  }
}
class Platform {
  int xPos;
  int yPos;
  int xSize;
  int ySize;
}
void setup() {
  frameRate(30);
  size(1080, 720);
  bane1 = new Bane(7);
}
void draw() {
  background(135, 206, 235);
  bane1.display();
}
