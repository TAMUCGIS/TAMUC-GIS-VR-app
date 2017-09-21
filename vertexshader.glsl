void main() {
	gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x+10.0, position.y, position.z+5.0, 1.0);

    	vec2 xy = fragCoord.xy / iResolution.xy; // Condensing this into one line
   	vec4 texColor = texture(iChannel0,xy); // Get the pixel at xy from iChannel0
       		texColor.r *= abs(sin(iGlobalTime));
    	texColor.g *= abs(cos(iGlobalTime));
    	texColor.b *= abs(sin(iGlobalTime) * cos(iGlobalTime));
    	fragColor = texColor; // Set the screen pixel to that color
}
