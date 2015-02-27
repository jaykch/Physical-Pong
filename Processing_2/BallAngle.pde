//THIS TAB CONTAINS CODE FOR CHANGING BALL ANGLE AS IT HITS THE PADDLE
//THE FOLLOWING VARIABLES WORK WITHIN THE FUNCTIONS BELOW AND THE FUNCTIONS HAVE BEEN THOROUGHLY TESTED SO THEY NEED NOT TO BE CHANGED

float LpaddleIntersectY;
float normalisedLpaddleIntersectY;
float RpaddleIntersectY;
float normalisedRpaddleIntersectY;
float LballIntersection;
float RballIntersection;
float bounceAngleL;
float bounceAngleR;
float maxAngle = 5*PI/12;

void ballAngle()
{
  if (collisionR())//function to return the ball as it hits the right paddle
  {
    RballIntersection=((Y+ballH/2));
    RpaddleIntersectY = ((YpaddleR+(paddleRH/2))- RballIntersection);
    normalisedRpaddleIntersectY = (RpaddleIntersectY/(paddleRH/2));
    bounceAngleR = normalisedRpaddleIntersectY*maxAngle;
    deltaX= - speedVariableX*cos(bounceAngleR);
    deltaY= + speedVariableY*-sin(bounceAngleR);
    
    //TROUBLESHOOT CODE
    /*println("rballcross ",RballIntersection);
    println("RpaddleY",YpaddleR+(paddleRH/2));
    println("normalisedR",normalisedRpaddleIntersectY);
    println("Rangle",bounceAngleR);
    println("maxAngle",maxAngle);*/
  }
   if (collisionL())//function to return the ball as it hits the left paddle
  {
    LballIntersection=((Y+ballH/2));
    LpaddleIntersectY = ((YpaddleL+(paddleLH/2))- LballIntersection);
    normalisedLpaddleIntersectY = (LpaddleIntersectY/(paddleLH/2));
    bounceAngleL = normalisedLpaddleIntersectY*maxAngle;
    deltaX = + speedVariableX*cos(bounceAngleL);
    deltaY = + speedVariableY*-sin(bounceAngleL);
    
    //TORUBLESHOOT CODE
    /*println("Lballcross ",LballIntersection);
    println("LpaddleY",YpaddleL+(paddleLH/2));
    println("normalisedL",normalisedLpaddleIntersectY);
    println("Langle",bounceAngleL);
    println("maxAngle",maxAngle);*/
  }
}
