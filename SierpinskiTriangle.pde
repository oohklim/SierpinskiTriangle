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
		point(x, y);
		point(x + len, y);
		point(x + len/2, y - len);
		
		// line(x, y, x + len, y);
		// line(x + len, y, x + len/2, y - len);
		// line(x, y, x + len/2, y - len);
		//triangle(x, y, x + len, y, x + len/2, y - len);
	}
}