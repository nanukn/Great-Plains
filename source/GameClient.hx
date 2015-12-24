package;
import enet.Client;
import enet.ENetEvent;

/**
 * ...
 * @author ...
 */
class GameClient extends Client
{
	
	public var serverID:Int;

	public function new(IP:String, Port:Int, Channels:Int = 2, Players:Int = 1) 
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
	
	override public function onRecieve(MsgID:Int, E:ENetEvent):Void
	{
		super.onReceive(MsgID, E);
	}
	
}