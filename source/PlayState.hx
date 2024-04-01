package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import openfl.filters.ShaderFilter;

class PlayState extends FlxState
{
	var daCam:FlxCamera = new FlxCamera();

	override public function create()
	{
		super.create();
		FlxG.cameras.reset(daCam);
		FlxG.cameras.setDefaultDrawTarget(daCam, true);
		daCam.filters = [new ShaderFilter(new TestShader())];
	}
}
