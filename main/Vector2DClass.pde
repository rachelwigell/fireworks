class Vector2D {
  private float x;
  private float y;
  
  public Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Vector2D(Vector2D toDuplicate){
    this.x = toDuplicate.x;
    this.y = toDuplicate.y;
  }
  
  public Vector2D(){}
  
  public Vector2D fromPolar(float angle, float magnitude){
     this.x = cos(angle)*magnitude;
     this.y = -sin(angle)*magnitude;
     return this;
  }
  
  public float distanceSquared(Vector2D from){
    return sq(this.x - from.x) + sq(this.y - from.y);
  }
  
  public float distance(Vector2D from){
    return (float) sqrt(this.distanceSquared(from));
  }
  
  public boolean samePoint(Vector2D as){
    return (this.x == as.x && this.y == as.y);
  }
  
  public Vector2D addVector(Vector2D toAdd){
    return new Vector2D(this.x + toAdd.x, this.y + toAdd.y);
  }
  
  public Vector2D multiplyScalar(float amount){
    return new Vector2D(this.x * amount, this.y * amount);
  }
  
  public void printVector(){
    println("x: " + this.x + ", y: " + this.y);
  }
}
