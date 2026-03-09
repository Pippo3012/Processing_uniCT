Drone d;
DroneS ds;

void setup(){
 size(500,500);
 d = new Drone();
 ds = new DroneS();
}

void draw(){
 background(0); 
 d.run();
 ds.run();
}

void keyPressed(){
 if(key == 'r'|| key == 'R'){
  setup(); 
 }
}
