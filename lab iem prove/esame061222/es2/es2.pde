PImage I;

void setup(){
  size(512,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  image(I,0,0);
  image(rev(I),256,0);
}

void draw(){

}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
