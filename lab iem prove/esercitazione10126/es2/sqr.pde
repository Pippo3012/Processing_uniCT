PImage sqr(PImage I){
 PImage R = I.copy();
 
 for(int x = 0; x < I.width/2; x++){
   for(int y = I.height/2; y < I.height; y++){
    int idx = x + y * I.width;
    
    R.pixels[idx] = color(255,255,0);
   }
 }
 return R;
}
