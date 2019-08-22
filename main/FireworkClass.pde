class Firework{
  private Particle[] particles;
  private int numParticles;
  private RGBValue fillColor;
  private float age;
  private float scale;
  
  public Firework(int numParticles, Vector2D position, float scale){
    this.age = 0;
    this.scale = scale;
    this.fillColor = new RGBValue().generateRandomFireworkColor();
    this.numParticles = numParticles;
    this.particles = new Particle[numParticles];
    for(int i=0; i<numParticles; i++){
      this.particles[i] = new Particle(position, scale);
    }
  }
  
  public Firework(Vector2D position){
    this(defaultFireworkDensity, position, random(minScale, maxScale));
  }
  
  void draw(){
    this.age += fireworkDecaySpeed;
    fill(this.fillColor.r, this.fillColor.g, this.fillColor.b, 255-age);
    for(int i = 0; i < this.numParticles; i++){
        Particle particle = this.particles[i];
        particle.draw();
        particle.move();
    }
  }
  
}
