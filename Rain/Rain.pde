class drop{
  private int x, y, len, vel;
  
  public drop(){
    x = (int)random(width);
    y = (int)random(height);
    len = (int)random(40);
    vel = 3 + (int)random(10);
  }
  
  public void draw(){
    if(y < height){
      y += vel;
    }
    else{
      y = -len;
      x = (int)random(width);
      len = (int)random(40);
      vel = 3 + (int)random(7);
    }
    line(x, y, x, y + len);
  }
}

drop[] drops = new drop[1000];

void setup(){
  size(1200, 800);
  for(int n = 0; n < drops.length; n++) drops[n] = new drop();
}

void draw(){
  background(0);
  stroke(255);
  for(int n = 0; n < drops.length; n++) drops[n].draw();
}
