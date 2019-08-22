class RGBValue{
  int r;
  int g;
  int b;
  
  public RGBValue(int r, int g, int b){
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  public RGBValue(){}
  
  public RGBValue generateRandomFireworkColor(){
    RGBValue red = new RGBValue((int) random(150, 220), (int) random(0, 50), (int) random(0, 50));
    RGBValue green = new RGBValue((int) random(0, 50), (int) random(150, 200), (int) random(20, 100));
    RGBValue blue = new RGBValue((int) random(0, 80), (int) random(0, 80), (int) random(150, 220));
    RGBValue gold = new RGBValue((int) random(220, 255), (int) random(220, 255), (int) random(150, 200));
    RGBValue[] colors = new RGBValue[]{red, green, blue, gold};
    return colors[floor(random(0, 4))];
  }
}
