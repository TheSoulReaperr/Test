Button Color;
Button Redup;
Button Reddo;
Button Red;
Button Greenup;
Button Greendo;
Button Green;
Button Blueup;
Button Bluedo;
Button Blue;
Button Black;
Button White;

Button Custom1;
Button Custom2;
Button Custom3;
Button Custom4;
Button Custom5;
Button Custom6;
Button Custom7;
Button Custom8;
Button Custom9;

//----------------------------------------------------------------------------------------

void InitializeColorButtons() {
  Color = new Button(990, 9, 285, 80);
  Color.Stroke(200, 200, 200, 1);

  Redup = new Button(1225, 95, 50, 50);
  Redup.Color(255, 50, 50);
  Redup.Stroke(200, 200, 200, 1);
  Redup.Text("►", 255, 255, 255, 25);

  Reddo = new Button(990, 95, 50,50);
  Reddo.Color(255, 50, 50);
  Reddo.Stroke(200, 200, 200, 1);
  Reddo.Text("◄", 255, 255, 255, 25);

  Red = new Button(1045, 95, 175, 50);
  Red.Color(255, 255, 255);

  Greenup = new Button(1225, 150, 50, 50);
  Greenup.Color(50, 255, 50);
  Greenup.Stroke(200, 200, 200, 1);
  Greenup.Text("►", 255, 255, 255, 25);

  Greendo = new Button(990, 150, 50, 50);
  Greendo.Color(50, 255, 50);
  Greendo.Stroke(200, 200, 200, 1);
  Greendo.Text("◄", 255, 255, 255, 25);

  Green = new Button(1045, 150, 175, 50);
  Green.Color(255, 255, 255);

  Blueup = new Button(1225, 205, 50, 50);
  Blueup.Color(50, 50, 255);
  Blueup.Stroke(200, 200, 200, 1);
  Blueup.Text("►", 255, 255, 255, 25);

  Bluedo = new Button(990, 205, 50, 50);
  Bluedo.Color(50, 50, 255);
  Bluedo.Stroke(200, 200, 200, 1);
  Bluedo.Text("◄", 255, 255, 255, 25);

  Blue = new Button(1045, 205, 175, 50);
  Blue.Color(255, 255, 255);

  Black = new Button(990, 270, 140, 65);
  Black.Color(0, 0, 0);

  White = new Button(1135, 270, 140, 65);
  White.Color(255, 255, 255);
  White.Stroke(200, 200, 200, 1);

  InitializeCustomButtons();
}

//----------------------------------------------------------------------------------------

void drawColorButtons() {
  Color.Color(red, green, blue);
  Color.Draw();
  Redup.Draw();
  Reddo.Draw();
  Red.Draw();
  Greenup.Draw();
  Greendo.Draw();
  Green.Draw();
  Blueup.Draw();
  Bluedo.Draw();
  Blue.Draw();
  Black.Draw();
  White.Draw();

  Red.Num(red, 255, 50, 50, 30);
  Green.Num(green, 50, 255, 50, 30);  
  Blue.Num(blue, 50, 50, 255, 30);

  if (red < 1)   red = 0;
  if (red>254)   red = 255;
  if (blue< 1)   blue = 0;
  if (blue>254)  blue = 255;
  if (green< 1)  green = 0;
  if (green>254) green = 255;

  if (Redup.mousePressed()) red++;
  if (Reddo.mousePressed()) red--;

  if (Greenup.mousePressed()) green++;
  if (Greendo.mousePressed()) green--;

  if (Blueup.mousePressed()) blue++;
  if (Bluedo.mousePressed()) blue--;

  if (Black.mousePressed()) {
    red = 0;
    green = 0;
    blue = 0;
  }
  if (White.mousePressed()) {
    red = 255;
    green = 255;
    blue = 255;
  }

  drawCustomButtons();
}

//----------------------------------------------------------------------------------------

void InitializeCustomButtons() {
  Custom1 = new Button(990, 340, 90, 55);
  Custom1.Color(255, 0, 0);
  Custom1.Stroke(200, 200, 200, 1);

  Custom2 = new Button(1087, 340, 90, 55);
  Custom2.Color(0, 255, 0);
  Custom2.Stroke(200, 200, 200, 1);

  Custom3 = new Button(1185, 340, 90, 55);
  Custom3.Color(0, 0, 255);
  Custom3.Stroke(200, 200, 200, 1);

  Custom4 = new Button(990, 400, 90, 55);
  Custom4.Color(255, 100, 150);
  Custom4.Stroke(200, 200, 200, 1);

  Custom5 = new Button(1087, 400, 90, 55);
  Custom5.Color(150, 255, 100);
  Custom5.Stroke(200, 200, 200, 1);

  Custom6 = new Button(1185, 400, 90, 55);
  Custom6.Color(255,125,0);
  Custom6.Stroke(200, 200, 200, 1);

  Custom7 = new Button(990, 460, 90, 55);
  Custom7.Color(255, 0, 255);
  Custom7.Stroke(200, 200, 200, 1);

  Custom8 = new Button(1087, 460, 90, 55);
  Custom8.Color(255, 255, 0);
  Custom8.Stroke(200, 200, 200, 1);

  Custom9 = new Button(1185, 460, 90, 55);
  Custom9.Color(0, 255, 255);
  Custom9.Stroke(200, 200, 200, 1);
}

//----------------------------------------------------------------------------------------

void drawCustomButtons() {
  Custom1.Draw();
  Custom2.Draw();
  Custom3.Draw();
  Custom4.Draw();
  Custom5.Draw();
  Custom6.Draw();
  Custom7.Draw();
  Custom8.Draw();
  Custom9.Draw();

  if (Custom1.mousePressed()) {
    red = Custom1.r;
    green = Custom1.g;
    blue = Custom1.b;
  }
  if (Custom2.mousePressed()) {
    red = Custom2.r;
    green = Custom2.g;
    blue = Custom2.b;
  }
  if (Custom3.mousePressed()) {
    red = Custom3.r;
    green = Custom3.g;
    blue = Custom3.b;
  }
  if (Custom4.mousePressed()) {
    red = Custom4.r;
    green = Custom4.g;
    blue = Custom4.b;
  }
  if (Custom5.mousePressed()) {
    red = Custom5.r;
    green = Custom5.g;
    blue = Custom5.b;
  }
  if (Custom6.mousePressed()) {
    red = Custom6.r;
    green = Custom6.g;
    blue = Custom6.b;
  }
  if (Custom7.mousePressed()) {
    red = Custom7.r;
    green = Custom7.g;
    blue = Custom7.b;
  }
  if (Custom8.mousePressed()) {
    red = Custom8.r;
    green = Custom8.g;
    blue = Custom8.b;
  }
  if (Custom9.mousePressed()) {
    red = Custom9.r;
    green = Custom9.g;
    blue = Custom9.b;
  }
}
