float referenceX;
float referenceY;


void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  drawStars();
  drawBody();
}

void drawStars() {
  fill(255);
  noStroke();

  referenceX = 250;
  referenceY = 250;

  triangle(referenceX-200, referenceY-200, referenceX-185, referenceY-200, referenceX-191.5, referenceY-185);
  triangle(referenceX-191.5, referenceY-205, referenceX-200, referenceY-190, referenceX-185, referenceY-190);

  triangle(referenceX+150, referenceY-135, referenceX+165, referenceY-135, referenceX+157.5, referenceY-120);
  triangle(referenceX+150, referenceY-125, referenceX+165, referenceY-125, referenceX+157.5, referenceY-140);

  triangle(referenceX, referenceY+150, referenceX+15, referenceY+150, referenceX+7.5, referenceY+165);
  triangle(referenceX+7.5, referenceY+145, referenceX, referenceY+160, referenceX+15, referenceY+160);

  triangle(referenceX-150, referenceY-100, referenceX-135, referenceY-100, referenceX-142.5, referenceY-85);
  triangle(referenceX-150, referenceY-90, referenceX-135, referenceY-90, referenceX-142.5, referenceY-105);

  triangle(referenceX-175, referenceY+200, referenceX-160, referenceY+200, referenceX-167.5, referenceY+215);
  triangle(referenceX-175, referenceY+210, referenceX-160, referenceY+210, referenceX-167.5, referenceY+195);

  triangle(referenceX+200, referenceY+170, referenceX+215, referenceY+170, referenceX+207.5, referenceY+185);
  triangle(referenceX+200, referenceY+180, referenceX+215, referenceY+180, referenceX+207.5, referenceY+165);

  triangle(referenceX-50, referenceY-230, referenceX-35, referenceY-230, referenceX-42.5, referenceY-215);
  triangle(referenceX-50, referenceY-220, referenceX-35, referenceY-220, referenceX-42.5, referenceY-235);

  triangle(referenceX+100, referenceY+100, referenceX+115, referenceY+100, referenceX+107.5, referenceY+115);
  triangle(referenceX+100, referenceY+110, referenceX+115, referenceY+110, referenceX+107.5, referenceY+95);

  triangle(referenceX+85, referenceY-220, referenceX+100, referenceY-220, referenceX+92.5, referenceY-205);
  triangle(referenceX+85, referenceY-210, referenceX+100, referenceY-210, referenceX+92.5, referenceY-225);

  triangle(referenceX-170, referenceY+65, referenceX-155, referenceY+65, referenceX-162.5, referenceY+80);
  triangle(referenceX-170, referenceY+75, referenceX-155, referenceY+75, referenceX-162.5, referenceY+60);
}

void drawBody() {
  referenceX = mouseX;
  referenceY = mouseY;

  //BASE
  stroke(0);
  fill(125);
  ellipse(referenceX, referenceY, 400, 150);

  fill(200);
  ellipse(referenceX, referenceY-25, 380, 100);

  // DOTS
  fill(255, 255, 0);
  stroke(0);
  ellipse(referenceX-150, referenceY-25, 20, 20);
  ellipse(referenceX, referenceY, 20, 20);
  ellipse(referenceX+150, referenceY-25, 20, 20);

  // CABIN
  fill(204, 204, 255);
  stroke(0);
  arc(referenceX, referenceY-25, 150, 225, PI, TWO_PI, CHORD);

  // LEGS
  stroke(125);
  strokeWeight(4);
  line(referenceX+125, referenceY+60, referenceX+150, referenceY+120);
  line(referenceX-125, referenceY+60, referenceX-150, referenceY+120);

  fill(255, 0, 0);
  strokeWeight(0);
  rect(referenceX+135, referenceY+120, 50, 15);
  rect(referenceX-185, referenceY+120, 50, 15);
}
