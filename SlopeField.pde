// for now, it just does one per unit
// make this parameter-changeable

public class SlopeField extends Plot {
  
  Function f;
  float xMin;
  float xMax; 
  float yMin;
  float yMax;
  
  public SlopeField (String f, float xMin, float xMax, float yMin, float yMax) {
    this.f = new Function(f);
    this.xMin = xMin;
    this.xMax = xMax;
    this.yMin = yMin;
    this.yMax = yMax;
  }
  
  float trX (float graphCoord) {return map(graphCoord, xMin, xMax, 0, width);}
  float trY (float graphCoord) {return map(graphCoord, yMin, yMax, height, 0);}
  
  void render() {
    strokeWeight(1);
    // 0.5 is an arbitrary value: this means the density of lines is 1/0.5^2 = 4 lines per unit
    for(float i = yMin; i < yMax; i += 0.5) {
      for(float j = xMin; j < xMax; j += 0.5) {
        float slope = (float)f.calculate(j, i);
        float curJ = trX(j);
        float curI = trY(i);
        line(curJ, curI, curJ+5*cos(atan(slope)), curI-5*sin(atan(slope)));
      }
    }
    
  }
  
}
