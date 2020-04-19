varying vec2 v_vTexcoord;
varying vec4 v_color;

uniform float u_seconds;

vec4 tv_shader()
{
    vec2 uv = v_vTexcoord.xy * 0.986;
    vec3 col;
    
    col.r = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).x;
    col.g = texture2D(gm_BaseTexture, vec2(uv.x + 0.0003, uv.y)).y;
    col.b = texture2D(gm_BaseTexture, vec2(uv.x - 0.0003, uv.y)).z;
    
    col = clamp(col * 0.5 + 0.6 * col * col, 0.0, 1.0);
	
	// Vignetting
    col *= 0.6 + 6.4 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y); 
    
    // TV Color
    col *= vec3(0.9, 1.0, 0.9); 
    
    // Scanlines
    col *= 0.8 + 0.2 * sin(10.0 * u_seconds + uv.y * 768.0); 
    
    // Similar results to old rand() function, but more efficient.
    col *= 1.0 - 0.07 * fract(tan(u_seconds * 100.0)); 
	
    return vec4(col, 1.0);
}

void main() {
	gl_FragColor = tv_shader();
}