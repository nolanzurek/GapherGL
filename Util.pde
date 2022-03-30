public static class Util {
  
  public static void renderAll(Plot... plots) {
    for(Plot plot : plots) {
      plot.render();
    }
  }
  
}
