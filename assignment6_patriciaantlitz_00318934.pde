/* Assignment 6

Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
19 October 2020

Create your own character/scene/artwork
You can use your favorite painting as inspiration

I chose a piece by a Brazilian artist named Romero Britto. His art is inspired by cubism, modernism, pop art, and graffiti, and he is a
painter, serigrapher, and sculptor. He is currently 57 years old ad of 2020 and
is an active artist.
The painting chosen is called evolution. I did not have any specific
reasons to choose this painting other than the fact that I liked it.
My reason for choosing this artist is because I believe he has done a
phenomenal job in applying cubism to pop art.

I have used other sources, as detailed in my submitted source file.
List these sources
https://en.wikipedia.org/wiki/Romero_Britto


--- note to professor - I feel like I have trouble translating the sizes
to variables. I am usually ok with regular height and width, origin,
height, and width when divided by 2, but I think I'm having trouble figuring
out a way to create variables for every size and x or y placement I
use when it comes to things beyond that. I do not want to overload the program with so many variables, but I feel like you said we should not use
regular numbers for location and sizes. I also want to make the code a little
more adjustable, I want to be able to adjust the screen size and have the code
to adjust itself automatically, but again, I am having trouble implementing this.
Is there any material I could review so I can learn how to declare the locations
and sizes better?

Thank you!
*/

// Code starts here

// use a function to setup the program
void setup() {
  //give the program a scree size 500px wide and 500px tall.
  size(500, 500);
}

// use variables
// variables for colors
int white = color(255);
int black = color(0);
int limeGreen = color(147, 237, 30);
int lightGreen = color(91, 201, 54);
int green = color(49, 130, 22);
int yellow = color(255, 251, 68);
int darkYellow = color(249, 218, 59);
int orange = color(252, 135, 2);
int red = color(221, 6, 10);
int fuchsia = color(221, 6, 203);
int lightPink = color(255, 193, 249);
int darkBlue = color(21, 70, 193);
int cian = color(73, 240, 252);
int babyBlue = color(168, 230, 255);
int skin = color(244, 209, 176);

// create a funtion to run all commands
void draw() {
  // no background color needed

  // create local variables for sizing
  int wide = width;
  int tall = height;
  int wide2 = wide/2;
  int tall2 = tall/2;
  int or = 0;

  /* Function drawTriangle creates triangles on the page and take
  colors, x1 and y1 and the first point, x2 and y2 as the second
  point and x3 and y3 and the third point*/
  drawTriangles(darkBlue, or, or, or, tall2, wide2, or);
  /* Function drawCircles create a pattern of circles inside the trianfgles.
  It take a color, x, y locations, width and height, y separation and
  x separation and a width and height for the for loop*/
  drawCircles(cian, or, or, 15, 15, 30, 30, wide2, tall2);

  drawTriangles(lightGreen, wide2, or, wide, or, wide, tall2);
  drawCircles(green, wide2, or, 50, 50, 70, 70, wide, tall2);

  drawTriangles(red, wide, tall2, wide, tall, wide2, tall);
  drawCircles(orange, wide2, tall2, 35, 35, 50, 50, wide, tall);

  drawTriangles(yellow, or, tall2, or, tall, wide2, tall);
  drawCircles(lightPink, or, tall2, 45, 45, 70, 70, wide2, tall);

  /* These are the colored traingles that fill the diamond shape on the
  top half of the screen*/
  drawTriangles(darkYellow, wide/7, or, wide/3, 70, or, tall2);
  drawTriangles(babyBlue, wide, or, 470, 200, 360, tall/4);
  drawTriangles(limeGreen, wide2, or, wide, tall2, or, tall2);
  drawTriangles(skin, wide2, or, wide, tall2, wide/5, tall2);
  drawTriangles(lightPink, wide2, or, 13*wide/16, tall2, wide/5, tall2);
  drawTriangles(red, wide2, or, 10*wide/16, tall2, wide/5, tall2);
  drawTriangles(orange, wide2, or, 6*wide/16, tall2, wide/5, tall2);
  drawTriangles(orange, wide2, or, 6*wide/16, tall2, wide/5, tall2);
  /* These are the triangles that fill the diamond shape on the bottom
  half of the screen */
  drawTriangles(fuchsia, or, tall2, wide2, tall, wide, tall2);
  drawTriangles(red, wide/5, tall2, wide2, tall, 13*wide/16, tall2);
  drawTriangles(white, 6*wide/16, tall2, wide2, tall, 10*wide/16, tall2);
  drawTriangles(darkBlue, wide, or, wide, tall, 13*wide/16, tall);

  /* Function drawAbstractLines create the black lines on the screen on a
  diamond shape first, followed by an abstract shape. It takes a color,
  a x and y position and x and y separation in pixels*/
  drawAbstractLines(black, wide2, tall2, 100, 250);
  drawAbstractLines(black, wide, tall, 400, 400);
  drawAbstractLines(black, wide/8, tall2, 400, 400);

  /* Function drawAcircle draws a single circle on the center of the screen
  it takes a color, x and y position and size in pixels*/
  drawAcircle(white, wide2, tall2, 270, 270);
  drawAcircle(cian, wide2, tall2, 200, 200);
  drawAcircle(yellow, wide2, tall2, 120, 120);

  /* drawAcircle is drawing the small circles on the four corners of the
  screen*/
  drawAcircle(red, wide/5, tall/6, 50, 50);
  drawAcircle(lightPink, 12*wide/16, tall/8, 50, 50);
  drawAcircle(darkBlue, wide/5, 14*tall/16, 50, 50);
  drawAcircle(babyBlue, 15*wide/16, 11*tall/16, 50, 50);
}

