// Robert Kurdyak, 22 April, 2015

void setup() {
  
  size(500, 500);
  
  //The number of different functions that can happen depends on the number of parameters, not what's in the "if" statements. 
  noFill();
  myCircle(250, 250, -10, 10, 100, 1);
  myCircle(250, 250, 10, 10, 100, 1);
  myCircle(250, 250, -10, -10, 100, 1);
  myCircle(250, 250, 10, -10, 100, 1);
  
}

// Draws successively smaller circles in four diagonal directions
void myCircle(float x, float y, float xShift, float yShift, float theWidth, float exitValue) {

 
  // Draw a circle with the given width and exit value
  ellipse(x, y, theWidth, theWidth);
  
  //Only call this function again (recurse) if we have NOT reached the exit value
  if (theWidth > exitValue) {

    myCircle(x + xShift, y + yShift, xShift, yShift, theWidth - 3.2, exitValue);
   
  }
}
