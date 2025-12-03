Flower[] flower = new Flower[40];
Bull z;

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

if(p != null) {
  Horn(z.position.x, z.position.y, 200, 100);
  z.moveBull();
}
  //Matador Hat
  noStroke();
  fill(231, 234, 130);
  ellipse(180, 310, 40, 30);

  //Matador Hat Stripe
  fill(255, 0, 0);
  rect(180, 325, 40, 5);

  //Matador Hat Brim
  rectMode(CORNER);
  fill(231, 234, 130);
  rect(150, 330, 100, 5);

  //Matador Hat Head Cover
  rectMode(CORNER);
  noStroke();
  fill(214, 190, 147);
  rect(180, 335, 40, 5);

  //Matador Body
  fill(255, 0, 0);
  ellipse(180, 345, 40, 50);

  //Matador Legs/Torso
  fill(0, 70, 255);
  rect(180, 380, 40, 15);

  //Matador Left Leg
  fill(0, 70, 255);
  rect(180, 390, 15, 10);

  //Matador Right Leg
  fill(0, 70, 255);
  rect(205, 390, 15, 10);

  //Matador Left Hand
  fill(214, 190, 147);
  ellipse(162, 360, 10, 10);

  //Matador Left Arm
  fill(255, 0, 0);
  rect(170, 360, 20, 10);

  //Matador Right Hand
  fill(214, 190, 147);
  ellipse(228, 360, 10, 10);

  //Matador Right Arm
  fill(255, 0, 0);
  rect(210, 360, 20, 10);

  //Left Cape
  stroke(0);
  fill(255, 0, 0);
  rect(110, 360, 50, 30);

  //Left Cape Pole
  fill(0);
  rect(110, 360, 60, 5);

  //Right Cape
  fill(255, 0, 0);
  rect(240, 360, 50, 30);

  //Right Cape Pole
  fill(0);
  rect(230, 360, 60, 5);

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
