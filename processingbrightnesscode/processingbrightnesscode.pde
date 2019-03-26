PImage image;

void setup(){
  size(1200, 900);
  image = loadImage("img.png");
}

void draw(){
  loadPixels();
  image.loadPixels();
  //iterate through every pixel
  for(int x = 0; x < width; x++){
    for (int y = 0; y < height; y++){
      int pix = y*width + x; //find pixel
      float brightVal= brightness(image.pixels[pix]);
      if (brightVal > 10 + mouseX) {
        pixels[pix] = color(#be9b7b);
      } 
      //add optional else if statements
      else if (brightVal < 10 + mouseX && brightVal> mouseX - 10){
         pixels[pix] = color(#854442 );
      }
      //
      else {
        pixels[pix] = color(#4b3832);
      }
    }
  }
  updatePixels();
}
