shader_type canvas_item;
uniform vec4 value;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 pixelcolor = texture(TEXTURE, UV);
	COLOR = pixelcolor * value;
}

void light() {
	// Called for every pixel for every light affecting the CanvasItem.
}
