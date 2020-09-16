Bane bane;
Bane1 bane1 = new Bane1();
Bane2 bane2 = new Bane2();
BaneU baneU = new BaneU();
Bane3 bane3 = new Bane3();
Bane4 bane4 = new Bane4();
BaneD baneD = new BaneD();
//Platform platform;


void setup() {
  frameRate(30);
  size(1080, 720);
  bane = new Bane(7);
}
void draw() {
  background(135, 206, 235);
  for (int i = 0; i<100; i++) {
    bane1.display();
  }
}


class Platform {
  int xPos;
  int yPos;
  int xSize;
  int ySize;
}
