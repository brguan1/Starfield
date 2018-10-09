Particle [] sunlight;
void setup()
{
	size(600,600);
	background(0);
	sunlight = new NormalParticle[100];
	for (int i = 0; i < sunlight.length; i++)
    {
    	sunlight[i] = new NormalParticle(); 
    }
}
void draw()
{
	for (int i = 0; i< sunlight.length; i++)
	{
		sunlight[i].show();
		sunlight[i].move();
}	}
class NormalParticle implements Particle
{
	double xX, yY, aAngle, sSpeed;
	//int aAngle; //cColor;
	NormalParticle()
	{
		xX = 300;
		yY = 20;
		//cColor = ;
		aAngle = 0.80;
		sSpeed = 10;
	}
	public void show()
	{
		stroke(252, 240, 73);
		line((float)xX,(float)yY,(float)xX*2,(float)yY*2);
	}
	public void move()
	{
		xX = xX + (double)(Math.cos(aAngle))*sSpeed;
		yY = yY + (double)(Math.sin(aAngle))*sSpeed;
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

