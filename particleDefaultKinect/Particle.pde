class Particle {
  
  // private vars
  float x, y, xspeed, yspeed, r, d;
  color c;
  float md;
  PVector p;
  
  Particle() {
    x = random(1, 1279);
    y = random(1, 959);
    xspeed = random(.001, 10);
    yspeed = random(.001, 10);
    r = random(1, maxSize);
    c = color(random(50, 254), random(50, 254), random(50, 254), 90);
  }
  
  void run() {
    
    calcMouse();
    
    if(x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    
    if(y > height || y < 0) {
      yspeed = yspeed * -1;
    }
    
    x = x + (xspeed * (cos(md * 10)));
    y = y + (yspeed * (sin(md * 10)));
  }
  
  void display() {
    fill(c);
    ellipse(x, y, r, r);
  }
  
  void calcMouse() {
    p = new PVector(x, y);
    d = PVector.dist(p, m);
    if(d > 0) {
      md = ((1/d) * 100);
    }
  }
}
