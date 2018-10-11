Particle [] sunlight;
void setup()
{
	size(600,600);
	sunlight = new NormalParticle[100];
	for (int i = 0; i < sunlight.length; i++)
    {
    	sunlight[i] = new NormalParticle(); 
    }
}
void draw()
{
	background(0);
	for (int i = 0; i< sunlight.length; i++)
	{
		sunlight[i].show();
		sunlight[i].move();
	}
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
		line((float)xX,(float)yY,(float)xX*10,(float)yY*10);
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
	OddballParticle()
	{

	}
	public void show()
	{

	}
	public void move()
	{

	}
}
class JumboParticle extends NormalParticle
{
	//your code here
}

