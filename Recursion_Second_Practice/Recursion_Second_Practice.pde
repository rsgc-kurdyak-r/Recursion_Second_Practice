// Robert Kurdyak, 22 April, 2015

void setup() {
  
  size(500, 500);
  
  myCircle(250, 250, 50, 1);
  
}

// Draws successively smaller circles in four diagonal directions
void myCircle(float xShift, float yShift, float theWidth, float exitValue);

  // Draw a circle with the given width and exit value
  ellipse(xShift, yShift, theWidth, the Width);
  
  //Only call this function again (recurse) if we have NOT reached the exit value
  if (theWidth > exitValue) {
    drawCircle(xShift + 10, yShift + 10, theWidth - 1, exitValue);
    drawCircle(xShift + 10, yShift - 10, theWidth - 1, exitValue);
    drawCircle(xShift - 10, yShift + 10, theWidth - 1, exitValue);
    drawCircle(xShift - 10, yShift - 10, theWidth - 1, exitValue);
  }
}
