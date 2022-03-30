// Highest class: GraphScene
// can contain: axes, plots
// plots can contain: expressions, points, tangent lines, etc

// remove the need to write f(x) in the function def

void setup() {
  size(800, 800);
  colorMode(HSB);
}

void draw () {
  
  Axes myAxes = new Axes(0, 10, 0, 10, 5, 1);
  Plot temp2 = new ExplicitPlot("f(x) = tan(x)", -10, 10, -10, 10);
  Plot temp3 = new ParametricPlot("(x-2*sin(2.625*x), 4*sin(x))" , -10, 10, -10, 10, -10, 10);
  Plot temp4 = new PolarPlot("f(x) = (x+3)*(x-2)/(x-5)", -10, 10, -10, 10, -20, 10);
  Plot temp5 = new SlopeField("f(x, y) = y/x + y - x", -10, 10, -10, 10);
  Plot temp6 = new ImplicitPlot("x^y = y^x", 0, 10, 0, 10);
  
  myAxes.render();
  
  stroke(255);
  strokeWeight(4);
  
  //temp5.render();
  
  //temp6.render();
  
  //Util.renderAll(temp6);
  noFill();
  temp6.render();
  noLoop();
}

void keyPressed() {
  saveFrame("output/" + year() + month() + day() + hour() + minute() + second() + millis() + ".png");
}
