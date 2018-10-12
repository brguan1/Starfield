Particle [] sunlight;
void setup()
{
	size(600,600);
	sunlight = new Particle[1000];
	for (int i = 0; i < sunlight.length; i++)
    {
    	sunlight[i] = new NormalParticle();

    }
    	sunlight[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for (int i = 0; i< sunlight.length; i++)
	{
		sunlight[i].show();
		sunlight[i].move();
	}
	sunlight[0].mousepressed();
}
class NormalParticle implements Particle
{
	double xX, yY, aAngle, sSpeed;
	//int aAngle; //cColor;
	NormalParticle()
	{
		xX = 300;
		yY = 20;
		//cColor = ;
		aAngle = (Math.random()*2)*Math.PI;
		sSpeed = 10;
	}
	public void show()
	{
		stroke(252, 240, 73);
		line((float)xX,(float)yY,(float)(xX+(Math.cos(aAngle))*30),(float)(yY+(Math.cos(aAngle))*30));
		noStroke();
		fill(252,240,77);
		ellipse(300,20,100,100);
	}
	public void move()
	{
		xX = xX + (double)(Math.cos(aAngle))*sSpeed;
		yY = yY + (double)(Math.sin(aAngle))*sSpeed;
		if (xX<0 || xX>600 || yY < 0 || yY>600)
		{
			xX = 300;
			yY = 20;
		}
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double myX, myY;
	int qw,we,er; //color variables
	OddballParticle()
	{
		myX = mouseX;
		myY = mouseY;
		qw = (int)(Math.random()*255)+1;
		we = (int)(Math.random()*255)+1;
		er = (int)(Math.random()*255)+1;
	}
	public void show()
	{
		fill(qw,we,er);
		ellipse((float)myX,(float)myY,50,50);
	}
	public void move()
	{
		if (myX != mouseX)
			myX = mouseX;
		if (myY != mouseY)
			myY = mouseY;
	}
	void mousepressed()
	{
		qw = (int)(Math.random()*255)+1;
		we = (int)(Math.random()*255)+1;
		er = (int)(Math.random()*255)+1;
	}
}
class JumboParticle extends NormalParticle
{
	//your code here
}

