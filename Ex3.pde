PImage background;
PImage sun;
PImage moon;
PImage earth;
int MAX_HEIGHT = 847;
int MIN_HEIGHT = 0;
int X_SUN = 1000;
int X_MOON = 100;

void setup() {
  size(1194, 847, P2D);
  background = loadImage("background.png");
  sun = loadImage("sun.png");
  moon = loadImage("moon.png");
  earth = loadImage("earth.png");
  
}

void draw() {
  background(background);
  
  image(earth, 1194/2 - 600/4, 848/2 - 314/2, 600, 314 );
  
  int s = second();
  int m = minute();
  int h = hour();
  
  float sunY = ((s + m * 60 + h * 60 * 60) /(float)(24 * 60 * 60)) * MAX_HEIGHT;
  float moonY = MAX_HEIGHT - sunY;
  
  image(sun, X_SUN,sunY, 100, 100);
  image(moon, X_MOON, moonY, 100, 150);
}
   
