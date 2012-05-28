/*

PARTICLE EXPERIMENTS

01101101011010010110101101100101

*/

PImage img;

int particleCount = 1000;
int maxSize = 5;
ArrayList particles;
PVector m;

void setup() {
  size(512, 512);
  
  img = loadImage("logo_bw_512.jpg");
  
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