/* draw background lines. Function params: "c" will represent a color,
x1 would be the second x location of the line, y1 the first y location.
Function alsp take params xPix and yPix which represent the separation
between the lines on the x and y axis in pixels*/
void drawAbstractLines(int c, float x1, float y1, float xPix,
float yPix){
  // set local variable for the height and width of the page
  int tall = height;
  int wide = width;
  /* for loop will generate consecutive lines on the screen, letting y
  be equal to 0 to start, as long as y is less or equal to variable tall
  which represents the total height of the page, add the amount
  determinate by yPix to y*/
  for(float y = 0; y <= tall; y+=yPix){
   /* second for loop for the x axis, letting x be equal to 0 to start,
   as long as x is less or equal to variable wide which represents the
   total width of the page, add the amount determinate by xPix to x*/
    for(float x = 0; x <= wide; x+=xPix){
      // create the shape, add a stroke as a border and use param c for color
      stroke(c);
      // and a stroke weight of 20px
      strokeWeight(20);
      /* create a line using the params x, y1, x1, y this order will allow
      to create an abstract shape on the screen */
      line(x, y1, x1, y);
    }
  }
}

/* draws triangles of different sides on the screen. Takes params x1, y1 for
the first point of the triangle, x2, y2 for the second point and x3, y3 for
the third and c for color*/
void drawTriangles(int c, int x1, int y1, int x2, int y2, int x3, int y3){
  /* remove the stroke from the shapes since the lines previously created
  will work as the border for the shapes */
  noStroke();
  // fill the triangles with a color by using param c
  fill(c);
  // Create triangle calling parameters for location.
  triangle(x1, y1, x2, y2, x3, y3);
}

/* Function drawCircles draw a pattern of circles on the screen. Function
takes a param c for the color of the circles, x for the x location, yloc
for the y location, wide and tall for sizing, xPix and yPix represent the
amount of separtion between circles on the x and y axis in pixels. Params
spaceX and spaceY are the determined width or height in which the for loop
will compare x and y to */
void drawCircles(int c, int x, int yloc, int wide, int tall,
int xPix, int yPix, int spaceX, int spaceY){
  /* Function takes a for loop to create the shapes on the screen.
  gets param x and adds 1 to it. As long as x is less or equal to the amount
  determinate by param spaceX, add to x and make it equal to the amount
  determinated for param xPix */
  for(x++; x <= spaceX; x += xPix ){
    /* second for loop for y axis, to create the shapes on the screen.
  creates variable y and sets its value to the amount to be determinate for
  param yloc. As long as y is less or equal to the amount determinate by
  param spaceY, add to y and make it equal to the amount determinated for
  param yPix */
  for(int y = yloc; y <= spaceY; y += yPix) {
    // start the shape, remove the border
    noStroke();
    // fill the shape with a color by using param c
    fill(c);
    // create ellipse shape for circles passing remaing params
    ellipse(x, y, wide, tall);
    }
   }
}

/* Function drawAcircle draws individual circles on the screen. It takes
param c for the color of the circle, param x and y for the location on the
screen and params wide and tall for the size*/
void drawAcircle(int c, int x, int y, int wide, int tall){
  // add a border color black
  stroke(black);
  // set the border weight to 20px
  strokeWeight(20);
  // fill the circle with a color by using param c
  fill(c);
  // create circle using ellipse function and pass the remaining params
  ellipse(x, y, wide, tall);
}
