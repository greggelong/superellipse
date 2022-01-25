void setup(){
 size(600,600);
 
 background(255);
 
 
  
}


void draw(){
  translate(width/2,height/2);
  for(int x=-1000; x<1000;x++){
     float y=0.02* (x*x)-200;
     point(x,y);
  }
  
}
