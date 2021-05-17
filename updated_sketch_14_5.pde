float x;
float y;
float rotationSpeed = 0.0005;
float sinusFreq;
float yoff;
int maxY = 250;
Swell swell;
Shrink shrink;
boolean callSwell = false;

int amountOfPoints = 1000; 

void setup() {
 background(220, 200, 200);
//size(900,900);
 fullScreen();
swell = new Swell();
shrink = new Shrink();
}
 void keyPressed() {
   if (key == 'i') {
     callSwell = !callSwell;
    
     //rotationSpeed=0;
   } else if (key=='o') {
     rotationSpeed=-0.0005;
   }
   //else {
   //rotationSpeed = 0.0005;
   //}
  }
  
   void keyReleased() {
     if (key=='o') {
     rotationSpeed=rotationSpeed + 0.0005;
   }
  }


void draw() {
  background(0);
  if (callSwell == true) {
   swell.draw();
  } 
  sinusFreq = sinusFreq + 0.5;
  yoff = yoff + rotationSpeed;

  translate(width/2, height/2);
  strokeWeight(1);
  
  for (int i = 0; i < amountOfPoints; i+=2) {
      stroke(map(sin((sinusFreq / i * 10)), -1, 1, 200, 255),
      map(sin((sinusFreq / i * 5)), -1, 1, 0, 100),
      map(sin((sinusFreq / i * 20)), -1, 1, 100, 150));
      
      fill(map(sin((sinusFreq / i * 10)), -1, 1, 100, 200),
      map(sin((sinusFreq / i * 5)), -1, 1, 0, 100),
      map(sin((sinusFreq / i * 20)), -1, 1, 200, 255), 100);
      
      rotate(sin(yoff));
      
      square(0 + i / 3, y , cos((i/100 * yoff) * 0.1) * 10);
  }
 
}
