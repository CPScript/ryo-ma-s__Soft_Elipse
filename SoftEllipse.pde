public class SoftEllipse{
  private float x, y;
  private float diameterX, diameterY = 0.0;
  private float scale;
  private boolean fillFlag = true;

  public SoftEllipse(float x, float y){
    this.x = x;
    this.y = y;
    this.scale = random(0.1, 1);
  }

  public void draw(){
    stroke(random(100), random(100), 255);
    if(this.fillFlag){
      fill(random(100), random(100), 255);
    }
    ellipse(this.x, this.y, this.diameterX, this.diameterY);
  }

  public void move(){
    this.x = this.x + random(-8, 8);
    this.y = this.y + random(-8, 8);
  }

  public void deformation(){
    this.diameterX = float(mouseX) * this.scale;
    this.diameterY = float(mouseY) * this.scale;
  }

  public void switchFill(){
    if(this.fillFlag){
      this.fillFlag = false;
    }else{
      this.fillFlag = true;
    }
  }
}
