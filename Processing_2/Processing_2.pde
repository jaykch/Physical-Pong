//THIS IS THE MAIN BODY OF THIS GAME AND INCLUDES ALL THE FUNCTIONS THAT RUN THE GAME. TO ADJUST ANYTHING READ COMMENTS AFTER EVERY FUNCTION

//IMPORTANT: TO CHANGE THE SCORE AT WHICH THE GAME ENDS ADJUST endScore VARIABLE IN THE SCORE TAB
//TO MAKE THE GAME FULLSCREEN REMOVE THE COMMENTS AROUND boolean sketchFullScreen() AT THE BOTTOM OF DISPLAY TAB 
//TO CHANGE THE SIZE OF THE PADDLES GO TO THE PADDLES TAB
//TO CHANGE THE SIZE OF THE HOLES GO TO THE HOLES TAB
//TO CHANGE THE SIZE OF THE BALL GO TO THE BALL TAB

/*
CONTROLS: 
1.  PRESS LEFT OR RIGHT TO MOVE THE LEFT PADDLE
2.  PRESS UP OR DOWN TO MOVE THE RIGHT PADDLE
3.  PRESS W OR S TO MOVE THE LEFT PADDLE
4.  PRESS LEFT OR RIGHT TO TEST THE RIGHT POWER BAR
5.  PRESS UP OR DOWN TO TEST THE LEFT POWER BAR
6.  PRESS R TO RESET THE GAME
7.  HOLD 1 AND MOVE THE MOUSE TO SET THE FIRST HOLE :  IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE RIGHT SO ONLY USE IT ON THE RIGHT SIDE OF THE CENTER LINE
8.  HOLD 2 AND MOVE THE MOUSE TO SET THE SECOND HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE RIGHT SO ONLY USE IT ON THE RIGHT SIDE OF THE CENTER LINE
9.  HOLD 3 AND MOVE THE MOUSE TO SET THE THIRD HOLE :  IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE LEFT SO ONLY USE IT ON THE LEFT SIDE OF THE CENTER LINE
10. HOLD 4 AND MOVE THE MOUSE TO SET THE FOURTH HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE LEFT SO ONLY USE IT ON THE LEFT SIDE OF THE CENTER LINE
*/

int screenWidth=1920;//adjust this to change the width of the game
int screenHeight=1080;//adjust this to change the height of the game

void setup()
{
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);//code to define the data rate and arduino com - Note: In Arduino.list()[0], 0 is the com port. By default 0 detects the com port automatically
  size(screenWidth, screenHeight);//size of the window
  X=width/2;//starting starting x coordinate of the ball
  Y=height/2;//starting starting y coordinate of the ball
  arduino.pinMode(2, Arduino.INPUT);//setting the arduino input for magnetic sensor
  arduino.pinMode(3, Arduino.INPUT);//setting the arduino input for magnetic sensor
  arduino.pinMode(4, Arduino.INPUT);//setting the arduino input for magnetic sensor
  minim = new Minim(this);//the following code is to load the music files for sound effects of the game
  backgroundMusic = minim.loadFile("backgroundMusic.mp3", 2048);
  backgroundMusic.loop();
  edgeBounceAudio = minim.loadSample("edgeBounceAudio.mp3",512);
  paddleBounceAudio = minim.loadSample("paddleBounceAudio.wav",512);
}

void draw()
{
  refresh();
  smooth();
  background(0,0,0);//background colour
  stroke(255,255,255); 
  fill(255);
  rect(X,Y,ballW,ballH);//size of the ball
  
  //makeResizable();//function to make the game resizable : Refer to display tab
  //goFullscreen();//function to make the game fullscreen : Refer to display tab
  display();//function to define the display of the projection. This includes the score, power bar, line in the middle and the aesthetic lines to seperate evrything : Refer to Display Tab
  //speedControl();//function to change the speed of the ball according to the rate at which the rider paddles the bike : Refer to SpeedControl Tab
  holeSystem();//function to add and control holes in the game : Refer to Holes Tab
  ballMovement();//function to make the ball move : Refer to Ball Tab
  paddles();//function to define the paddles on each side : Refer to Paddles Tab
  brightnessControlLeft();//function to change the brightness of left side of the screen : Refer to BrightnessControl Tab
  brightnessControlRight();//function to change the brightness of right side of the screen : Refer to BrightnessControl Tab
  score();//function to update the score of the game : Refer to Score Tab
  leftPaddleMove();//function to move the left paddle using arduino : Refer to Arduino Control Tab 
  rightPaddleMove();//function to move the right paddle using arduino : Refer to Arduino Control Tab
  music();//function to play the sound effects : Refer to Music Tab    
  ballAngle();//Function to change the ball angle according to the position it hits the paddle : Refer to BallAngle Tab
  
  /*println("Xspeed= ",deltaX);//xspeed display Debugging code to check the horizontal speed of the ball
  println("Yspeed= ",deltaY);//yspeed display Debugging code to check the vertical speed of the ball*/
 
}


