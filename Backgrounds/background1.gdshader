shader_type sky;

uniform sampler2D image;
uniform float stretch;

void sky() {
	vec2 skipped = SKY_COORDS;
	
	skipped.x += sin(SKY_COORDS.y * 50.0 + TIME) * 0.015;
	skipped.y += mod(SKY_COORDS.y + (TIME * 0.015), 1.0);
	
	COLOR = texture(image, skipped).rgb;
}
