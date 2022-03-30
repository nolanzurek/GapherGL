class Axes extends Plot{
  
  float xMin;
  float xMax; 
  float yMin;
  float yMax;
  int bigLN;
  int smallLN;
  
  public Axes (float xMin, float xMax, float yMin, float yMax, int bigLN, int smallLN) {
    this.xMin = xMin;
    this.xMax = xMax;
    this.yMin = yMin;
    this.yMax = yMax;
    this.bigLN = bigLN;
    this.smallLN = smallLN;
  }
  
  float trX (float graphCoord) {return map(graphCoord, xMin, xMax, 0, width);}
  float trY (float graphCoord) {return map(graphCoord, yMin, yMax, height, 0);}
  
  public void render() {
    
    //change to square or smth idk
    background(0);
    stroke(40);
    
    // y and x axis
    line(0, trY(0), width, trY(0));
    line(trX(0), 0, trX(0), height);
    
    // Big Lines
    
    strokeWeight(4);
    
    for(float i = 0; i < xMax; i += bigLN) {
      line(trX(i), 0, trX(i), height);
    }
    for(float i = 0; i > xMin; i -= bigLN) {
      line(trX(i), 0, trX(i), height);
    }
    for(float i = 0; i < yMax; i += bigLN) {
      line(0, trY(i), height, trY(i));
    }
    for(float i = 0; i > yMin; i -= bigLN) {
      line(0, trY(i), height, trY(i));
    }
    
    // Small Lines
    
    strokeWeight(2);
    
    for(float i = 0; i < xMax; i += smallLN) {
      line(trX(i), 0, trX(i), height);
    }
    for(float i = 0; i > xMin; i -= smallLN) {
      line(trX(i), 0, trX(i), height);
    }
    for(float i = 0; i < yMax; i += smallLN) {
      line(0, trY(i), height, trY(i));
    }
    for(float i = 0; i > yMin; i -= smallLN) {
      line(0, trY(i), height, trY(i));
    }
    
  }
  
}
