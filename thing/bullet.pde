class Bullet extends GameObject{  
  
  Bullet() {
    super(player1.x, player1.y, 0, -10, 20, 1, myLaser);
    x = player1.x + player1.size/2 - this.size/2;
  }
  
  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height) lives = 0;

  }
  
}

class EnemyBullet extends GameObject {
  
  EnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, 1, enemyBullet);
    vy = y/200;
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
 
}
