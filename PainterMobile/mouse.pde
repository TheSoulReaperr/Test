
void mousePressed() {
  if(SizeAdd.mouseOver()) size++;
  if(SizeSub.mouseOver()) size--;
  if(New.mouseOver()) InitializeGrid();
  
  if(Grid.mouseOver()) {
    for(Grid f: grid) {
      if(f.Stroke) {
        f.Stroke = false;
        Grid.Text = "Grid : OFF";
      }
      else { 
        f.Stroke = true;
        Grid.Text = "Grid : ON";
      }
    }
  }
}
