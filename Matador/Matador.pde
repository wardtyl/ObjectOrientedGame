Flower[] flower = new Flower[40];
Bull z;
boolean gameOver; // state for game over
float bullSpeed = 0.05;
float ratio = 0;
boolean charging = true;
boolean targetingLeft = true;
int gameState = 0;

void setup() {
  z = new Bull(100);

  size(400, 400);

  //Flowers on left side
  for (int i = 0; i < flower.length; i++) {
    flower[i] = new Flower(70, i * 32);
  }

  //Flowers on right side
  for (int i = flower.length/2; i < flower.length; i++) {
    flower[i] = new Flower(310, (i - flower.length/2) * 32);
  }
}

void draw() {

  //When game state is equal to zero, draw game
  if (gameState == 0) {
    background(180, 173, 102);


    if (z != null && gameOver ==  false) {
      z.Horn();
      z.moveBull();
    }

    // Main tab game over is equal to the bull gameOver
    gameOver = z.gameOver;

    //Draw Background Shapes
    Shapes();

    //Flowers
    for (int i = 0; i < flower.length; i++) {
      flower[i].displayFlower();
    }

    if (z.gameOver == true) {
      //Game over triggers game over screen
      gameState = 1;
      z.gameOver = false;
    }
  } else if (gameState == 1) {
    //If game over, trigger a new screen saying game over
    background(250, 121, 121);
    fill(255);
    text("You Lose... Click the mouse to restart", width/2, height/2);
  }
}

void keyPressed() {
  //Key codes determine player success randomly
  if (keyCode == LEFT) {
    z.directionPlayerChoose = 0;
  }
  if (keyCode == RIGHT) {
    z.directionPlayerChoose = 1;
  }
}

void mousePressed() {
  //Mouse Press on game over screen triggers new game
  if (gameState == 1) {
    gameState = 0;
    //Determines final speed of bull (originally 100, possibly change based on difficulty)
    z = new Bull(int(random(60, 60*3)));
  }
}
