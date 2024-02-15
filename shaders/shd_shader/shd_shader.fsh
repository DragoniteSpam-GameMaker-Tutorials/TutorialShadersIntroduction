//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 sampled_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	//sampled_color.r = 1.0;
	
	//sampled_color.rgb *= 0.5;
	//sampled_color.rgb *= vec3(0.5, 0.5, 0.5);
	
	//sampled_color.rgb = vec3(0.0);
	//sampled_color.a *= 0.5;
	
	sampled_color.rgb = vec3(1.0) - sampled_color.rgb;
	
	gl_FragColor = sampled_color;
}
