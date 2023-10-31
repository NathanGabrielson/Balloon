double distance (double startX, double startY, double endX, double endY) {
  double xComp = Math.pow((endX - startX),2);
  double yComp = Math.pow((endY - startY),2);
  return (Math.sqrt(xComp + yComp));
} 

class Balloon {
  int inc = 1;
  float X, Y = 250;
  float size = 10;
  
  float mySize = 10;
  
  void inflate() {
    size+=inc;
  }
  
  void move() {
    if (Math.random() < 0.5) {
      X += inc;
    }
    else {
      X -= inc;
    }
    if (Math.random() < 0.5) {
      Y += inc;
    }
    else {
      Y -= inc;
    }
  }

  void show() {
    ellipse(X, Y, size * 2, size * 2);
  }
  
  void toggle() {
    inc = -inc;
  }
  
  boolean checkInflate() {
    double verify = distance(X, Y, mouseX, mouseY);
    if (verify < size) {
      inflate();
      return true;
    }
    else {
      return false;
    }   
  }
  
  void update() {
    move();
    show();
    
    if (X - size < 0 || X + size > height || Y - size < 0 || Y + size > height) {
      X = (int)(Math.random() * 250);
      Y = (int)(Math.random() * 250);
    }
    
  }
  
  Balloon() {
    mySize = 0.0;
    X = width/2;
    Y = height/2;
  }
}
