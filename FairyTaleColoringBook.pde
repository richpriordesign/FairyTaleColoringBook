//remaining buttons should be 3x34

PImage pages[];
int pgCount = 0;
color crayon = color (255, 0, 0);
int s = 0;
int frameNum = 0;


void setup() {
  size(612, 792);
  background(255);
  stroke(crayon);
  strokeWeight(5);
  smooth();
  pages = new PImage[4];
  pages[0] = loadImage("princess.png");
  pages[1] = loadImage("white.png");
  pages[2] = loadImage("knight.png");
  pages[3] = loadImage("white.png");
}

void draw() {

  
  image(pages[pgCount], 0, 0);

  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

  menu();
  
  if(frameNum == 0) save ( nfs(s, 30)+".tif");
  frameNum = frameNum < 1? frameNum+1: 0;
   s++;
}

void mousePressed() {
  if (mouseY > 765 ) {
    color c = get (mouseX, mouseY);
    crayon = c;
  }
}

void keyPressed() {
  if ( keyCode == RIGHT ) {
    pgCount = pgCount < pages.length-1? pgCount+1: 0;
    image( pages[pgCount], 0, 0 );
  }

  if ( key == '1' ) {
    strokeWeight(5);
  }

  if ( key == '2') {
    strokeWeight(10);
  }

  if (key == '3' ) {
    strokeWeight(15);
  }
  
  if (key == '4' ) {
    strokeWeight (20);
  }

  if ( key == 's' ) {

  }
}

void menu() {
  noStroke();
  fill(255, 0, 0); //red
  rect(0, 765, 30, 30);
  fill(0, 0, 255); //blue
  rect(30, 765, 30, 30);
  fill(25, 123, 48); //green
  rect(60, 765, 30, 30);
  fill(255, 255, 0); //yellow
  rect(90, 765, 30, 30);
  fill(255, 140, 0); //orange
  rect(120, 765, 30, 30);
  fill(102, 45, 145); //purple
  rect(150, 765, 30, 30);
  fill(237, 20, 91); //magenta
  rect(180, 765, 30, 30);
  fill(255, 192, 203); //pink
  rect(210, 765, 30, 30);
  fill(141, 191, 63); //greenyellow
  rect(240, 765, 30, 30);
  fill(0, 174, 239); //lightblue
  rect(270, 765, 30, 30);
  fill(204); //lightgray
  rect(300, 765, 30, 30);
  fill(149); //gray
  rect(330, 765, 30, 30);
  fill(255); //white
  rect(360, 765, 30, 30);
  fill(0); //black
  rect(390, 765, 30, 30);
  fill(255, 224, 189); //light tan
  rect(420, 765, 30, 30);
  fill(190, 114, 60); //tan
  rect(450, 765, 30, 30);
  fill(68, 0, 0); //darktan
  rect(480, 765, 30, 30);
  fill(140);
  rect(510, 765, 36, 30);
  fill(180);
  rect(543, 765, 36, 30);
  fill(210);
  rect(579, 765, 36, 30);
  fill (235);
  rect(612, 765, 35, 30);
  //menubar
  noStroke();
  fill(150);
  rect(0, 760, 792, 5);
  stroke(crayon);
}