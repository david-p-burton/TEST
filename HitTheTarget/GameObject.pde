abstract class GameObject
{
  PShape shape;
  PVector pos;
  float speed;
  
  void render()
  {
    update();
    pushMatrix();
      translate(pos.x, pos.y);
      shape(shape);
    popMatrix();
  }
  
  void update()
  {
    if(pos.y >= height)
    {
      pos.y = 0;
    }
    pos.add(0, speed);
  }
}