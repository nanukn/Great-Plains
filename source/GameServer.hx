package;
import enet.ENetEvent;
import enet.Server;

/**
 * ...
 * @author ...
 */
class GameServer extends Server
{
	
	public var clientID:Int;

	public function new(IP:String = null, Port:Int = 0, Channels:Int = 2, Players:Int = 32) 
	{
		super(IP, Port, Channels, Players);
	}
	
	override public function onPeerConnect(e:ENetEvent):Void
	{
		super.onPeerConnect(e);
	}
	
	override public function onPeerDisconnect(e:ENetEvent):Void 
	{
		super.onPeerDisonnect(e);
	}
	
	override public function onReceive(MsgID:Int, E:ENetEvent):Void
	{
		super.onReceive(MsgID, E);
		
	}
	
}