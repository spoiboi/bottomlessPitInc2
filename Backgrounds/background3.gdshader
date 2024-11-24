shader_type sky;

uniform sampler2D image;
uniform float stretch : hint_range(0.0, 2.0);
uniform float wave_speed : hint_range(0.0, 2.0);

void sky() {

    vec2 skipped = SKY_COORDS;

    skipped.x += sin(SKY_COORDS.y * 50.0 + TIME * wave_speed) * 0.015 * stretch;


    skipped.y += mod(SKY_COORDS.y + (TIME * 0.015), 1.0);

	COLOR = texture(image, skipped).rgb * (1.0 - SKY_COORDS.y);
}
