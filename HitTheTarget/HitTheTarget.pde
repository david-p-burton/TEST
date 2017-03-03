Lane lA;
Target tA;
Note nA;
ArrayList<GameObject> gameobjects = new ArrayList<GameObject>();

int score;

void setup()
{
  size(600,600);
  score = 0;
  lA = new Lane(new PVector(width/2-100, 0));
  tA = new Target(new PVector(lA.pos.x+50, height*0.9));
  nA = new Note(new PVector(tA.pos.x, 0), 10f);
  gameobjects.add(lA);
  gameobjects.add(tA);
  gameobjects.add(nA);
}

void draw()
{
   background(255);
   for(int i=0; i< gameobjects.size(); i++)
   {
     gameobjects.get(i).render();
   }
   
   fill(0);
   textSize(32);
   text(score, 100, 50);
}


void keyPressed()
{
  if(keyCode == DOWN)
  {
    for( int i=0; i< gameobjects.size(); i++)
    {
      Note n;
      
      if(gameobjects.get(i) instanceof Note)
      {
        n = (Note) gameobjects.get(i);
        if(dist(n.pos.x, n.pos.y, tA.pos.x, tA.pos.y) <= 25)
        {
          score++;
        }
      }
      
    }
  }//end if key = Down
}