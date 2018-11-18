Grid grid[];
Button SizeAdd;
Button SizeSub;
Button Size;
Button New;
Button Grid;

void InitializeGrid() {
  s=700/size;
  x=285;
  y=10;
  grid = new Grid[size*size+1];
  for (int i=0; i<grid.length; i++) {
    grid[i] = new Grid(x, y, s);
    x+=s;
    if (i%size == 0 && i!=0) {
      x=285;
      y+=s;
    }
  }
}

void InitializeSizeButtons() {
  SizeAdd = new Button(10, 10, 265, 50);
  SizeAdd.Color(255, 255, 255);
  SizeAdd.Stroke(0, 0, 0, 2);
  SizeAdd.Edge(5, 5, 5, 5);
  SizeAdd.Text("▲", 0, 0, 0, 30);

  Size = new Button(10, 65, 265, 60);
  Size.Color(255, 255, 255);
  Size.Stroke(0, 0, 0, 2);
  Size.Edge(5, 5, 5, 5);
  Size.Num(size, 0, 0, 0, 40);

  SizeSub = new Button(10, 130, 265, 50);
  SizeSub.Color(255, 255, 255);
  SizeSub.Stroke(0, 0, 0, 2);
  SizeSub.Edge(5, 5, 5, 5);
  SizeSub.Text("▼", 0, 0, 0, 30);
  
  New = new Button(10,185,265,60);
  New.Color(255,255,255);
  New.Stroke(0,0,0,2);
  New.Edge(5,5,5,5);
  New.Text("New",0,0,0,35);
  
  Grid = new Button(10,250,265,60);
  Grid.Color(255,255,255);
  Grid.Stroke(0,0,0,2);
  Grid.Edge(5,5,5,5);
  Grid.Text("Grid : ON",0,0,0,32);
}

void drawGrid() {
  for (int i=0; i<grid.length; i++) {
    grid[i].Draw();
    if (i==size-1)
      i++;
  }
  if (size <2) size =1;
  SizeAdd.Draw();
  Size.Draw();
  Size.no = size;
  SizeSub.Draw();
  New.Draw();
  Grid.Draw();
  if(grid[1].Stroke) {
    Grid.Text = "Grid : ON";
  } else Grid.Text ="Grid : OFF";
}
