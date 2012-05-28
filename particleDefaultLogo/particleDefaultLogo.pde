/*

PARTICLE EXPERIMENTS

01101101011010010110101101100101

*/

PImage img;

int particleCount = 2000;
int maxSize = 20;
ArrayList particles;
PVector m;

void setup() {
  size(1600, 1200);
  
  img = loadImage("logo_bw.jpg");
  
  particles = new ArrayList();
  
  for(int i = 0; i < particleCount; i++) {
    particles.add(new Particle());
  }
  
  background(0);
  noStroke();
  smooth();
  
}

void draw() {
  
  loadPixels();
  img.loadPixels();
  
  m = new PVector(mouseX, mouseY);
  
  for(int i = 0; i < particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    int loc = p.getLoc();
    
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
    
    p.run(color(r,g,b,75));
    p.display();
  }
}
