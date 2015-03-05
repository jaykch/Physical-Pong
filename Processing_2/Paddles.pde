//THIS TAB DRAWS THE PADDLES FOR THE GAME
//ADJUST THE VARIABLES HERE TO CHANGE THE SHAPE AND SIZE OF THE PADDLES

float paddleEdgeDistance=30;//distance of both paddles from the left and right end of the screen

float paddleLW=30;//width of the left paddle
int paddleLH=300;//height of the left paddle
float XpaddleL;//X coordinate of the left paddle
float YpaddleL=100;//Y coordinate of left paddle

float paddleRW=30;//width of the right paddle
int paddleRH=300;//height of the right paddle
float XpaddleR;//X coordiante of the right paddle
float YpaddleR=300;//Y coordiante of right paddle

float paddleChange=30;//distance by which paddle changes position when keyboard is used


void paddles()
{
  XpaddleR=width-paddleRW-paddleEdgeDistance;//setting the X coordinate of right paddle
  XpaddleL=paddleEdgeDistance;//setting the X coordinate of left paddle 
  rect(XpaddleL,YpaddleL,paddleLW,paddleLH);//left paddle
  rect(XpaddleR,YpaddleR,paddleRW,paddleRH);//right paddle
  
  if (YpaddleR>height-paddleRH-cautionDistanceBottom)
  {
    YpaddleR=height-paddleRH-cautionDistanceBottom;
  }
  else if (YpaddleR<0+cautionDistanceTop)
  {
    YpaddleR=0+cautionDistanceTop;
  }
  if (YpaddleL>height-paddleLH-cautionDistanceBottom)
  {
    YpaddleL=height-paddleLH-cautionDistanceBottom;
  }
  else if (YpaddleL<0+cautionDistanceTop)
  {
    YpaddleL=0+cautionDistanceTop;
  }
}
