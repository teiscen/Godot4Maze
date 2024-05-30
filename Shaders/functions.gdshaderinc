

float draw_circle(vec2 uv, float size, float edge) {
	edge = max(edge, 1.0e-8);
	float dist = length(uv);
	return clamp((1.0 - dist / size) / edge, 0.0, 1.0);
}

float draw_polygon(vec2 uv, float sides, float size, float edge, float rotation) {
	edge = max(edge, 1.0e-8);
	float angle = atan(uv.x, uv.y) + rotation;
	float slice = TAU / sides;
	float corner = 0.5;
	float limit = cos(floor(corner + angle / slice) * slice - angle);
	float dist = length(uv);
	return clamp((1.0 - dist * limit/ size) / edge, 0.0, 1.0);
}
