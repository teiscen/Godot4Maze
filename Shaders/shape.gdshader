shader_type canvas_item;
#include "functions.gdshaderinc"

uniform float hexagon_size: hint_range(0.01, 0.5) = 0.02;





void fragment() {
	vec2 uv = UV - 0.5; //Move origin to center
	vec3 color = vec3(0.0, 0.3, 0.5); //set color var to black no alpha 
	// TOP
	vec2 upLt = vec2(uv.x + 0.23, uv.y + 0.4);
	color += draw_polygon(upLt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	vec2 upRt = vec2(uv.x + -0.23, uv.y + 0.4);
	color += draw_polygon(upRt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	// MIDDLE
	vec2 midRt = vec2(uv.x + -0.461, uv.y);
	color += draw_polygon(midRt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	vec2 midLt = vec2(uv.x +  0.461, uv.y);
	color += draw_polygon(midLt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	// BOTTOM
	vec2 botLt = vec2(uv.x + 0.23, uv.y + -0.4);
	color += draw_polygon(botLt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	vec2 botRt = vec2(uv.x + -0.23, uv.y + -0.4);
	color += draw_polygon(botRt, 6.0, hexagon_size, 0.0, PI/2.0) * vec3(1.0, 0.0, 0.0);	
	
	
	
	
	// CHECK
	color += draw_polygon(uv, 6.0, 0.4, 0.0, 0.0) * vec3(0.0, 0.0, 1.0);
	
	COLOR = vec4(color, 1.0);
}

