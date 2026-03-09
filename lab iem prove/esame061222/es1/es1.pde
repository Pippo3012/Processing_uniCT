Mongolfiera m;
MongolfieraM M;

void setup(){
  size(512,512);
  m = new Mongolfiera();
  M = new MongolfieraM();
}

void draw(){
  background(255);
  m.run();
  M.run();
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
