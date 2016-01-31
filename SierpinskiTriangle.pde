int a = 500;
double hue = 1;
double change = .3;
boolean random = false;
boolean rainbow = false;
public void setup() {
	size(500, 500);
	colorMode(HSB, 100);
}
public void draw() {
	background(0);
	hue += change;
	if(hue >= 100 || hue <= 1)
		change *= -1;
	sierpinski(0, 499, 499);
}
public void keyPressed() {
	if(key == 'a') {
		random = true;
	}
	if(key == 'd') {
		random = false;
	}
	if(key == 'q') {
		rainbow = true;
	}
	if(key == 'e') {
		rainbow = false;
	}
}
public void sierpinski(int x, int y, int len) {
	if (len > mouseX + 20) {
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	} else {
		if(rainbow == false) {
			stroke((float)hue, 70, 90);
		} else {
			stroke((float)(Math.random() * 101), 70, 90);
		}
		if(random == false) {
			line(x, y, x + len, y);
			line(x + len, y, x + len/2, y - len);
			line(x + len/2, y - len, x, y);
		} else {
			randomLine(x, y, x + len, y);
			randomLine(x + len, y, x + len/2, y - len);
			randomLine(x + len/2, y - len, x, y);
		}
	}
}
public void randomLine(int x, int y, int x2, int y2)
{
  //i = x component of random line, j = y component
  if ((int)Math.random()*2 == 1) {
  	int i = x + (int)(Math.random()*(x2 - x));
  	int j = y - (((i - x) * (-y2 + y))/(x2 - x));
  	line(x, y, i, j);
  } else {
  	int i = x2 + (int)(Math.random()*(x - x2));
  	int j = y2 - (((i - x2) * (-y + y2))/(x - x2));
  	line(x, y, i, j);
  }
}
