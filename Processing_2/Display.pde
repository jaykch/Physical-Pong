//THIS TAB CONTROLS ALL THE AESTHETICS OF THE GAME, BE VERY CAREFUL BEFORE CHANGING ANYTHING HERE

float j=1;//this variable is used in the function rightBar
float k=1;//this variable is used in the function leftBar

int rightBarX;//starting coordinate of the right bar - Note: to adjust it in the first line of the display function to avoid bugs or change the value of the barDistance variable
int leftBarX;//starting coordinate of the left bar - Note: to adjust it in the first line of the display function to avoid bugs or change the value of the barDistance variable
int barDistance=20;//use this variable to adjust the distance of both the power bars form the left and right side of the screen

int scoreDistance=200;//adjust this to change the horizontal position of the scores
int sizeScore=48;//adjust this to change the text size of the score
int sizeGameOver=32;//adjust this to change the text size of the game over text

int barLimit=8;//change this value to adjust the maximum speed of the bar
int barWidth=20;//change this value to adjust how the bar varies with respect to change in speed
int barError=2;//variable to remove the bugs in bar functions
int barY=10;//change this value to adjust the y coordinate of both the bars
int barHeight=30;//change this value to adjust the height of both bars

void display()//this function draws the score and the power bars that charge up depending on the speed of each bike
{
  rightBarX=width-barWidth*(barLimit+1)-80-barDistance;
  leftBarX=barDistance;
  fill(-1);
  rect(0,60,width,2);
  fill(-1);
  rect(0,height-20,width,2);
  rightBar();
  leftBar();
  if(scoreR<endScore&&scoreL<endScore)// Loop to draw the dotted line in the middle
 {
 for(int i = cautionDistanceTop; i<height-cautionDistanceBottom-error; i+=15)
 {
  rect (width/2,i,4,10);  
 }
 }
  textSize(sizeScore);
     
  if((scoreL>=endScore)||(scoreR>=endScore))
  {
    X=width/2;
    Y=height/2;
    text(scoreR,width/2-scoreDistance,45);
    text(scoreL,width/2+scoreDistance-20,45);
    textSize(sizeGameOver);
    text("GAME OVER!",width/2-290,100);
    text("PRESS R TO RESET",width/2+100,100);
    noLoop();
  } 
  else
  {
     text(scoreR,width/2-scoreDistance,45);
     text(scoreL,width/2+scoreDistance-20,45);
  }
 }
 
void rightBar()//function to form the right power bar controlled by the speed of the bike
{
  rect(rightBarX+barWidth*2-barError,barY-barError,barWidth*(barLimit+1)+barError,barError);
  rect(rightBarX+barWidth*2-barError,barY-barError,barError,barHeight+barError);
  rect(rightBarX+barWidth*2-barError,barY+barHeight,barWidth*(barLimit+1)+barError,barError);
  rect(rightBarX+barWidth*2-barError+barWidth*(barLimit+1)+barError,barY-barError,barError,barHeight+barError);
  for (int rightBar=1;rightBar<j;rightBar++) {
    fill(-1);
    rect(rightBarX+rightBar*barWidth+barWidth, barY, barWidth,barHeight);
    if(rightBar>barLimit)
    {
      j=barLimit+barError;
    }
  }
}

void leftBar()//function to form the Left power bar controlled by the speed of the bike
{
  rect(leftBarX+barWidth*2-barError,barY-barError,barWidth*(barLimit+1)+barError,barError);
  rect(leftBarX+barWidth*2-barError,barY-barError,barError,barHeight+barError);
  rect(leftBarX+barWidth*2-barError,barY+barHeight,barWidth*(barLimit+1)+barError,barError);
  rect(leftBarX+barWidth*2-barError+barWidth*(barLimit+1)+barError,barY-barError,barError,barHeight+barError);
  for (int leftBar=1;leftBar<k;leftBar++) {
    fill(-1);
    rect(leftBarX+leftBar*barWidth+barWidth, barY, barWidth,barHeight);
    if(leftBar>barLimit)
    {
      k=barLimit+barError;
    }
  }
}


//FUNCTION TO MAKE GAME RESIZABLE
void makeResizable()
{
if (frame != null) //resize code
    {
    frame.setResizable(true);
    }
}  

//CODE FOR FULLSCREEN

boolean sketchFullScreen() {
  return true;
}
