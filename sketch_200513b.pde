PGraphics canvas;

float g_rate = 1.003;
float x = 1;
float y = 0;

float x_prev = 1;
float y_prev = 0;

void setup(){
  
  size(900,900);
  canvas = createGraphics(900,900);
  canvas.beginDraw();
  canvas.background(255);
  canvas.endDraw();
}

void draw(){
  
  image(canvas,0,0);
  stroke(0);
  strokeWeight(2);
  
  canvas.beginDraw();
  canvas.translate(0,450);
  canvas.strokeWeight(2);
  canvas.point(x,y);
  canvas.endDraw();
  
  x_prev = x;
  y_prev = y;
  
  x = x * g_rate;
  y = -x * cos(x);;
  
  canvas.beginDraw();
  canvas.translate(0,450);
  canvas.strokeWeight(1);
  canvas.line(x_prev,y_prev, x, y);
  canvas.endDraw();
}
