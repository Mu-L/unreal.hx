package unreal;

@:glueCppIncludes("SocketSubsystem.h")
@:uname("ISocketSubsystem")
@:uextern @:noCopy @:noEquals extern class ISocketSubsystem {

	static public function Get() : PPtr<ISocketSubsystem>;
	// TODO implement a NAME_None
	//static public function Get(SubsystemName:Const<PRef<FName>>=NAME_None) : ISocketSubsystem;

	/**
	 *	Create a proper FInternetAddr representation
	 * @param Address host address
	 * @param Port host port
	 */
	public function CreateInternetAddr(?Address:FakeUInt32=0, ?Port:FakeUInt32=0) : TSharedRef<FInternetAddr>;

	public function DestroySocket(Socket:PPtr<unreal.sockets.FSocket>):Void;

	public function CreateSocket(SocketType:Const<PRef<FName>>, SocketDescription:Const<PRef<FString>>, bForceUDP:Bool = false):PPtr<unreal.sockets.FSocket>;
}
