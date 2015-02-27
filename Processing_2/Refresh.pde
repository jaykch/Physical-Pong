//THIS TAB CONTAINS THE REFRESH FUNCTION WHICH REFRESHES THE GAME AfTER EVERY POINT

int pointDelay=500;//adjust this to change the delay after every point

void refresh()
{
  if(X<0)
  {
    noLoop();
    delay(pointDelay);
    loop();
    X=width/2;
    Y=height/2;
    deltaX=-5;
    deltaY=5;
  }
  if(ballRight()>width)
  {
    noLoop();
    delay(500);
    loop();
    X=width/2;
    Y=height/2;
    deltaX=5;
    deltaY=-5;
  }
}
 /* if ((ballRight()>width)||(X<0))//if statement to end the game
  {
    fill(0,0,0,100);
    rect(0,0,width,height);
    noLoop();
  }*/
