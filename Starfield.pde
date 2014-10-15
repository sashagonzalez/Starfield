Particle []  parts  = new Particle[250];

void setup()
{
  size(600, 600);
  background(0);
  parts[0] = new oddParticle();
  for ( int i=1; i<parts.length; i++)
  {
    parts[i] = new normParticle();
   
  }
}

void draw()
{
  fill(0, 0, 0, 45);
  rect(-1, -1, 601, 601);
  for ( int i=0; i<parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
}

interface Particle
{
  public void move();
  public void show();
}

class oddParticle implements Particle
{
  double partX, partY, partRot, partSpeed;
  int clrRed, clrGreen, clrBlue;
  oddParticle()
  {
    partX=300;
    partY=300;
    partRot= Math.random()*TWO_PI;
    partSpeed= Math.random()*2;
    clrRed= (int)(Math.random()*255);
    clrGreen= (int)(Math.random()*255);
    clrBlue= (int)(Math.random()*255);
  }

  void move()
  {
    partRot-= .035;
    partX+= (Math.cos(partRot))*partSpeed;
    partY+= (Math.sin(partRot))*partSpeed;
    if (partX > 600 || partX < 0)
    {
      partX-=(Math.cos(partRot))*partSpeed;
    } 
    if (partY > 600 || partY < 0)
    {
      partY-=(Math.sin(partRot))*partSpeed;
    } 
  }
  void show()
  {
    fill(clrRed, clrGreen, clrBlue);
    ellipse( (float)partX, (float)partY, 25, 25);
  }
}

class normParticle implements Particle
{
  double partX, partY, partRot, partSpeed;
  int clrRed, clrGreen, clrBlue;
  normParticle()
  {
    partX=300;
    partY=300;
    partRot= Math.random()*TWO_PI;
    partSpeed= Math.random()*10;
    clrRed= (int)(Math.random()*255);
    clrGreen= (int)(Math.random()*255);
    clrBlue= (int)(Math.random()*255);
  }

  void move()
  {
    partRot+= .035;
    partX+= (Math.cos(partRot))*partSpeed;
    partY+= (Math.sin(partRot))*partSpeed;
    if (partX > 600 || partX < 0)
    {
      partX-=(Math.cos(partRot))*partSpeed;
    } 
    if (partY > 600 || partY < 0)
    {
      partY-=(Math.sin(partRot))*partSpeed;
    } 
  }
  void show()
  {
    fill(clrRed, clrGreen, clrBlue);
    ellipse( (float)partX, (float)partY, 5, 5);
  }
}
