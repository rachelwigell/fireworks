class Particle{
  private Vector2D position;
  private int diameter;
  private Vector2D velocity;
  private Vector2D acceleration;
  
  public Particle(Vector2D position, int diameter, Vector2D velocity, Vector2D acceleration){
    this.position = position;
    this.diameter = diameter;
    this.velocity = velocity;
    this.acceleration = acceleration;
  }
  
  public Particle(Vector2D position, int diameter, Vector2D velocity){
    this(position, diameter, velocity, new Vector2D(0, gravityMagnitude));
  }
  
  public Particle(Vector2D position, float scale){
    this(position,
        (int) random(maxParticleDiameter*scale),
        new Vector2D().fromPolar(random(2*PI), random(minParticleSpeed*scale, maxParticleSpeed*scale))
    );
  }
  
  public void draw(){
    circle(this.position.x, this.position.y, this.diameter);
  }
  
  public Particle move(){
    this.velocity = this.velocity.addVector(this.acceleration);
    this.position = this.position.addVector(this.velocity);
    return this;
  }
}
