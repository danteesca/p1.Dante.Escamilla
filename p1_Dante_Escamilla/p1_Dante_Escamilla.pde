float rectOneX, rectOneY, rectTwoX, rectTwoY; 
float rectThreeX, rectThreeY, rectFourX, rectFourY;
float rectFiveX, rectFiveY, rectSixX, rectSixY; 
float rectSevenX, rectSevenY, rectEightX, rectEightY, rectNineX, rectNineY, topRectX, topRectY;
float rectTenX, rectTenY, rectElevenX, rectElevenY; 
int rectSize = 90;    
color rectColor, baseColor, textColor, tempColor;
color rectHighlight;
color colorOne, colorTwo, colorThree, colorFour, colorFive, colorSix, colorSeven, colorEight, colorNine;
boolean rectOneOver = false;
boolean rectTwoOver = false;
boolean rectThreeOver = false;
boolean rectFourOver = false;
boolean rectFiveOver = false;
boolean rectSixOver = false;
boolean rectSevenOver = false;
boolean rectEightOver = false;
boolean rectNineOver = false;
boolean rectTenOver = false;
boolean rectElevenOver = false;
boolean topRectOver = false;
String string;
PImage img, img2, img3, img4;
int currentFloor, destFloor;

void setup() {
  size(640, 960);
  colorMode(RGB, 255);
  rectColor = color(211, 211, 211);
  rectHighlight = color(216, 134, 59);
  tempColor = color(255, 181, 46);
  baseColor = color(150);
  textColor = color(0);
  colorOne = colorTwo = colorThree = colorFour = colorFive = colorSix = colorSeven = colorEight = colorNine = rectColor;  //Sets the color of all the buttons to the correct color and allows them to change independently.
  rectOneX = width/2-rectSize-125;
  rectOneY = height/(1.1)-rectSize/2;
  rectTwoX = width/2-rectSize+110;
  rectTwoY = height/(1.1)-rectSize/2;
  rectFiveX = width/2-rectSize-125;
  rectFiveY = height/(1.25)-rectSize/2;
  rectSixX = width/2-rectSize+110;
  rectSixY = height/(1.25)-rectSize/2;
  rectSevenX = width/2-95;
  rectSevenY = height/(1.45)-rectSize/2;
  rectEightX = width/2-95;
  rectEightY = height/(1.73)-rectSize/2;
  rectNineX = width/2-95;
  rectNineY = height/(2.15)-rectSize/2;
  rectTenX = width/2-95;
  rectTenY = height/(2.84)-rectSize/2;
  rectElevenX = width/2-95;
  rectElevenY = height/(4.15)-rectSize/2;
  topRectX = width/2-(rectSize+300)/2;
  topRectY = height/(9.6)-rectSize;
  currentFloor = 1;
  destFloor = 1;
  img = loadImage("imageedit_1_5703528061.png");
  img2 = loadImage("imageedit_1_5117456414.png");
  img3 = loadImage("alarm-bell-icon-4.png");
  img4 = loadImage("imageedit_1_5770846849.png");
  string = str(currentFloor-1);
  
}

