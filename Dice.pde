int totalPips = 0; // Initialize totalPips

void mousePressed() {
  redraw();
}

class Dice {
  int pips;
  int myX, myY;
  
  Dice(int x, int y) {
    myX = x;
    myY = y;
  }
  
  void roll() {
    pips = (int)(Math.random() * 6) + 1;
    totalPips += pips; // Add the pips to the total
  }
  
  void show() {
    float centerX = myX + 50;
    float centerY = myY + 50;
    fill((int)(Math.random()*266),(int)(Math.random()*266),(int)(Math.random()*266));
    rect(myX, myY, 100, 100, 28);
    fill(225);
    
    // Draw pips
    showPips(centerX, centerY);
  }
  
  void showPips(float centerX, float centerY) {
    centerX = myX + 50;
    centerY = myY + 50;
    fill((int)(Math.random()*266),(int)(Math.random()*266),(int)(Math.random()*266));
    rect(myX,myY, 100,100,28);
    fill(225);
    if(pips == 1)
    ellipse(centerX,centerY,15,15);
    if(pips == 2){
    ellipse(centerX - 30,centerY - 25,15,15);
    ellipse(centerX + 30,centerY + 25,15,15);
    }
    if(pips == 3){
      ellipse(centerX, centerY,15,15);
      ellipse(centerX - 30,centerY - 25,15,15);
    ellipse(centerX + 30,centerY + 25,15,15);
    }
    if(pips == 4) {
      ellipse(centerX - 30,centerY - 25,15,15);
    ellipse(centerX + 30,centerY + 25,15,15);
    ellipse(centerX - 30,centerY + 25,15,15);
    ellipse(centerX + 30,centerY - 25,15,15);
    }
    if(pips == 5) {
      ellipse(centerX - 30,centerY - 25,15,15);
    ellipse(centerX + 30,centerY + 25,15,15);
    ellipse(centerX - 30,centerY + 25,15,15);
    ellipse(centerX + 30,centerY - 25,15,15);
    ellipse(centerX,centerY,15,15);
    }
    if(pips == 6) {
      ellipse(centerX - 30,centerY - 25,15,15);
    ellipse(centerX + 30,centerY + 25,15,15);
    ellipse(centerX - 30,centerY + 25,15,15);
    ellipse(centerX + 30,centerY - 25,15,15);
    ellipse(centerX - 30,centerY,15,15);
    ellipse(centerX + 30,centerY,15,15); 
    }
     fill(0);
    textSize(20);
    text(pips, myX + 50, myY + 110);
    noLoop();
  }
}


Dice bob;

void setup() {
  size(1000, 1000);
  textAlign(CENTER, CENTER);
  textSize(20);
  noLoop();
}

void draw() {
  background((int)(Math.random()*266),(int)(Math.random()*266),(int)(Math.random()*266));;
  totalPips = 0; 
  
  for (int x = 50; x < 1000; x = x + 200) {
    for (int y = 50; y < 750; y = y + 150) {
      bob = new Dice(x, y);
      bob.roll();
      bob.show();
    }
  }
  
  fill(255);
  rect(0, 0, width, 40);
  fill(0);
  text("Total Pips: " + totalPips, width / 2, 20);
}
