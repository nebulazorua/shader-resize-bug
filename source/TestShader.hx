package;

class TestShader extends flixel.system.FlxAssets.FlxShader
{
	@:glFragmentSource('
  #pragma header
    
void main() {
    
    vec2 uv = openfl_TextureCoordv.xy;
    
    gl_FragColor = vec4( uv.x, uv.y, 0.0, 1.0 );

}

    ')
	public function new()
	{
		super();
	}
}
