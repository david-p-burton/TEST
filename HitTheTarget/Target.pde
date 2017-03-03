class Target extends GameObject
{
  Target(PVector pos)
  {
    this.pos = pos;
    this.shape = createShape(ELLIPSE, 0, 0, 50, 50);
    this.speed = 0;
  }
  
}