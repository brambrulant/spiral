class Shrink {
  
int elapse = 50;
int start;
int swellAmount;
 
void setup() { 
  start = millis();
  swellAmount = 0;
}
 
 void draw() {
 loop();
 println("loop?");
 if (millis()-start > elapse) 
 {
  for (float i = 0; i < swellAmount; i++) {
  y = -i;
  }
  swellAmount += 2;
  if (swellAmount > 100) {
  swellAmount = 0;
  }
  start = millis();
  
 }
 }
}
