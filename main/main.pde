public ArrayList fireworks;
int width = 1200;
int height = 700;
int fadeSpeed = 20;
float gravityMagnitude = .02;
int defaultFireworkDensity = 100;
int maxParticleDiameter = 10;
int minParticleSpeed = 1;
int maxParticleSpeed = 4;
float fireworkDecaySpeed = 1;
float minScale = .3;
float maxScale = 1;

void setup(){
  size(1200, 700, P2D);
  background(0, 0, 0);
  frameRate(60);
  colorMode(RGB, 255);
  noStroke();
  fireworks = new ArrayList();
}

void draw(){
  for(int i=0; i<fireworks.size(); i++){
    Firework firework = (Firework) fireworks.get(i);
    firework.draw();
  }
  fade();
}

void fade() {
  fill(0, fadeSpeed);
  rect(0, 0, width+10, height+10);
}

void mouseClicked(){
  fireworks.add(new Firework(new Vector2D(mouseX, mouseY)));
}
