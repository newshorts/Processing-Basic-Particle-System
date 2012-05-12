/*

PARTICLE EXPERIMENTS

01101101011010010110101101100101

*/

int particleCount = 2000;
int maxSize = 20;
ArrayList particles;
PVector m;

void setup() {
  size(1280, 960);
  
  particles = new ArrayList();
  
  for(int i = 0; i < particleCount; i++) {
    particles.add(new Particle());
  }
  
}

void draw() {
  
  background(255);
  noStroke();
  smooth();
  m = new PVector(mouseX, mouseY);
  
  for(int i = 0; i < particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    p.run();
    p.display();
  }
}

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
    c = color(random(50, 254), random(50, 254), random(50, 254), 75);
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
