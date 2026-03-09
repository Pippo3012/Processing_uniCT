ArrayList<Smile> s;
ArrayList<MegaSmile> M;

void setup(){
  size(500,500);
  s = new ArrayList<Smile>();
  M = new ArrayList<MegaSmile>();
}

void draw(){
  background(0);
  for(Smile s1:s){
   s1.run(); 
  }
  for(MegaSmile s2: M){
   s2.run(); 
  }
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}

void mousePressed(){
 if(mouseButton == LEFT){
  s.add(new Smile()); 
 }
 if(mouseButton == RIGHT){
  M.add(new MegaSmile()); 
 }
}
