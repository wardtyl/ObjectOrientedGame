class Bull {

  PVector position = new PVector(width/2, height/2);
  PVector velocity;
  PVector acceleration = new PVector(0, 1);
  float startingVelocityMagnitude = 5;

  Bull() {
    velocity = new PVector(200, 200);
    velocity.normalize();
    velocity = new PVector(velocity.x*startingVelocityMagnitude, velocity.y*startingVelocityMagnitude);
  }

  void Horn() {
    //Matador Head
    ellipseMode(CORNER);
    noStroke();
    fill(214, 190, 147);
    ellipse(180, 310, 40, 40);

    //Bull Head Top Left
    fill(112, 138, 206);
    ellipse(170, 40, 40, 50);

    //Bull Head Top Right
    fill(112, 138, 206);
    ellipse(190, 40, 40, 50);

    //Bull Head Bottom
    fill(112, 138, 206);
    ellipse(180, 60, 40, 50);

    //Bull Horn Right
    stroke(0);
    fill(255);
    triangle(222, 45, 225, 55, 280, 20);

    //Bull Horn Left
    stroke(0);
    fill(255);
    triangle(177, 45, 174, 55, 120, 20);

    //Bull Eye Left
    noStroke();
    fill(0);
    ellipse(185, 50, 8, 10);

    //Bull Eyebrow Left
    stroke(0);
    line(185, 45, 195, 50);

    //Bull Eye Right
    fill(0);
    ellipse(207, 50, 8, 10);

    //Bull Eyebrow Right
    line(205, 50, 215, 45);

    //Bull Nose Left
    fill(0);
    ellipse(192, 100, 5, 5);

    //Bull Nose Right
    fill(0);
    ellipse(202, 100, 5, 5);

    //Bull Nose Ring
    stroke(144, 144, 138);
    fill(255);
    ellipse(190, 103, 20, 20);

    //Bull Nose Filling
    noStroke();
    fill(112, 138, 206);
    ellipse(190, 103, 20, 10);
  }

  void moveBull() {
    velocity.add(acceleration);
    position.add(velocity);
  }
}
