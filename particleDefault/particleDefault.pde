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
