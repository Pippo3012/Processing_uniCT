PImage wow(PImage I){
  PImage R = I.copy();
  
  PImage metasx = I.get(0,0,I.width/2,I.height);
  PImage metadx = I.get(I.width/2,0,I.width/2,I.height);
  R.set(0,0,metadx);
  R.set(I.width/2,0,metasx);
  float perc = random(0,100);
  float limite = (I.height * I.width) * (perc/100);
  println(limite);
  float r,g,b;
  
  for(int x = 0; x < I.width; x++){
    for(int y = 0; y < I.height; y++){
       int idx = x + y * I.width;
       
       r = red(R.pixels[idx]);
       g = green(R.pixels[idx]);
       b = blue(R.pixels[idx]);
       
       if(idx < limite){
          R.pixels[idx] = color(b,g,r);
       }else{
          R.pixels[idx] = color(r,b,g); 
       }
    }
  }
  return R;
}
