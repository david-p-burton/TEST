class Note extends GameObject
{
  Note(PVector pos, float speed)
  {
    this.pos = pos;
    this.shape = createShape(ELLIPSE, 0, 0, 30, 30);
    this.speed = speed;
  }
}