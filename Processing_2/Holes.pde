//THIS TAB DRAWS THE HOLES WITHIN THE GAME AND CONTAINS FUNCTIONS TO UPDATE SCORE AND DISAPPEAR THE BALL WHEN IT GOES INTO THE HOLE

//LEFT SIDE HOLES
int hole1Xposition=-2000;
int hole1Yposition;
int hole1radius=80;//adjust this variable to change the radius of the first hole

int hole2Xposition=-2000;
int hole2Yposition;
int hole2radius=80;//adjust this variable to change the radius of the second hole

//RIGHT SIDE HOLES
int hole3Xposition=-2000;
int hole3Yposition;
int hole3radius=80;//adjust this variable to change the radius of the third hole

int hole4Xposition=-2000;
int hole4Yposition;
int hole4radius=80;//adjust this variable to change the radius of the fourth hole

void holeSystem()//this function contains code to draw the craters in game and algorithm to update score and make the ball disappear when it goes inside a crater
{
 //LEFT HOLES 
 ellipse(hole1Xposition,hole1Yposition,hole1radius*2,hole1radius*2);
 if((ballRight()>=hole1Xposition-hole1radius+ballW)&&(ballLeft()<=hole1Xposition+hole1radius-ballW))
  {
    if ((ballBottom()>=hole1Yposition-hole1radius+ballH)&&(ballTop()<=hole1Yposition+hole1radius-ballH))
    {
      scoreL=scoreL+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(5) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=5;
      deltaY=-5;
    }
  } 
 ellipse(hole2Xposition,hole2Yposition,hole2radius*2,hole2radius*2);
 if((ballRight()>=hole2Xposition-hole2radius+ballW)&&(ballLeft()<=hole2Xposition+hole2radius-ballW))
  {
    if ((ballBottom()>=hole2Yposition-hole2radius+ballH)&&(ballTop()<=hole2Yposition+hole2radius-ballH))
    {
      scoreL=scoreL+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(5) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=3;
      deltaY=-3;
    }
  } 

 //RIGHT HOLES
 ellipse(hole3Xposition,hole3Yposition,hole3radius*2,hole3radius*2);
 if((ballRight()>=hole3Xposition-hole3radius+ballW)&&(ballLeft()<=hole3Xposition+hole3radius-ballW))
  {
    if ((ballBottom()>=hole3Yposition-hole3radius+ballH)&&(ballTop()<=hole3Yposition+hole3radius-ballH))
    {
      scoreR=scoreR+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(6) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=-5;
      deltaY=5;
    }
  }
 ellipse(hole4Xposition,hole4Yposition,hole4radius*2,hole4radius*2);
 if((ballRight()>=hole4Xposition-hole4radius+ballW)&&(ballLeft()<=hole4Xposition+hole4radius-ballW))
  {
    if ((ballBottom()>=hole4Yposition-hole4radius+ballH)&&(ballTop()<=hole4Yposition+hole4radius-ballH))
    {
      scoreR=scoreR+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(6) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=-3;
      deltaY=3;
    }
  }  
   
}


