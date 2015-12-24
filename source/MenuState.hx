package;

import enet.NetBase;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import enet.ENet;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	
	public var server:GameServer = null;
	public var client:GameClient = null;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		FlxG.autoPause = false;
		
		ENet.init();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}
	
	public function updateClient():Void
	{
		while (true)
		{
			updateHost(client);
		}
	}
	
	public function updateServer():Void
	{
		while (true)
		{
			updateHost(server);
		}
	}
	
	public function updateHost(Host:NetBase):Void
	{
		Host.poll();
		Sys.sleep(0.001);
	}
}