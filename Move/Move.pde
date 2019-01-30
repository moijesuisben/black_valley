float z = 0;

void setup() {
    size(600, 600);
    //fullScreen();
}

void draw() {
    noStroke();
    fill(0, 20);
    rect(0,0,height,width);
    stroke(160, 55);
    
   
    for (float y = 0; y < height; y = y + 20) {
      
        for (float x = 0; x < width; x = x + 1) {
            point(x, y + map(noise(x/150, y/150, z), 0, 1, -100, 100));
        }
    }

    z = z + 0.04;
}
