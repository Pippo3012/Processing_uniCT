ArrayList<Voto> v;
ArrayList<Votone> v1;

void setup(){
 size(500,500); 
 v = new ArrayList<Voto>();
 v1 = new ArrayList<Votone>();
}

void draw(){
 background(0); 
 for(Voto v1 : v){
  v1.run(); 
 }
 for(Votone v2 : v1){
  v2.run(); 
 }
}

void keyPressed(){
 if(key == 'r'){
  setup(); 
 }
}

void mousePressed(){
 if(mouseButton == LEFT){
  v.add(new Voto()); 
 }
 if(mouseButton == RIGHT){
  v1.add(new Votone()); 
 }
}
