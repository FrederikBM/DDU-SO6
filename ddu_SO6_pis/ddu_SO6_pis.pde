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
  for(int i = 0; i<100;i++){
  bane1.display();
  }
}

class Bane {
  int antalPlatforme;
  Bane(int antal) {
    antalPlatforme = antal;
  }

}
class Bane1{
    void display() {
    rect(0, 670, 1080, 50);
    fill(124, 252, 0);
    noStroke();
  }
}
class Bane2{
  
}
class BaneU{
  
}
class Bane3{
  
}
class Bane4{
  
}
class BaneD{
  
}

class Platform {
  int xPos;
  int yPos;
  int xSize;
  int ySize;
}
