package unreal;

@:uname("UWorld.FOnGameStateSetEvent")
typedef FOnGameStateSetEvent = unreal.Event<FOnGameStateSetEvent, AGameStateBase->Void>;

extern class UWorld_Extra {
  /** Time in seconds since level began play, but is NOT paused when the game is paused, and is NOT dilated/clamped. */
  public var RealTimeSeconds : Float32;

  public var Scene : PPtr<FSceneInterface>;

  public var URL : FURL;

  public var OriginLocation : FIntVector;

  public var GameStateSetEvent : FOnGameStateSetEvent;

  @:thisConst
  public function GetNetMode() : ENetMode;

  @:thisConst
  public function GetGameState() : AGameStateBase;

  @:thisConst
  public function GetGameInstance() : UGameInstance;

  @:typeName @:uname("GetGameInstance")
  public function GetTypedGameInstance<T : UGameInstance>() : PPtr<T>;

  @:thisConst
  public function GetGameViewport() : UGameViewportClient;

  @:thisConst
  public function IsPlayInEditor() : Bool;

  @:thisConst
  public function IsGameWorld() : Bool;

  /** @return true if this level is a client */
  @:thisConst
  public function IsClient() : Bool;

  /** @return true if this level is a server */
  @:thisConst
  public function IsServer() : Bool;

  /** @return true if the world is in the paused state */
  @:thisConst
  public function IsPaused() : Bool;

  /** @return true if the camera is in a moveable state (taking pausedness into account) */
  @:thisConst
  public function IsCameraMoveable() : Bool;

#if (UE_VER < 4.19)
  @:thisConst
  public function GetControllerIterator() : TConstArrayIteratorWrapper<TAutoWeakObjectPtr<AController>>;
#else
  @:thisConst
  public function GetControllerIterator() : TConstArrayIteratorWrapper<TWeakObjectPtr<AController>>;
#end

  @:thisConst
  public function GetFirstPlayerController() : APlayerController;

#if (UE_VER < 4.19)
  @:thisConst
  public function GetPawnIterator() : TConstArrayIteratorWrapper<TAutoWeakObjectPtr<APawn>>;
#else
  @:thisConst
  public function GetPawnIterator() : TConstArrayIteratorWrapper<TWeakObjectPtr<APawn>>;
#end

  /** Returns a pointer to the physics scene for this world. */
  @:thisConst
  public function GetPhysicsScene() : PPtr<FPhysScene>;

  public function SpawnActor(cls:UClass, location:PPtr<Const<FVector>>, rotator:PPtr<Const<FRotator>>, spawnParameters:Const<PRef<FActorSpawnParameters>>) : AActor;

  /**
   * Removes the actor from its level's actor list and generally cleans up the engine's internal state.
   * What this function does not do, but is handled via garbage collection instead, is remove references
   * to this actor from all other actors, and kill the actor's resources.  This function is set up so that
   * no problems occur even if the actor is being destroyed inside its recursion stack.
   *
   * @param	ThisActor				Actor to remove.
   * @param	bNetForce				[opt] Ignored unless called during play.  Default is false.
   * @param	bShouldModifyLevel		[opt] If true, Modify() the level before removing the actor.  Default is true.
   * @return							true if destroyed or already marked for destruction, false if actor couldn't be destroyed.
   */
  public function DestroyActor(actor:AActor, bNetForce:Bool=false, bShouldModifyLevel:Bool=true) : Bool;

  @:thisConst
  public function GetAuthGameMode() : AGameModeBase;

  /**
   * Returns time in seconds since world was brought up for play, IS stopped when game pauses, IS dilated/clamped
   *
   * @return time in seconds since world was brought up for play
   */
  @:thisConst
  public function GetTimeSeconds() : Float32;

	/**
	* Returns time in seconds since world was brought up for play, does NOT stop when game pauses, NOT dilated/clamped
	*
	* @return time in seconds since world was brought up for play
	*/
  @:thisConst
	public function GetRealTimeSeconds() : Float32;

  /**
	* Returns time in seconds since world was brought up for play, IS stopped when game pauses, NOT dilated/clamped
	*
	* @return time in seconds since world was brought up for play
	*/
  @:thisConst
  public function GetAudioTimeSeconds() : Float32;

  /**
   * Returns the frame delta time in seconds adjusted by e.g. time dilation.
   *
   * @return frame delta time in seconds adjusted by e.g. time dilation
   */
  @:thisConst
  public function GetDeltaSeconds() : Float32;

  /** Helper for getting the time since a certain time. */
  @:thisConst
	public function TimeSince(Time:Float32) : Float32;

	/** Return the URL of this level on the local machine. */
  @:thisConst
	function GetLocalURL() : FString;

	// Return the URL of this level, which may possibly
	// exist on a remote machine.
  @:thisConst
	function GetAddressURL() : FString;

	/**
	 * Returns the name of the current map, taking into account using a dummy persistent world
	 * and loading levels into it via PrepareMapChange.
	 *
	 * @return	name of the current map
	 */
   @:thisConst
	 function GetMapName() : FString;

  /**
   * Jumps the server to new level.  If bAbsolute is true and we are using seemless traveling, we
   * will do an absolute travel (URL will be flushed).
   *
   * @param URL the URL that we are traveling to
   * @param bAbsolute whether we are using relative or absolute travel
   * @param bShouldSkipGameNotify whether to notify the clients/game or not
   */
  public function ServerTravel(InURL:Const<PRef<FString>>, bAbsolute:Bool=false, bShouldSkipGameNotify:Bool=false) : Void;

  public function IsInSeamlessTravel() : Bool;

  /**
    Returns TimerManager instance for this world.
   **/
  public function GetTimerManager() : PRef<FTimerManager>;

  /**
   *  Trace a ray against the world using a specific channel and return the first blocking hit
   *  @param  OutHit          First blocking hit found
   *  @param  Start           Start location of the ray
   *  @param  End             End location of the ray
   *  @param  TraceChannel    The 'channel' that this ray is in, used to determine which components to hit
   *  @param  Params          Additional parameters used for the trace
   *  @param  ResponseParam ResponseContainer to be used for this trace
   *  @return TRUE if a blocking hit is found
   */
  @:thisConst
  public function LineTraceSingleByChannel(OutHit:PRef<FHitResult>,Start:Const<PRef<FVector>>,End:Const<PRef<FVector>>, TraceChannel:ECollisionChannel, Params:Const<PRef<FCollisionQueryParams>>, ResponseParams:Const<PRef<FCollisionResponseParams>>) : Bool;

	/**
	 *  Trace a ray against the world using a specific channel and return overlapping hits and then first blocking hit
	 *  Results are sorted, so a blocking hit (if found) will be the last element of the array
	 *  Only the single closest blocking result will be generated, no tests will be done after that
	 *  @param  OutHits         Array of hits found between ray and the world
	 *  @param  Start           Start location of the ray
	 *  @param  End             End location of the ray
	 *  @param  TraceChannel    The 'channel' that this ray is in, used to determine which components to hit
	 *  @param  Params          Additional parameters used for the trace
	 * 	@param 	ResponseParam	ResponseContainer to be used for this trace
	 *  @return TRUE if OutHits contains any blocking hit entries
	 */
  @:thisConst
  public function LineTraceMultiByChannel(OutHits:PRef<TArray<FHitResult>>, Start:Const<PRef<FVector>>,End:Const<PRef<FVector>>, TraceChannel:ECollisionChannel, Params:Const<PRef<FCollisionQueryParams>>, ResponseParams:Const<PRef<FCollisionResponseParams>>) : Bool;

	/**
	 * Interface for Async. Pretty much same parameter set except you can optional set delegate to be called when execution is completed and you can set UserData if you'd like
	 * if no delegate, you can query trace data using QueryTraceData or QueryOverlapData
	 * the data is available only in the next frame after request is made - in other words, if request is made in frame X, you can get the result in frame (X+1)
	 *
	 *	@param	InTraceType		Indicates if you want multiple results, single result, or just yes/no (no hit information)
	 *  @param  Start           Start location of the ray
	 *  @param  End             End location of the ray
	 *  @param  TraceChannel    The 'channel' that this ray is in, used to determine which components to hit
	 *  @param  Params          Additional parameters used for the trace
	 * 	@param 	ResponseParam	ResponseContainer to be used for this trace
	 *	@param	InDeleagte		Delegate function to be called - to see example, search FTraceDelegate
	 *							Example can be void MyActor::TraceDone(const FTraceHandle& TraceHandle, FTraceDatum & TraceData)
	 *							Before sending to the function,
	 *
	 *							FTraceDelegate TraceDelegate;
	 *							TraceDelegate.BindRaw(this, &MyActor::TraceDone);
	 *
	 *	@param	UserData		UserData
	 */
	public function AsyncLineTraceByChannel(InTraceType:EAsyncTraceType, Start:Const<PRef<FVector>>, End:Const<PRef<FVector>>, TraceChannel:ECollisionChannel, Params:Const<PRef<FCollisionQueryParams>>, ResponseParam:Const<PRef<FCollisionResponseParams>>):FTraceHandle;

  @:thisConst
  public function SweepSingleByChannel(OutHit:PRef<FHitResult>, Start:Const<PRef<FVector>>, End:Const<PRef<FVector>>, Rot:Const<PRef<FQuat>>, TraceChannel:ECollisionChannel, Shape:Const<PRef<FCollisionShape>>, Params:Const<PRef<FCollisionQueryParams>>, ResponseParams:Const<PRef<FCollisionResponseParams>>) : Bool;

  @:thisConst
  public function SweepMultiByChannel(OutHits:PRef<TArray<FHitResult>>, Start:Const<PRef<FVector>>, End:Const<PRef<FVector>>, Rot:Const<PRef<FQuat>>, TraceChannel:ECollisionChannel, Shape:Const<PRef<FCollisionShape>>, Params:Const<PRef<FCollisionQueryParams>>, ResponseParams:Const<PRef<FCollisionResponseParams>>) : Bool;

  @:noTemplate
  @:uname("SpawnActorDeferred<AActor>")
  @:typeName public function SpawnActorDeferred<T : AActor>(
    aClass:UClass,
    transform:Const<PRef<FTransform>>,
    ?owner:AActor,
    ?instigator:APawn,
    ?collisionHandlingOverride:ESpawnActorCollisionHandlingMethod = ESpawnActorCollisionHandlingMethod.Undefined) : T;

  /**
    Test the collision of a shape at the supplied location using a specific channel, and return if any blocking overlap is found
   **/
  function OverlapBlockingTestByChannel(
      pos:Const<PRef<FVector>>,
      rot:Const<PRef<FQuat>>,
      traceChannel:ECollisionChannel,
      collisionShape:Const<PRef<FCollisionShape>>,
      params:Const<PRef<FCollisionQueryParams>>,
      responseParam:Const<PRef<FCollisionResponseParams>>):Bool;


	/**
	 *  Test the collision of a shape at the supplied location using a specific channel, and determine the set of components that it overlaps
	 *  @param  OutOverlaps     Array of components found to overlap supplied box
	 *  @param  Pos             Location of center of shape to test against the world
	 *  @param  TraceChannel    The 'channel' that this query is in, used to determine which components to hit
	 *  @param	CollisionShape	CollisionShape - supports Box, Sphere, Capsule
	 *  @param  Params          Additional parameters used for the trace
	 * 	@param 	ResponseParam	ResponseContainer to be used for this trace
	 *  @return TRUE if OutOverlaps contains any blocking results
	 */
  @:thisConst
	function OverlapMultiByChannel(
    OutOverlaps:PRef<TArray<FOverlapResult>>,
    Pos:Const<PRef<FVector>>,
    Rot:Const<PRef<FQuat>>,
    TraceChannel:ECollisionChannel,
    CollisionShape:Const<PRef<FCollisionShape>>,
    Params:Const<PRef<FCollisionQueryParams>>,
    ResponseParam:Const<PRef<FCollisionResponseParams>>
  ) : Bool;

  /**
	 *  Test the collision of a shape at the supplied location using a specific profile, and determine the set of components that it overlaps
	 *  @param  OutOverlaps     Array of components found to overlap supplied box
	 *  @param  Pos             Location of center of shape to test against the world
	 *  @param  ProfileName     The 'profile' used to determine which components to hit
	 *  @param	CollisionShape	CollisionShape - supports Box, Sphere, Capsule
	 *  @param  Params          Additional parameters used for the trace
	 *  @return TRUE if OutOverlaps contains any blocking results
	 */
  @:thisConst
	function OverlapMultiByProfile(
    OutOverlaps:PRef<TArray<FOverlapResult>>,
    Pos:Const<PRef<FVector>>,
    Rot:Const<PRef<FQuat>>,
    ProfileName:FName,
    CollisionShape:Const<PRef<FCollisionShape>>,
    Params:Const<PRef<FCollisionQueryParams>>
  ) : Bool;

	/**
	 * Query function
	 * return true if already done and returning valid result - can be hit or no hit
	 * return false if either expired or not yet evaluated or invalid
	 * Use IsTraceHandleValid to find out if valid and to be evaluated
	 */
	public function QueryTraceData(Handle:Const<PRef<FTraceHandle>>, OutData:PRef<FTraceDatum>):Bool;

  /**
    Returns the AWorldSettings actor associated with this world.
   **/
  function GetWorldSettings(bCheckStreamingPesistent:Bool, bChecked:Bool):AWorldSettings;

	/** Gets this world's instance for a given collection. */
  function GetParameterCollectionInstance(Collection:Const<UMaterialParameterCollection>) : UMaterialParameterCollectionInstance;

  function AreActorsInitialized():Bool;

  /** View locations rendered in the previous frame, if any. **/
  public var ViewLocationsRenderedLastFrame:TArray<FVector>;

	/** Try to find an acceptable position to place TestActor as close to possible to PlaceLocation.  Expects PlaceLocation to be a valid location inside the level. */
	public function FindTeleportSpot( TestActor:AActor, PlaceLocation:PRef<FVector>, PlaceRotation:FRotator ) : Bool;

  /**
	 * Returns the Z component of the current world gravity.
	 *
	 * @return Z component of current world gravity.
	*/
  function GetGravityZ():Float32;

  /** @return whether there is at least one level with a pending visibility request */
  public function IsVisibilityRequestPending():Bool;

  /**
  * Updates sub-levels (load/unload/show/hide) using streaming levels current state
  */
  public function UpdateLevelStreaming():Void;

  /** Is level streaming currently frozen? */
  public var bIsLevelStreamingFrozen:Bool;

  @:thisConst
  public function GetStreamingLevels() : Const<PRef<TArray<ULevelStreaming>>>;

  /** If true this world will tick physics to simulate. This isn't same as having Physics Scene.
  *  You need Physics Scene if you'd like to trace. This flag changed ticking */
  public var bShouldSimulatePhysics:Bool;

	/** The type of world this is. Describes the context in which it is being used (Editor, Game, Preview etc.) */
	public var WorldType:EWorldType;

  	/**
	 * Flushes level streaming in blocking fashion and returns when all levels are loaded/ visible/ hidden
	 * so further calls to UpdateLevelStreaming won't do any work unless state changes. Basically blocks
	 * on all async operation like updating components.
	 *
	 * @param FlushType					Whether to only flush level visibility operations (optional)
	 */
  public function FlushLevelStreaming(FlushType:EFlushLevelStreamingType = Full) : Void;

	/** Given a package, locate the UWorld contained within if one exists */
	public static function FindWorldInPackage(Package:UPackage) : UWorld;

  /** A static map that is populated before loading a world from a package. This is so UWorld can look up its WorldType in ::PostLoad */
  public static var WorldTypePreLoadMap:TMap<FName, EWorldType>;

	/** Is the world being torn down */
  public var bIsTearingDown:Bool;
}
