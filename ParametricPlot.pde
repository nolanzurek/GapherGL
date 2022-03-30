public class ParametricPlot extends Plot {
  
  Function f1;
  Function f2;
  float xMin;
  float xMax; 
  float yMin;
  float yMax;
  float t1;
  float t2;
  
  public ParametricPlot (String f, float xMin, float xMax, float yMin, float yMax, float t1, float t2) {
    
    // (g(t), h(t))
    String[] temp = f.substring(1, f.length() -1).split(",");
    this.f1 = new Function("f(x) = " + temp[0]);
    this.f2 = new Function("g(x) = " + temp[1]);
    
    //this.f1 = new Function(f1);
    //this.f2 = new Function(f2);
    this.xMin = xMin;
    this.xMax = xMax;
    this.yMin = yMin;
    this.yMax = yMax;
    this.t1 = t1;
    this.t2 = t2;
    
  }
  
  float trX (float graphCoord) {return map(graphCoord, xMin, xMax, 0, width);}
  float trY (float graphCoord) {return map(graphCoord, yMin, yMax, height, 0);}
  
  void render() {
    //stroke(255);
    //strokeWeight(4);
    noFill();
    beginShape();
    float dx = abs(t1-t2)/300;
    for(float i = t1; i < 300; i+= dx) {
      vertex(trX((float)(f1.calculate(i))), 
             trY((float)(f2.calculate(i))));
    }
    endShape();
    
  }
  
}
