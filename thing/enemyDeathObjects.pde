 
class Flame extends GameObject{  
  //constructors
  int n;
  
  Flame(GameObject obj) {
    super(obj.x, obj.y, 0, 0, obj.size+1, 1, explosion[0]);
    n = 0;
  }
  
  //behavior functions
  void act() {  
    super.act();
    display = explosion[n];
    n++;
    
    if (n >= 12) {
      lives=0;
      n=0;
    }
  }
}

class Powerup extends GameObject {
  
  int n; //n removes powerup after a period of time
  
  Powerup(float x, float y) {
    super(x,y,0,0,60,1,powerup);  
    n = 0;
  }
  void act() {
    super.act();  
    n++;
    if (n >= 200) lives = 0;
  }
  
}
