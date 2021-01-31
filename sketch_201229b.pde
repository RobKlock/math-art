PGraphics canvas;
float cx = 0;
float cy = 0; 
float g = .4;
float t = 100;
void setup(){
  size(1200,1000);
  cx = width/2;
  cy = height/2;
  canvas = createGraphics(width,height);
  canvas.beginDraw();
  canvas.background(255);
  canvas.endDraw();
}
float x1(float t, int i){
  //return sin(t/10) * 20 + cos(i / 10) * 4 * noise(10);
  i++;
  return tan(t);
 
 
}
float y1(float t){
   return cos(t/10) * 8  + cos(t / 100) * noise(100, 1000); 
}

float x2(float t){
  return sin(t / 10) * 300 + cos(t) * 2 * noise(100); 
 
}
float y2(float t){
   return sin(t / 10) + sin(t / 100) * x2(t - 1) * noise(50); 
}

void draw(){
  int i = 10;
  translate(width/2, height/2);
  strokeWeight(1);
  stroke(noise(255));
  line(x1(t + i, i),y1(t + 1), x2(t + 200) , y2(t + 1));
  
  t++;
}
