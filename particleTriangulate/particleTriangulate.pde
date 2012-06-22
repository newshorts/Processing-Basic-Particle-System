/*

PARTICLE EXPERIMENTS

01101101011010010110101101100101

*/

import org.processing.wiki.triangulate.*;

int particleCount = 50;
int maxSize = 20;
ArrayList particles = new ArrayList();
ArrayList points = new ArrayList();
ArrayList triangles = new ArrayList();
PVector m;

void setup() {
  size(1600, 1200);
  smooth();
  background(0);
  
  for(int i = 0; i < particleCount; i++) {
    particles.add(new Particle());
  }
  
}

void draw() {
  
  background(0);
  
  m = new PVector(mouseX, mouseY);
  
  noStroke();
  
  for(int i = 0; i < particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    points.add(p.run());
    p = null;
  }
  
  triangles = Triangulate.triangulate(points);
  
  stroke(255, 70);
  fill(255, 40);
  beginShape(TRIANGLES);
  
  for(int i = 0; i < triangles.size(); i++) {
    Triangle t = (Triangle)triangles.get(i);
    vertex(t.p1.x, t.p1.y);
    vertex(t.p2.x, t.p2.y);
    vertex(t.p3.x, t.p3.y);
  }
  
  endShape();
  
  points.clear();
  triangles.clear();
  m = null;
}
