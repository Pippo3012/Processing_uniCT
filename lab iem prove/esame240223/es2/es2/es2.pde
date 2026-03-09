PImage I;

void setup(){
  size(512,512);
  I = loadImage("lena.png");
  image(wow(I),0,0);
}

void draw(){

}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
