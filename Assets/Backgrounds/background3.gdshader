shader_type sky;

uniform sampler2D image;
uniform float delta = 0.1;

void sky() {
	float x_pos = SKY_COORDS.x * 2.0;
	
	//float y_pos = atanh(SKY_COORDS.y) + TIME * delta;
	float y_pos = SKY_COORDS.y - TIME * delta;
	if (SKY_COORDS.y >= 0.6) {
		y_pos -= 0.1;
	} else if (SKY_COORDS.y >= 0.4) {
		y_pos = (SKY_COORDS.y - 0.4) * 0.5 + 0.4 - TIME * delta;
	}
	
	COLOR = texture(image, vec2(x_pos, y_pos)).rgb;
}
