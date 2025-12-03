Flower[] flower = new Flower[40];
Bull z;

void setup() {
  z = new Bull();

  size(400, 400);

  for (int i = 0; i < flower.length; i++) {
    flower[i] = new Flower(70, i * 32);
  }

  for (int i = flower.length/2; i < flower.length; i++) {
    flower[i] = new Flower(310, (i - flower.length/2) * 32);
  }
}



void draw() {
  background(180, 173, 102);

  if (z != null) {
    z.Horn();
    z.moveBull();
  }

  //Horn();

  //Matador Head
  ellipseMode(CORNER);
  noStroke();
  fill(214, 190, 147);
  ellipse(180, 310, 40, 40);

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

  //Top Right Building Colour
  noStroke();
  fill(134, 160, 229);
  triangle(320, -100, 323, 60, 500, 60);

  //Top Right Building Colour 2
  fill(134, 160, 229);
  triangle(323, 60, 325, 120, 345, 60);

  //Middle Right Building Colour
  fill(227, 144, 209);
  triangle(325, 120, 345, 60, 400, 60);

  //Middle Right Building Colour 2
  fill(227, 144, 209);
  triangle(325, 120, 400, 265, 400, 60);

  //Middle Right Building Colour 3
  fill(227, 144, 209);
  triangle(325, 120, 400, 260, 333, 262);

  //Middle Right Building Colour 4
  fill(227, 144, 209);
  triangle(333, 262, 335, 320, 360, 260);

  //Bottom Right Building Colour
  fill(119, 227, 148);
  triangle(400, 260, 400, 400, 342, 400);

  //Bottom Right Building Colour 2
  fill(119, 227, 148);
  triangle(342, 400, 400, 260, 337, 314);

  //Bottom Right Building Colour 3
  fill(119, 227, 148);
  triangle(337, 314, 400, 260, 360, 260);

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

  //Top Left Building Colour
  stroke(229, 240, 85);
  fill(229, 240, 85);
  triangle(0, 0, 0, 80, 76, 80);

  //Top Left Building Colour 2
  noStroke();
  fill(229, 240, 85);
  triangle(0, 0, 80, 0, 76, 80);

  //Top Left Building Colour 3
  fill(229, 240, 85);
  triangle(76, 80, 54, 80, 73, 133);

  //Middle Top Left Building Colour
  fill(124, 207, 209);
  rect(0, 80, 55, 80);

  //Middle Top Left Building Colour 2
  fill(124, 207, 209);
  triangle(55, 80, 73, 133, 48, 160);

  //Middle Top Left Building Colour 3
  fill(124, 207, 209);
  triangle(48, 160, 73, 133, 70, 210);

  //Middle Bottom Left Building Colour
  fill(224, 77, 99);
  rect(0, 160, 48, 120);

  //Middle Bottom Left Building Colour 2
  fill(224, 77, 99);
  triangle(48, 160, 70, 210, 39, 280);

  //Middle Bottom Left Building Colour 3
  fill(224, 77, 99);
  triangle(39, 280, 70, 210, 63, 343);

  //Bottom Left Building Colour
  fill(224, 178, 77);
  rect(0, 280, 39, 120);

  //Bottom Left Building Colour 2
  fill(224, 178, 77);
  triangle(39, 280, 63, 343, 30, 400);

  //Bottom Left Building Colour 3
  fill(224, 178, 77);
  triangle(63, 343, 30, 400, 60, 400);

  //Left Vertical Line Top of Building
  stroke(0);
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

  //for (int i = 0; i < flower.length; i++) {
  //flower[i].displayFlower();
  //}
}
