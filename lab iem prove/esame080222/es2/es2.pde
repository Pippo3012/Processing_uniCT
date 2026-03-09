PImage I;

void setup(){
  int N = int(random(5,15));
  println(N);
  size(768,256);
  I = loadImage("lena.png");
  I.filter(GRAY);
  I.resize(256,256);
  image(I,0,0);
  image(wow(I),256,0);
  image(massimo(wow(I),N),512,0);
}

void draw(){
  
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
