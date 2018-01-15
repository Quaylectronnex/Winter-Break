import processing.video.*;
Movie myMovie;

PImage archery;
PImage hill;
PImage scar;
PImage blade;

void setup ()
{

  fullScreen (P2D);
  scar = loadImage("Zugor.jpg");
  hill = loadImage("Shimla.png");
  archery = loadImage("Arch.png");
  blade = loadImage("Sword.png");

  myMovie = new Movie(this, "Bike.mp4");
  myMovie.play();
  myMovie.speed(0.5);
  myMovie.volume(0);
}


void draw ()
{
  image(scar, 0, 0, width, height);
  image(hill, 930, 80, width, height);
  image(archery, 1500, 600);
  image(blade, 1060, -100);
  if (myMovie.time()<myMovie.duration())
  {
   image(myMovie, 0, 0, width, height);
  myMovie.frameRate(80);
  }


  
}

void movieEvent(Movie m) 
{
  m.read();
}