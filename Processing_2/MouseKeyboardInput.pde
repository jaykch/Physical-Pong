//THIS TAB HAS CODE TO CONTROL THE PADDLES USING KEYBOARD AND MOUSE
//THIS TAB ALSO INCLUDES CODE TO TEST THE POWER BARS USING ARROW KEYS

/*
CONTROLS: 
1.  PRESS LEFT OR RIGHT TO MOVE THE LEFT PADDLE
2.  PRESS UP OR DOWN TO MOVE THE RIGHT PADDLE
3.  PRESS W OR S TO MOVE THE LEFT PADDLE
4.  PRESS LEFT OR RIGHT TO TEST THE RIGHT POWER BAR
5.  PRESS UP OR DOWN TO TEST THE LEFT POWER BAR
6.  PRESS R TO RESET THE GAME
7.  HOLD 1 AND MOVE THE MOUSE TO SET THE FIRST HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE LEFT SO ONLY USE IT ON THE LEFT SIDE OF THE CENTER LINE
8.  HOLD 2 AND MOVE THE MOUSE TO SET THE SECOND HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE LEFT SO ONLY USE IT ON THE LEFT SIDE OF THE CENTER LINE
9.  HOLD 1 AND MOVE THE MOUSE TO SET THE THIRD HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE RIGHT SO ONLY USE IT ON THE RIGHT SIDE OF THE CENTER LINE
10. HOLD 2 AND MOVE THE MOUSE TO SET THE FOURTH HOLE : IMPORTANT - THIS HOLE UPDATES THE SCORE ON THE RIGHT SO ONLY USE IT ON THE RIGHT SIDE OF THE CENTER LINE
*/

void keyPressed()//function to control the paddles using arrow keys on the keyboard and test the power barrs using arrow keys
{
  if (key=='w'||key=='W')
    {
      YpaddleL = YpaddleL-paddleChange;
    }
    if (key=='s'||key=='S')
    {
      YpaddleL = YpaddleL+paddleChange;
    }
  if (key == CODED) {
    
    if (keyCode == UP) {
      YpaddleR = YpaddleR-paddleChange;
    } 
    else if (keyCode == DOWN) 
    {
      YpaddleR = YpaddleR+paddleChange;
    }
    if (keyCode == LEFT)
    {
    YpaddleL = YpaddleL-paddleChange;
    }
    else if (keyCode == RIGHT)
    {
      YpaddleL = YpaddleL+paddleChange;
    }
  }
  if (key=='r'||key=='R')//if statement to reset the game by pressing R
  {
    loop();
    //reset();
    scoreR=0;
    scoreL=0;
  }
  if(key=='1')
    {
      hole1Xposition = mouseX;//line to control the hole on the left side with mouse
      hole1Yposition = mouseY;//line to control the hole on the left side with mouse
    }      
    if(key=='2')
    {
      hole2Xposition = mouseX;//line to control the hole on the right side with mouse
      hole2Yposition = mouseY;//line to control the hole on the right side with mouse
    }     
    if(key=='3')
    {
      hole3Xposition = mouseX;//line to control the hole on the left side with mouse
      hole3Yposition = mouseY;//line to control the hole on the left side with mouse
    }      
    if(key=='4')
    {
      hole4Xposition = mouseX;//line to control the hole on the right side with mouse
      hole4Yposition = mouseY;//line to control the hole on the right side with mouse
    }     
if (key == CODED) //if statement to test the right power bar 
  {
    if (keyCode == RIGHT) {
      j++;
    } 
    else if (keyCode == LEFT) {
      j--;
    }
  }
  if (key == CODED) //if statement to test the left power bar
  {
    if (keyCode == UP) {
      k++;
    } 
    else if (keyCode == DOWN) {
      k--;
    }
  }
}

void mouseMoved()//function to control the right paddle using mouse and test the holes. Note: Change YpaddleR to YpaddleL to control the left paddle
{
  //YpaddleR = mouseY;
  //YpaddleL = mouseY;
}
