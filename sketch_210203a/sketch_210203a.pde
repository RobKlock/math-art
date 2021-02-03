float t;
void setup(){

  size(600,600);
  
}
void draw(){
  strokeWeight(.1);
  stroke(0);
  strokeWeight(.1);
  colorMode(RGB, 100);
  beginShape();
  strokeWeight(.5);
  translate(width/2, height/2);
  vertex(x1(t), y1(t));
  quadraticVertex(x2(t), y2(2), t/100, cos(t) * 3);
  quadraticVertex(x2(t), y2(2), -t/100, sin(t) * 3);
 // point(x2(t), y2(t));
  t++;
  endShape(CLOSE);
}

float x1(float t){
  return sin(t/10) + cos(t * 3) * 80; 
 
}
float y1(float t){
   return cos(t/3) * 10; 
}

float x2(float t){
  return sin(t/10) * 3 + cos(t * 7) * 80; 
 
}
float y2(float t){
   return sin(t) * 400 + noise(400,500); 
}
