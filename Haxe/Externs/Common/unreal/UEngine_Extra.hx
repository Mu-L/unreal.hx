package unreal;

extern class UEngine_Extra {

	public var bForceDisableFrameRateSmoothing:Bool;
	/**
		Gets all local players associated with the engine.
		This function should only be used in rare cases where no UWorld* is available to get a player list associated with the world.
		E.g, - use GetFirstLocalPlayerController(UWorld *InWorld) when possible!
	 */
	public function GetAllLocalPlayerControllers(PlayerList:PRef<TArray<APlayerController>>) : Void;

	public function GetFirstLocalPlayerController(world:UWorld):APlayerController;

	public function OnTravelFailure() : PRef<FOnTravelFailure>;

	public function OnNetworkFailure() : PRef<FOnNetworkFailure>;

	public function HandleDisconnect(World:UWorld, NetDriver:UNetDriver) : Void;

	public function GetWorldContextFromWorld(InWorld:Const<UWorld>) : PPtr<FWorldContext>;

	public function GetWorldContextFromWorldChecked(InWorld:Const<UWorld>) : PRef<FWorldContext>;

	public function GetWorldContexts() : Const<PRef<TIndirectArray<FWorldContext>>>;

	public function GetMainAudioDevice() : PPtr<FAudioDevice>;

	public function GetGameUserSettings() : UGameUserSettings;

	#if proletariat
	public function UpdateGameUserSettings(Settings:UGameUserSettings) : Void;
	#end

/**
	 * Updates level streaming state using active game players view and blocks until all sub-levels are loaded/ visible/ hidden
	 * so further calls to UpdateLevelStreaming won't do any work unless state changes.
	 *
	 * @param InWorld Target world
	 */
	public function BlockTillLevelStreamingCompleted(InWorld:UWorld) : Void;

	public var TravelFailureEvent : FOnTravelFailure;
	/**
		Global UEngine
	 **/
	@:uname("GEngine")
	@:global static var GEngine : UEngine;

	@:uname("GWorld")
	@:global static var GWorld : UWorldProxy;

	@:uname("GIsRequestingExit")
	@:global static var GIsRequestingExit : Bool;

	@:thisConst
	public function UseSound() : Bool;

	/**
	 * Returns the current netmode
	 * @param   NetDriverName    Name of the net driver to get mode for
	 * @return current netmode
	 *
	 * Note: if there is no valid net driver, returns NM_StandAlone
	 */
	@:thisConst
	public function GetNetMode(World:Const<UWorld>) : ENetMode;

	/**
		Check to see if this executable is running a commandlet
	 **/
	@:glueCppIncludes('CoreGlobals.h')
	@:global static function IsRunningCommandlet():Bool;

	/** Whether we're currently in the async loading code path or not */
	@:glueCppIncludes('CoreGlobals.h')
	@:global static function IsAsyncLoading() : Bool;

	public function Exec(InWorld:UWorld, Cmd:TCharStar, Out:PRef<FOutputDevice>):Bool;

	public function GetWorldFromContextObject(obj:Const<UObject>, bChecked:Bool):UWorld;

	public function CreateNewWorldContext(WorldType:EWorldType):PRef<FWorldContext>;

	/** Add a FString to the On-screen debug message system. bNewerOnTop only works with Key == INDEX_NONE */
	public function AddOnScreenDebugMessage(Key : Int32, TimeToDisplay : Float32, DisplayColor : FColor, DebugMessage : Const<PRef<FString>>):Void;

	/** Retrieve the message for the given key */
	public function OnScreenDebugMessageExists(Key : FakeUInt64):Bool;

	/** Clear any existing debug messages */
	public function ClearOnScreenDebugMessages():Void;

	/** Updates the timer between garbage collection such that at the next opportunity garbage collection will be run. */
	public function ForceGarbageCollection(bFullPurge:Bool=false) : Void;
}
