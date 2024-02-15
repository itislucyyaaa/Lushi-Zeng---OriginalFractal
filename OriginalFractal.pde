public void setup(){
  size(500,500);
  rectMode(CENTER);
}

public void draw(){
  background(0);
  myFractal(250,250,480);
}

public void myFractal(float x, float y, float siz){
  stroke(255);
  noFill();
  ellipse(x,y,siz,siz);
  rect(x,y,siz,siz);
  if(siz>50){
    myFractal(x-siz*3/4,y,siz/2);
    myFractal(x+siz*3/4,y,siz/2);
    myFractal(x,y-siz*3/4,siz/2);
    myFractal(x,y+siz*3/4,siz/2);
  }
}
