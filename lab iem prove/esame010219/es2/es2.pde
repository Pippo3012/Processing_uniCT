PImage I, I1;

void setup(){
  int n = int(random(3,11));
  int h = int(random(1,256));
  int k = int(random(1,256));
  size(768,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  I.filter(GRAY);
  image(I,0,0);
  I1 = hash(I,h,k);
  image(I1,256,0);
  image(mas(I1,n),512,0);
}

void draw(){
  
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
