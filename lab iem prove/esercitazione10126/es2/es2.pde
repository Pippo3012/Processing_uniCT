PImage I;

void setup(){
  size(768,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  image(I,0,0);
  image(sqr(I),256,0);
  image(colo(sqr(I)),512,0);
}

void draw(){
  
}
