//THIS TAB CONTAINS FUNCTION TO CONTROL BOTH PADDLES USING ARDUINO INPUTS A0 AND A1

import processing.serial.*; // reference the serial library

import cc.arduino.*; // reference the arduino library

Arduino arduino; // create a variable arduino of the Arduino data type

int error=5;//this variable is used throughout the code to adjust issues caused by errors in drawing the physical objects and to avoid bugs caused by overlaping of objects

int leftControlPin=1;//change this corresponding to the arduino analog input used for left paddle
int rightControlPin=0;//change this corresponding to the arduino analog input used for right paddle

int cautionDistanceTop=60;//max distance from the Top border of the processing window. Note: this variable is used in various functions to make the game dynamic(everything will adjust itself if you change the size of the screen.
int cautionDistanceBottom=20;//max distance from the bottom border of the processing window. Note: this variable is used in various functions to make the game dynamic(everything will adjust itself if you change the size of the screen.
int potentiometerError1=600;//adjust this according to the range of potentiometer to sync it with the movement of left paddle
int potentiometerError2=400;//adjust this according to the range of potentiometer to sync it with the movement of left paddle
float potentiometerResolution=2.5; //adjust resolution for bigger or smaller screens to increase the range of paddle movement for both the paddles

void leftPaddleMove()//function to control left paddle through arduino
{
  //println(arduino.analogRead(1));//code to display the readings for potentiometer attached to A1
  YpaddleL=((potentiometerError1-arduino.analogRead(leftControlPin))*potentiometerResolution);               
  if (YpaddleL>height-paddleLH-cautionDistanceBottom-error)
  {
    YpaddleL=height-paddleLH-cautionDistanceBottom-error;
  }
  else if (YpaddleL<0+cautionDistanceTop+error)
  {
    YpaddleL=0+cautionDistanceTop+error;
  }
}
void rightPaddleMove()//function to control right paddle through arduino
{
  //println(arduino.analogRead(0));//code to display the readings for potentiometer attached to A0
  YpaddleR=((arduino.analogRead(rightControlPin)-potentiometerError2)*potentiometerResolution);
  if (YpaddleR>height-paddleRH-cautionDistanceBottom-error)
  {
    YpaddleR=height-paddleRH-cautionDistanceBottom-error;
  }
  else if (YpaddleR<0+cautionDistanceTop+error)
  {
    YpaddleR=0+cautionDistanceTop+error;
  }
}

