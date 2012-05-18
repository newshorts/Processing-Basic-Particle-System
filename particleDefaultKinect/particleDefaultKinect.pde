/*

PARTICLE EXPERIMENTS

01101101011010010110101101100101

*/

import org.openkinect.*;
import org.openkinect.processing.*;
KinectTracker tracker;
Kinect kinect;

int particleCount = 2000;
int maxSize = 20;
ArrayList particles;
PVector m;

void setup() {
  size(1600, 1200);
  
  kinect = new Kinect(this);
  tracker = new KinectTracker();
  
  particles = new ArrayList();
  
  for(int i = 0; i < particleCount; i++) {
    particles.add(new Particle());
  }
  
}

void draw() {
  
  tracker.track();
  
  background(0);
  noStroke();
  smooth();
  
  // get tracker position and spit it out
  PVector v1 = tracker.getPos();
  m = new PVector(v1.x * 2, v1.y * 2);

  for(int i = 0; i < particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    p.run();
    p.display();
  }
}
