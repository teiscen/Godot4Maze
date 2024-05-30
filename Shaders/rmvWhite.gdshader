shader_type canvas_item;

void fragment() {
	if(all(greaterThan(texture(TEXTURE, UV), vec4(0.95)))){
		COLOR = vec4(0.0);
	}
	else{
		COLOR = texture(TEXTURE, UV);
	}
}
