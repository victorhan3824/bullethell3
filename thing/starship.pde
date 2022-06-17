class Starship extends GameObject{
 
  int cooldown, threshold;
  
  Starship() {
    super(width/2, height*0.75, 0, 0, 60, fullHealth, spaceship);
    //x,y,vx,vy,size,lives,display
    threshold = 15;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
    //managing the gun ===================
    cooldown++;
    if (space && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }
    
    //controlling the starship ===========
    if (up)    vy = -1;
    if (down)  vy = 3;
    if (left)  vx = -5;
    if (right) vx = 5;
    if (!up && !down)    vy = vy*0.9;
    if (!left && !right) vx = vx*0.9;
    
    //resetting  location  ===============
    if (x < -size) x = width+size/2;
    if (x > width+size) x = -size/2;
    if (y < height/10) y = y + 2;
    if (y > height) y = height-2*size;
      
    //Get shot ===========================
    int i = 0;
    while(i < objects.size()) {
      GameObject obj = objects.get(i); //takeout the "i"th object in the objects list
      //determine whether Bullet hit us
      if (obj instanceof EnemyBullet) { //if obj that we took out is of Bullet class
        if (collidingWith(obj)) { //check if the ship collides with enemy bullets
          lives = lives-1;
          obj.lives = 0; //removing the bullet that hit us
        } 
      }
      //determine whether we crash into something
      if (obj instanceof Enemy1 || obj instanceof Enemy2) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          lives--;
          if (obj instanceof Enemy1) lives=lives-4;
        }
      }
      i++;
    }
    //end of get shot ===================
  } 

  
}
