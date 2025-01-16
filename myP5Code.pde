//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 30;
var circleX = 10;
var circleY = 120;
var rectX = 10;
var triangleX = 19;
var perezX = 238;
var pinkX = 60;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  fill (225,22,116)
  rect(fireworkX, 150, 10, 10);
  fill(240,117,140)
   ellipse(circleX, 100, 100, circleY)
  fill (171,68,99) 
  rect (150 ,rectX,100, 100)
  fill(188,228,212)
  triangle(pinkX,238,202, triangleX, 932, perezX)
  
  fireworkX = fireworkX + 1;
  circleX = circleX + 1;
  rectX = rectX +1;
  triangleX = triangleX -1;
  perezX = perezX +1;
  pinkX = pinkX +1;
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
fill (255,255,255)
rect (270,300,150,100)
fill (0,0,0)
textSize (30)
text ("x = " + mouseX + "\ny = " +mouseY, 290, 350)
fill (255,0,255)
ellipse (mouseX,mouseY,10,10);
fill (255,255,255)

circleX = mouseX;
circleY = mouseY;

}
