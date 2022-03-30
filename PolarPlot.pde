public class PolarPlot extends Plot {
  
  Function f;
  float xMin;
  float xMax; 
  float yMin;
  float yMax;
  float minTheta;
  float maxTheta;
  
  public PolarPlot (String f, float xMin, float xMax, float yMin, float yMax, float minTheta, float maxTheta) {
    this.f = new Function(f);
    this.xMin = xMin;
    this.xMax = xMax;
    this.yMin = yMin;
    this.yMax = yMax;
    this.minTheta = minTheta;
    this.maxTheta = maxTheta;
  }
  
  float trX (float graphCoord) {return map(graphCoord, xMin, xMax, 0, width);}
  float trY (float graphCoord) {return map(graphCoord, yMin, yMax, height, 0);}
  
  void render() {
    //stroke(255);
    //strokeWeight(4);
    noFill();
    beginShape();
    float dx = abs(minTheta-maxTheta)/300;
    for(float i = minTheta; i < maxTheta; i+= dx) {
      vertex(trX((float)(f.calculate(i))*cos(i)), 
             trY((float)(f.calculate(i))*sin(i)));
    }
    endShape();
    
  }
  
}
