// Robert Kurdyak, 22 April, 2015

void setup() {
  
  size(500, 500);
  
  noFill();
  myCircle(250, 250, 100, 1);
  
}

// Draws successively smaller circles in four diagonal directions
void myCircle(float xShift, float yShift, float theWidth, float exitValue) {

 
  // Draw a circle with the given width and exit value
  ellipse(xShift, yShift, theWidth, theWidth);
  
  //Only call this function again (recurse) if we have NOT reached the exit value
  if (theWidth > exitValue) {

    myCircle(xShift + 10, yShift + 10, theWidth - 2, exitValue);
    //(xShift + 10, yShift - 10, theWidth - 2, exitValue);
    //(xShift - 10, yShift + 10, theWidth - 2, exitValue);
    //(xShift - 10, yShift - 10, theWidth - 2, exitValue);
  }
}
