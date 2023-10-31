Balloon Bal;
Balloon balTwo;

void setup() {
  size(500,500);
  Bal = new Balloon();
  balTwo = new Balloon();
  fill(255,0,0,150);
  Bal.inflate();
  balTwo.inflate();
}

void draw() {
  background(255);
  Bal.update();
  balTwo.update();
  Bal.checkInflate();
  balTwo.checkInflate();
}

void keyPressed () {  
  System.out.println("Keypress");
  if (key == 'r') {
    System.out.println("R detected");
    Bal.toggle();
    balTwo.toggle();
  }
}
