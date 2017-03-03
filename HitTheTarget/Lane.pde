class Lane extends GameObject
{
  Lane(PVector pos)
  {
    this.pos = pos;
    this.shape = createShape(RECT, 0, 0, width/6, height);
    this.speed = 0;
  }
}