void draw() {
  update(mouseX, mouseY);
  
  background(baseColor);
  strokeWeight(7);
  
  if (rectOneOver) {
    fill(rectHighlight, 255);
  } else {
    fill(colorOne, 255);
  }
  stroke(0);
  rect(rectOneX, rectOneY, rectSize+100, rectSize);
  
  if (rectTwoOver) {
    fill(rectHighlight);
  } else {
    fill(colorTwo);
  }
  stroke(0);
  rect(rectTwoX, rectTwoY, rectSize+100, rectSize);
  
  if (rectFiveOver) {
    fill(rectHighlight);
  } else {
    fill(colorThree);
  }
  stroke(0);
  rect(rectFiveX, rectFiveY, rectSize+100, rectSize);
  
  if (rectSixOver) {
    fill(rectHighlight);
  } else {
    fill(colorFour);
  }
  stroke(0);
  rect(rectSixX, rectSixY, rectSize+100, rectSize);
  
  if (rectSevenOver) {
    fill(rectHighlight);
  } else {
    fill(colorFive);
  }
  stroke(0);
  rect(rectSevenX, rectSevenY, rectSize+100, rectSize);
  
  if (rectEightOver) {
    fill(rectHighlight);
  } else {
    fill(colorSix);
  }
  stroke(0);
  rect(rectEightX, rectEightY, rectSize+100, rectSize);
  
  if (rectNineOver) {
    fill(rectHighlight);
  } else {
    fill(colorSeven);
  }
  stroke(0);
  rect(rectNineX, rectNineY, rectSize+100, rectSize);
  
  if (rectTenOver) {
    fill(rectHighlight);
  } else {
    fill(colorEight);
  }
  stroke(0);
  rect(rectTenX, rectTenY, rectSize+100, rectSize);
  
  if (rectElevenOver) {
    fill(rectHighlight);
  } else {
    fill(colorNine);
  }
  stroke(0);
  rect(rectElevenX, rectElevenY, rectSize+100, rectSize);
  
  
  //This collection of statements allows for the display to be updated iteratvely as 
  //the program increments up or down based on the users floor selections.
  //It also allows for the additional non-floor strings to display when a floor has been reached. 
  if (string != ""){
   if (currentFloor < destFloor) {
    sleep(1000);
    currentFloor++;
    if (currentFloor != 0 && currentFloor != 1) {
      string = str(currentFloor-1);
    } else if (currentFloor == 0) {
        string = "Basement";
    }else {
      string = "Ground";
    }
  } else if (currentFloor > destFloor){
      sleep(1000);
      currentFloor--;
      if (currentFloor != 0 && currentFloor != 1) {
        string = str(currentFloor-1);
      } else if (currentFloor == 0) {
          string = "Basement";
      }else {
        string = "Ground";
    }
  } else {
      if (string == "Door Opening" || string == "Door Closing" || string == "Alarm Sounding" || string == "Phone in Use"){
         //this is here so that the non floor string dont get deleted after their button is pressed in the event that the current floor happens to be on the "ground" or "basement".
         //That being said it does need to come before the other two statements in this block becasue if it is not, then the action string will always be overridden. 
      } else if (currentFloor == 0) {
          string = "Basement";
      } else if (currentFloor == 1) {
          string = "Ground";
      } if (string == "Door Opening" || string == "Door Closing" || string == "Alarm Sounding" || string == "Phone in Use"){
         //this is here so that the non floor string dont get deleted after their button is pressed in the event that the current floor happens to be on the "ground" or "basement".
      } 
      destFloor = currentFloor;
      colorOne = colorTwo = colorThree = colorFour = colorFive = colorSix = colorSeven = colorEight = colorNine = rectColor;
  }
}

  
  //This is the box at the top of the screen that displays which floor the user is currently at or when the auxillary functions are in use. 
  fill(baseColor);
  stroke(0);
  rect(topRectX, topRectY, rectSize+300, rectSize*1.6);
  
  
  //These draw over the buttons to label them as their respective floor, or in the case of the DO, DC, alarm, and phone
  //functions, draws the image over them. 
  img3.resize(0, 90);
  image(img3, rectOneX+5+rectSize/2, rectOneY-45+rectSize/2);
  
  img4.resize(0, 90);
  image(img4, rectTwoX+rectSize/2, rectTwoY-45+rectSize/2);
  
  img.resize(0, 100);
  image(img, rectFiveX+rectSize/2, rectFiveY-49+rectSize/2);
 
  img2.resize(0, 100);
  image(img2, rectSixX+rectSize/2, rectSixY-8+rectSize/20);
  
  textSize(40);
  fill(textColor);
  text("B", rectSevenX+40+rectSize/2, rectSevenY+10+rectSize/2);
  
  textSize(40);
  fill(textColor);
  text("G", rectEightX+40+rectSize/2, rectEightY+10+rectSize/2);
  
  textSize(40);
  fill(textColor);
  text("1", rectNineX+40+rectSize/2, rectNineY+10+rectSize/2);
  
  textSize(40);
  fill(textColor);
  text("2", rectTenX+40+rectSize/2, rectTenY+10+rectSize/2);
  
  textSize(40);
  fill(textColor);
  text("3", rectElevenX+40+rectSize/2, rectElevenY+10+rectSize/2);
  
  
  
  //This also fills text into the display box like the statements directly above
  //however it allows for each string to be placed appropriatly as they all have different dimensions for the most part. 
  if (string == "Ground") {
    textSize(40);
    fill(textColor);
    text(string, topRectX+85+rectSize/2, topRectY+35+rectSize/2);
  }else if (string == "Basement") {
    textSize(40);
    fill(textColor);
    text(string, topRectX+65+rectSize/2, topRectY+35+rectSize/2);
  } else if (string == "Door Opening") {
     textSize(40);
    fill(textColor);
    text(string, topRectX+30+rectSize/2, topRectY+35+rectSize/2);
  }else if (string == "Door Closing") {
    textSize(40);
    fill(textColor);
    text(string, topRectX+40+rectSize/2, topRectY+35+rectSize/2);
  }else if (string == "Alarm Sounding") {
    textSize(40);
    fill(textColor);
    text(string, topRectX+15+rectSize/2, topRectY+35+rectSize/2);
  } else if (string == "Phone in Use"){
    textSize(40);
    fill(textColor);
    text(string, topRectX+40+rectSize/2, topRectY+35+rectSize/2);
  }else {
    textSize(40);
    fill(textColor);
    text(string, topRectX+137+rectSize/2, topRectY+35+rectSize/2);
  }
    
    
    
}



