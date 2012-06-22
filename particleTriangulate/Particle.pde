class Particle {
  
  // private vars
  float x, y, xspeed, yspeed, r, d;
  color c;
  float md;
  PVector p;
  
  Particle() {
    
    // z value is used to store angle
    p = new PVector(random(width), random(height), random(TWO_PI));
    r = random(1, maxSize);
    c = color(random(50, 254), random(50, 254), random(50, 254), 75);
  }
  
  PVector run() {
    
//    calcMouse();
    
    p.x = p.x + (p.z * (cos(md * 10)));
    p.y = p.y + (p.z * (sin(md * 10)));
    
    if(p.x > width || p.x < 0) {
      p.z *= -1;
    }
    
    if(p.y > height || p.y < 0) {
      p.z *= -1;
    }
    
    fill(c);
    ellipse(p.x, p.y, r, r);
    
    return p;
  }
  
  void calcMouse() {
    d = PVector.dist(p, m);
    if(d > 0) {
      md = ((1/d) * 100);
    }
  }
}
