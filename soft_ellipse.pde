static final int SOFT_ELLIPSE_SIZE = 6;
ArrayList<SoftEllipse> softEllipseList = new ArrayList<SoftEllipse>();
void setup(){
  pixelDensity(displayDensity());
  size(800, 800);
  background(0);
  frameRate(20);
  for(int i = 0; i < SOFT_ELLIPSE_SIZE; i++){
    float x = random(0, width);
    float y = random(0, height);
    softEllipseList.add(new SoftEllipse(x, y));
  }
}
void draw(){
	resetDisplay();
  for(SoftEllipse softEllipse: softEllipseList){
    softEllipse.draw();
    softEllipse.move();
    softEllipse.deformation();
  }
}

void mousePressed(){
  for(SoftEllipse softEllipse: softEllipseList){
    softEllipse.switchFill();
  }
}

void resetDisplay(){
    fill(0, 10);
    noStroke();
    rect(0, 0, width, height);
}