//The mouse pressed function allows for the destination floor to be set when a button is pressed 
//so that the draw statement can iterate up or down to that floor depending on where the user currently is. 
//It does so by checking which button the mouse is over and after finding the right one
//changing the string to the correct label, the destination to the correct number, and displaying feedback
//by changing the color of that box to orange. 
void mousePressed() {
  if (rectOneOver) {
    string = "Alarm Sounding";
    colorOne = tempColor;
  }
  if (rectTwoOver) {
    string = "Phone in Use";
    colorTwo = tempColor;
  }
  if (rectFiveOver) {
    string = "Door Opening";
    colorThree = tempColor;
  }
  if (rectSixOver) {
    string = "Door Closing";
    colorFour = tempColor;
  }
  if (rectSevenOver) {
    string = "Basement";
    destFloor = 0;
    colorFive = tempColor;
  }
  if (rectEightOver) {
    string = "Exit";
    destFloor = 1;
    colorSix = tempColor;
  }
  if (rectNineOver) {
    string = "Floor One";
    destFloor = 2;
    colorSeven = tempColor;
  }
  if (rectTenOver) {
    string = "Floor Two";
    destFloor = 3;
    colorEight = tempColor;
  }
  if (rectElevenOver) {
    string = "Floor Three";
    destFloor = 4;
    colorNine = tempColor;
  }
}


//This function only calls delay() because it cannot be called be called in the draw function.
//This allows for the movement from floor to floor to be slower so that the user can recieve feedback about which floor they are on.
void sleep(int x) {
  delay(x);
}


//These boolean functions check if the mouse is over a button when they are called.
boolean overRectOne(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectTwo(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectThree(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectFour(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectFive(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectSix(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectSeven(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectEight(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectNine(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectTen(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
boolean overRectEleven(float x, float y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width+100 && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}


//This tracks wich button, if any, the mouse is iver at any given time so that the mouse pressed and highlighting of buttons in the draw function work properly.
//If the mouse is over a button, its corresponding "over" value is set to true while the others are set to false.
//They are all false by default.
void update(float x, float y) {
  if ( overRectOne(rectOneX, rectOneY, rectSize, rectSize) ) {
    rectOneOver = true;
    rectTwoOver = false;
  } else if( overRectTwo(rectTwoX, rectTwoY, rectSize, rectSize)) {
    rectOneOver = false;
    rectTwoOver = true;
  } else if( overRectThree(rectThreeX, rectThreeY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = false;
    rectThreeOver = true;
  } else if( overRectFour(rectFourX, rectFourY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = false;
    rectFourOver = true;
  } else if( overRectFive(rectFiveX, rectFiveY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = false;
    rectFiveOver = true;
  } else if( overRectSix(rectSixX, rectSixY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = false;
    rectSixOver = true;
  } else if( overRectSeven(rectSevenX, rectSevenY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = false;
    rectSevenOver = true;
  } else if( overRectEight(rectEightX, rectEightY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = rectSevenOver = false;
    rectEightOver = true;
  } else if( overRectNine(rectNineX, rectNineY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = rectSevenOver = rectEightOver = false;
    rectNineOver = true;
  } else if( overRectTen(rectTenX, rectTenY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = rectSevenOver = rectEightOver = rectNineOver = false;
    rectTenOver = true;
  } else if( overRectEleven(rectElevenX, rectElevenY, rectSize, rectSize)){
    rectOneOver = rectTwoOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = rectSevenOver = rectEightOver = rectNineOver = rectTenOver = topRectOver = false;
    rectElevenOver = true;
  } else {
    rectTwoOver = rectOneOver = rectThreeOver = rectFourOver = rectFiveOver = rectSixOver = rectSevenOver = rectEightOver = rectNineOver = rectTenOver = rectElevenOver = false;
  }
}
