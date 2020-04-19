//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 u_fade_colour; //Red, Green, Blue
uniform vec3 u_fade_alpha; //Z near, Z height, Falloff

void main()
{
    vec3 col;
    
    col.r = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).r;
    col.g = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).g;
    col.b = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).b;
	
    gl_FragColor = vec4(col, u_fade_alpha);
}