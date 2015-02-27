//THIS TAB CONTROLS THE SOUND EFFECTS OF THIS GAME

import ddf.minim.*;

Minim minim;//audio context
AudioPlayer backgroundMusic;//load background music
AudioSample edgeBounceAudio;//load sound effect for bouncing off the edges
AudioSample paddleBounceAudio;// load sound effect for bouncing off the paddles

void music()//this function plays the sound effects of this game
{
  if ((ballBottom()>height-cautionDistanceBottom)||(ballTop()<0+cautionDistanceTop))//if statement to play sound effects when ball hits top or bottom edge of the game window
   {
    edgeBounceAudio.trigger();
   }
   if ((collisionL())||collisionR())//if statement to play sound effects when ball hits either of the paddles
   {
    paddleBounceAudio.trigger(); 
   }
 }
