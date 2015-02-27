//THIS TAB DEFINES THE BALL AND CONTAINS FUNCTIONS FOR ITS MOVEMENT AND DIMENSSIONS

float X;//define x cordinate for ball
float Y;//define y coordinate of the ball
float ballH=20;//height of the ball
float ballW=20;//width of the ball
float deltaX=-3;//random(1,2);//initial horizontal speed of the ball. Note: use the random code and change the range to get a random speed after every point
float deltaY=-3;//random(1,2);//initial vertical speed of the ball. Note: use the random code and change the range to get a random speed after every point
float speedVariableY=5;//vertical speed of the ball when it hits a paddle
float speedVariableX=5;//horizontal speed of the ball when it hits a paddle

//following functions are used throughout the code as a replacement for each edge of the square ball to make the code more dynamic.
float ballRight()
{
  return X+ballW;
}
float ballLeft()
{
  return X;
}
float ballTop()
{
  return Y;
}
float ballBottom()
{
  return Y+ballH;
}

void ballMovement()//function to bounce the ball off from top and bottom edges
{
  X=X+deltaX;//change in horizontal position of the ball
  Y=Y+deltaY;//change in verticle position of the ball
 

  if (ballBottom()>height-cautionDistanceBottom)
  //added 20 to adjust the difference
  //if statement to bounce the ball back from bottom
  {
    deltaY=-deltaY;
    //deltaY=-speed-1;//use this when using speed control through magnetic switches
  }
 
  if (ballTop()<0+cautionDistanceTop)//if statement to bounce the ball back from top
  {
    deltaY=-deltaY;
    //deltaY=speed+1;//use this when using speed control through magnetic switches
  }
}
