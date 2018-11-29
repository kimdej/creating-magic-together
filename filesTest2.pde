/**
 * Frames 
 * by Andres Colubri. 
 * 
 * Moves through the video one frame at the time by using the
 * arrow keys. It estimates the frame counts using the framerate
 * of the movie file, so it might not be exact in some cases.
 */
import processing.video.*;

Movie video1;
Movie video2;

PImage img1;

void setup() {
  size(1920, 1080);
  background(0);
  video1 = new Movie(this, "livestream.mp4");
  video1.loop();
  video2 = new Movie(this, "walk.mp4");
  video2.loop();

  img1 = loadImage("text.png");
  //imageMode(CENTER);
  // Pausing the video at the first frame. 
  //mov.play();
  //mov.jump(0);
  //mov.pause();
}

void movieEvent(Movie m) {
  m.read();
  //video2.read();
}

void draw() {
  background(200);

  pushMatrix();
  scale(3);
  image(video1, 0, 0);
  popMatrix();

  pushMatrix();
  image(img1, 0, 0);
  blendMode(NORMAL);
  popMatrix();

  //pushMatrix();
  //translate(0, -90);
  pushMatrix();
  blendMode(MULTIPLY);
  scale(1.5);
  image(video2, 0, -50);

  popMatrix();

  blendMode(NORMAL);
  //popMatrix();
  //blendMode(NORMAL);
  //pushMatrix();
  //String s = "75% v/d mensen heeft vanavond een leuke avond";
  //fill(250);
  //strokeWeight(30);
  //stroke(25, 30, 200);

  //textSize(25);
  //text(s, 400, 500, 600, 100);  // Text wraps within text box
  //popMatrix();
}