//THIS TAB CONTAINS BETA CODE TO CHANGE THE SPEED OF THE BALL ACCORDING TO THE SPEED OF BIKE
//BE VERY CAREFUL WITH CHANGING ANYTHING HERE AS IT MIGHT CREATE BUGS WITHIN THE GAME

/*
float elapsedTime;
int thresholdSpeed=5;

void speedControl()
{
  tuneTime=millis();
  if (arduino.digitalRead(2) == Arduino.HIGH)
  {
    timeA=millis();
    time=((timeA-timeB))+1;
    println("time of contact=",time);
    //delay(1000);
    timeB=timeA;
    if(time>100)
    {
    speed=distance/time;
    println("speed=",speed);
    }
  }
  if(speed>thresholdSpeed)
  speed=thresholdSpeed;
  /*if (deltaY>0)
  {
    deltaY=speed;
  }
  else{deltaY=1;}
  *//*
  if ((deltaY=<0)||(deltaY>=height))
  {
    deltaY=-speed;
  }
 
  if (deltaX>0)
  {
    deltaX=speed;
  }
  else{deltaX=1;}
 
  if (deltaX<0)
  {
    deltaX=-speed;
  }
 
  
  //deltaX=deltaY=speed;
}
  */
