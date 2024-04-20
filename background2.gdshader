shader_type sky;

uniform sampler2D image;

void sky() {
	float x_pos = SKY_COORDS.x * 2.0;
	
	float y_pos = -cos(SKY_COORDS.y * TAU) + TIME * 0.02;
	
	COLOR = texture(image, vec2(x_pos, y_pos)).rgb;
}
