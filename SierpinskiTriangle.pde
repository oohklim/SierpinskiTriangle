public void setup() {
	size(500, 500);
	background(0);
	colorMode(HSB, 100);
	sierpinski(0, 500, 500);
}
public void draw() {

}
public void mouseDragged() {

}
public void sierpinski(int x, int y, int len) {
	if (len > 50) {
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	} else {
		stroke(0, 0, 100);
		// point(x, y);
		// point(x + len, y);
		// point(x + len/2, y - len);
		randomLine(x, y, x + len, y);
		randomLine(x + len, y, x + len/2, y - len);
		randomLine(x + len/2, y - len, x, y);
	}
}
public void randomLine(int x, int y, int x2, int y2)
{
  //i = x component of random line, j = y component
  int i = x + (int)(Math.random()*(x2 - x));
  int j = y - (((i - x) * (-y2 + y))/(x2 - x));
  line(x, y, i, j);
}