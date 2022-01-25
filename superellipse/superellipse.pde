float r = 100;
float a =300;
float b = 200;
float n = 2.5;
void setup(){
 size(700,600);
 background(0);
 
  
}

void draw(){
 background(0);
 n = map(mouseX,0, width, 0,8);
 translate(width/2,height/2);
 stroke(0,255,0);
 noFill();
 beginShape();
 for(int angle = 0; angle<360;angle++){
  //float x = r * cos(radians(a));
  //float y = r * sin(radians(a));
  // from wikipedia
  float na = 2/n;
  float x = pow(abs(cos(radians(angle))),na)*a*sgn(cos(radians(angle)));
  float y = pow(abs(sin(radians(angle))),na)*b*sgn(sin(radians(angle)));
  vertex(x,y);
   
 }
 endShape(CLOSE);
}

int sgn(float val){
  // returns 1 -1 or 0
  if(val >0){
    return 1;
  }else if(val<0){
    return -1;
  }else{
    return 0; 
  }
  
  
  
}
