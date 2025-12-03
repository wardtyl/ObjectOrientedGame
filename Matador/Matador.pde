Flower[] flower = new Flower[40];

void setup() {
  size(400, 400);

  for (int i = 0; i < flower.length; i++) {
    flower[i] = new Flower(70, i * 32);
  }
  
  for (int i = flower.length/2; i < flower.length; i++) {
    flower[i] = new Flower(310, (i - flower.length/2) * 32);
  }

  
}

void draw() {
  background(255);

  //Matador Hat
  ellipseMode(CORNER);
  noStroke();
  fill(214, 190, 147);
  ellipse(180, 310, 40, 30);

  //Right Vertical Line Top of Building
  stroke(0);
  line(340, 0, 370, 400);

  //Right Vertical Line Bottom of Building
  line(320, 0, 340, 400);

  //Right Building Lines Top
  line(345, 60, 400, 60);
  line(345, 60, 326, 113);

  //Right Building Lines Bottom
  line(360, 260, 400, 260);
  line(360, 260, 336, 313);

  //Left Vertical Line Top of Building
  line(60, 0, 30, 400);

  //Left Vertical Line Bottom of Building
  line(80, 0, 60, 400);

  //Left Building Lines Top
  line(0, 80, 54, 80);
  line(54, 80, 73, 133);

  //Left Building Lines Middle
  line(0, 160, 48, 160);
  line(48, 160, 70, 210);

  //Left Building Lines Bottom
  line(0, 280, 39, 280);
  line(39, 280, 63, 343);
  
   for (int i = 0; i < flower.length; i++) {
    flower[i].displayFlower();
  }
}
