//THIS TAB CONTROLS THE BRIGHTNESS OF THE GAME ACCORDING TO THE SPEED OF BOTH BIKES

int leftMagneticPin=2;//change this corresponding to the arduino input used for magnetic sensor on the left bike
int rightMagneticPin=3;//change this corresponding to the arduino input used for magnetic sensor on the right bike

//THE FOLLOWING VARIABLES WORK WITHIN THE FUNCTIONS BELOW AND THE FUNCTIONS HAVE BEEN THOROUGHLY TESTED SO THEY NEED NOT TO BE CHANGED

float timeAL=0;
float timeBL=1;
float timeL;
float tuneTimeL;
float speedL;
float lastSpeedL=0;
float brightnessL;

float timeAR=0;
float timeBR=1;
float timeR;
float tuneTimeR;
float speedR;
float lastSpeedR=0;
float brightnessR;
float brightnessTimeRA;
float brightnessTimeRB;

float distance = 2000;//this is used to measure the speed of the bike - Note: this is only used when speedcontrol is in effect

void brightnessControlLeft()// function to control brightness of the left half of the screen using magnetic sensors from the left bike
{
   if (arduino.digitalRead(leftMagneticPin) == Arduino.HIGH)
  {
    timeAL=millis();
    timeL=timeAL-timeBL;
    //println("time of contact=",time/1000);//debug code to check the time between 2 readings from magnetic sensor
    timeBL=timeAL;
  }
   if(timeL>50)
   {
     speedL=(60000/timeL);
     k = distance/timeL;
     //delay(100);
     //println("SPEED=",speedL);
 
     lastSpeedL=speedL;
   }
      
   brightnessL = 250 - (speedL);
   fill(0, 0, 0, brightnessL); 
   rect(0, 0, width/2, height);
}

void brightnessControlRight()// function to control brightness of the right half of the screen using magnetic sensors from the right bike
{
   brightnessTimeRA=millis();
   brightnessTimeRB=millis();
  if (arduino.digitalRead(rightMagneticPin) == Arduino.HIGH)
  {
   
    timeAR=millis();
    timeR=timeAR-timeBR;
    //println("time of contact=",time/1000);//debug code to check the time between 2 readings from magnetic sensor
    timeBR=timeAR;
    brightnessTimeRB=0;
   }
  if(timeR>50)
  {
    speedR=(60000/timeR);
    j = distance/timeR;
    //delay(100);
    //println("SPEED=",speedR);
 
    lastSpeedR=speedR;
  }
  
  brightnessR = 250 - (speedR);
  fill(0, 0, 0, brightnessR); 
  rect(width/2, 0, width, height);
}

