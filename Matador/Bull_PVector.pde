class Bull {
  float randomSave;
  float bullRandom;
  boolean gameOver = false;
  int directionPlayerChoose; // 0 is left, 1 is right
  int bullTimer;
  int animationTimer = 100;
  int bullMaxTimer;
  PVector position = new PVector(160, 40);
  PVector velocity;
  PVector acceleration = new PVector(0, 1);
  float startingVelocityMagnitude = 5;

  Bull(int timer) {
    bullMaxTimer = timer; // sets timer for bull interval
    velocity = new PVector(0, 1);
    velocity.normalize();
    velocity = new PVector(velocity.x*startingVelocityMagnitude, velocity.y*startingVelocityMagnitude); 
    bullTimer = bullMaxTimer; // sets inital bull timer 
  }

  void Horn() {

    //Bull Head Top Left
    noStroke();
    fill(112, 138, 206);
    ellipse(position.x + 10, position.y, 40, 50);

    //Bull Head Top Right
    fill(112, 138, 206);
    ellipse(position.x + 30, position.y, 40, 50);

    //Bull Head Bottom
    fill(112, 138, 206);
    ellipse(position.x + 20, position.y + 20, 40, 50);

    //Bull Horn Right
    stroke(0);
    fill(255);
    triangle(position.x + 62, position.y + 5, position.x + 65, position.y +15, position.x + 120, position.y - 20);

    //Bull Horn Left
    stroke(0);
    fill(255);
    triangle(position.x + 17, position.y + 5, position.x + 14, position.y + 15, position.x - 40, position.y - 20);

    //Bull Eye Left
    noStroke();
    fill(0);
    ellipse(position.x + 25, position.y + 10, 8, 10);

    //Bull Eyebrow Left
    stroke(0);
    line(position.x + 25, position.y + 5, position.x + 35, position.y + 10);

    //Bull Eye Right
    fill(0);
    ellipse(position.x + 47, position.y + 10, 8, 10);

    //Bull Eyebrow Right
    line(position.x + 45, position.y + 10, position.x + 55, position.y + 5);

    //Bull Nose Left
    fill(0);
    ellipse(position.x + 32, position.y + 60, 5, 5);

    //Bull Nose Right
    fill(0);
    ellipse(position.x + 42, position.y + 60, 5, 5);

    //Bull Nose Ring
    stroke(144, 144, 138);
    fill(255);
    ellipse(position.x + 30, position.y + 63, 20, 20);

    //Bull Nose Filling
    noStroke();
    fill(112, 138, 206);
    ellipse(position.x + 30, position.y + 63, 20, 10);
  }

  void moveBull() {

    randomSave = bullRandom;
    bullTimer = bullTimer - 1;
    // counts down the timer
    if ( bullTimer < 0)
    {

      // if the player chooses the correct key press
      println(directionPlayerChoose + " " + randomSave);
      if (directionPlayerChoose == randomSave) {
        // for loop used to play animation over time
        acceleration.y = 1;
        velocity.add(acceleration);
        position.add(velocity);
        // if statement allows timer to run
        animationTimer -= 1;
        println(animationTimer);
        if (animationTimer < 0) {
          // resets bull //
          position.x = 160;
          position.y = 40;
          velocity.x = 0;
          velocity.y = 0;
          acceleration.x = 0;
          acceleration.y = 0;
          bullRandom = int(random(0, 2));
          bullTimer = bullMaxTimer; // reset timer
          println("works win");
        }
      } else {
        // if the play chooses the wrong direction
        println("works lose");
        gameOver = true;
      }
    }
    else{
      animationTimer = 100;// resets timer
    }
  }
}
