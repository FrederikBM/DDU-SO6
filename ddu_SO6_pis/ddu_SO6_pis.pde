Bane bane;
Bane bane1 = new bane1();
Bane bane2 = new bane2();
Bane baneU = new baneU();
Bane bane3 = new bane3();
Bane bane4 = new bane4();
Bane baneD = new baneD();
Platform platform;

class Bane {
  int antalPlatforme;
  Bane(int antal) {
    antalPlatforme = antal;
  }

}
class bane1{
    void display() {
    rect(0, 670, 1080, 50);
    fill(124, 252, 0);
    noStroke();
  }
}
class bane2{
  
}
class baneU{
  
}
class bane3{
  
}
class bane4{
  
}
class baneD{
  
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
