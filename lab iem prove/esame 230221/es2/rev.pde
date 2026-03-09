PImage rev(PImage I){
 PImage R = I.copy();
 
 PImage metasx = I.get(0,0,I.width/2,I.height);
 PImage metadx = I.get(I.width/2,0,I.width,I.height);
 
 R.set(0,0,metadx);
 R.set(I.width/2,0,metasx);
 
 for(int x = 0; x < I.width; x++){
  for(int y = 0; y < I.height; y++){
   int idx = x + y * I.height;
   
   if(x == y){
    R.pixels[idx] = color(255,255,0);
   }
  }
 }
 return R;
}
