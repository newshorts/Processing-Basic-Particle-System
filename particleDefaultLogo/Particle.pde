class Particle {
  
  // private vars
  float x, y, xspeed, yspeed, r, d;
  color c;
  float md;
  PVector p;
  
  Particle() {
    x = random(1, (width/2));
    y = random(1, (height/2));
    xspeed = random(.001, 10);
    yspeed = random(.001, 10);
    r = random(1, maxSize);
    c = color(random(50, 254), random(50, 254), random(50, 254), 75);
  }
  
  void run(color col) {
    
    c = col;
    
//    calcMouse();
    
    if(x > width || x < 1) {
      xspeed = xspeed * -1;
    }
    
    if(y > height || y < 1) {
      yspeed = yspeed * -1;
    }
    
    x = int(x + xspeed);
    y = int(y + yspeed);
    
//    x = x + (xspeed * (cos(md * 10)));
//    y = y + (yspeed * (sin(md * 10)));
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
  
  int getLoc() {
    return int(x + y*width);
  }
}
