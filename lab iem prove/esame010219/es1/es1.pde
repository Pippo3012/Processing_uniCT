Ball b;
HyperBall hb;

void setup(){
  size(512,256);
  b = new Ball();
  hb = new HyperBall();
}

void draw(){
  background(0);
  b.run();
  hb.run();
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
