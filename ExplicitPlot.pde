public class ExplicitPlot extends Plot {
  
  Function f;
  float xMin;
  float xMax; 
  float yMin;
  float yMax;
  
  public ExplicitPlot (String f, float xMin, float xMax, float yMin, float yMax) {
    this.f = new Function(f);
    this.xMin = xMin;
    this.xMax = xMax;
    this.yMin = yMin;
    this.yMax = yMax;
  }
  
  float trX (float graphCoord) {return map(graphCoord, xMin, xMax, 0, width);}
  float trY (float graphCoord) {return map(graphCoord, yMin, yMax, height, 0);}
  
  void render() {
    //stroke(255);
    //strokeWeight(4);
    noFill();
    beginShape();
    for(int i = 0; i < width; i++) {
      vertex(i, trY((float)(f.calculate(map(i, 0, width, xMin, xMax)))));
    }
    endShape();
    
  }
  
}
