//THIS TAB CONTROLS THE COLLISIONS OF THE BALL WITH BOTH PADDLES
//IMPORTANT: THE ALGORITHM USED IN THE FOLLOWING FUNCTIONS IS CRUCIAL TO THE GAME. CHANGING IT MAY RESULT IN GAME NOT WORKING AT ALL

boolean collisionL()//function to bounce the ball off left paddle
{
  boolean returnValue = false;
  if((ballRight()>=XpaddleL)&&(ballLeft()<=XpaddleL+paddleLW))
  {
    if ((ballBottom()>=YpaddleL)&&(ballTop()<=YpaddleL+paddleLH))
    {
      returnValue = true;
      
    }
  }
  return returnValue;
}
boolean collisionR()//function to bounce the ball off right paddle
{
  boolean returnValue = false;
  if((ballRight()>=XpaddleR)&&(ballLeft()<=XpaddleR+paddleRW))
  {
    if ((ballBottom()>=YpaddleR)&&(ballTop()<=YpaddleR+paddleRH))
    {
      returnValue = true;
      
    }
  }
  return returnValue;
}
 /* if ((X<XpaddleL+10)&&(Y>=YpaddleL)&&(Y<=YpaddleL+paddleChange))
  //if statement to bounce the ball back from left paddle
  {
    deltaX=-deltaX;
  }*/
  /*if (X<0)//if statement to bounce the ball back from left edge
  {
    deltaX=-deltaX;
  }*/
