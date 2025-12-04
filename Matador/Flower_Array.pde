class Flower {
float a;
float b;
color e;

  Flower(int c, int d) {
    e = color(random(255), random(255), random(255));
    a = c;
    b = d;
  }
  
  void displayFlower() {
    
    ellipseMode(CORNER);
    noStroke();
    
    //Flowers
    fill(e);
    ellipse(a, b, 20, 20);
    
  }
}
