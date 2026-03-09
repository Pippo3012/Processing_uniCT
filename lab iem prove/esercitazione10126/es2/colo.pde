PImage colo(PImage I){
 PImage R = I.copy();
 float r,g,b;
 for(int x = 0; x < I.width; x++){
  for(int y = 0; y < I.height; y++){
   int idx = x + y * I.width;
   
   r = red(R.pixels[idx]);
   g = green(R.pixels[idx]);
   b = blue(R.pixels[idx]);
   
   if(x > y){
    R.pixels[idx] = color(255,g,b); 
   }else{
    R.pixels[idx] = color(r,g,255); 
   }
  }
 }
 return R;
}
