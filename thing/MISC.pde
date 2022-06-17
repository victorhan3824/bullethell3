


//ultilities ==============================================================
void reset() {
  //class initalization input
  objects = new ArrayList<GameObject>();
  player1 = new Starship();
  objects.add(player1);
  frameCount = 0;
  //misc
  statCounter = 1;
  speedUP = speedDuration;
  score = 0;
}

//keyboard ================================================================

void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true ;
  if (key == ' ') space = true;
  if (key == 's' || key == 'S') stat = true;
  if (speedUP >= speedDuration) if (key == 'q' || key == 'Q') speed = true;
}

void keyReleased() {
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (key == ' ') space = false;
  if (key == 's' || key == 'S') statCounter = statCounter*-1;
}
