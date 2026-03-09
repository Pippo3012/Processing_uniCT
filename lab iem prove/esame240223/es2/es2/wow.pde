PImage wow(PImage I){
 PImage R = I.copy();
 
 PImage terzosx = I.get(0,0,I.width/3,I.height);
 PImage terzodx = I.get(2*I.width/3,0,I.width/3,I.height);
 
 float r,g,b;
 float f = random(0,2);
 println(f);
 terzosx.loadPixels();
 terzodx.loadPixels();

  for(int i = 0; i < terzosx.pixels.length; i++){
   r = red(terzosx.pixels[i]);
   g = green(terzosx.pixels[i]);
   b = blue(terzosx.pixels[i]);
   terzosx.pixels[i] = color(r/f,g,b);
  }

  for(int i = 0; i < terzodx.pixels.length; i++){
   r = red(terzodx.pixels[i]);
   g = green(terzodx.pixels[i]);
   b = blue(terzodx.pixels[i]);
   terzodx.pixels[i] = color(r*f,g,b);
  }
  
  terzosx.updatePixels();
  terzodx.updatePixels();
  
  R.set(0,0,terzodx);
  R.set(2*I.width/3,0,terzosx);
 return R;
}
