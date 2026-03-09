PImage I;

void setup(){
 int N = int(random(5,15));
 size(768,256);
 I = loadImage("lena.png");
 I.resize(256,256);
 I.filter(GRAY);
 image(I,0,0);
 image(rev(I),256,0);
 image(med(rev(I), N), 512,0);
}

void draw(){
  
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
