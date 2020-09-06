TextReader myTR;
PFont wordFont;
int lastX;
int lastY;
float distance;

void setup()
{
  size (600,600);
  myTR = new TextReader("DaveBarry.txt");
  wordFont = createFont("sans-serif",10);
  textFont(wordFont);
  lastX = 0;
  lastY = 0;
}

void draw()
{
  save("resultInWindow.png");
}

void mouseDragged()
{
  textAlign(CENTER);
  fill(0);
  distance = pow(mouseX - lastX,2) + pow(mouseY - lastY,2);
  
  if (distance > 60)
  {
    text(myTR.nextLetter(), mouseX, mouseY);
    lastX = mouseX;
    lastY = mouseY;
  }
  if (myTR.isAtEnd())
  {
    myTR.resetToStart();
  }
}

  
void mousePressed()
{
  lastX = mouseX;
  lastY = mouseY;
}
