package unreal;

extern class UActorComponent_Extra {
  /**
   * Function called every frame on this ActorComponent. Override this function to implement custom logic to be executed every frame.
   * Only executes if the component is registered, and also PrimaryComponentTick.bCanEverTick must be set to true.
   *
   * @param DeltaTime - The time since the last tick.
   * @param TickType - The kind of tick this is, for example, are we paused, or 'simulating' in the editor
   * @param ThisTickFunction - Internal tick function struct that caused this to run
   */
  public function TickComponent(deltaTime:Float32, tickType:ELevelTick, thisTickFunction:PPtr<FActorComponentTickFunction>) : Void;

  /** Used to create any rendering thread information for this component
  *
  * **Caution**, this is called concurrently on multiple threads (but never the same component concurrently)
  */
  private function CreateRenderState_Concurrent() : Void;

  /** Used to shut down any rendering thread structure for this component
  *
  * **Caution**, this is called concurrently on multiple threads (but never the same component concurrently)
  */
  private function DestroyRenderState_Concurrent() : Void;

  /** Mark the render state as dirty - will be sent to the render thread at the end of the frame. */
  public function MarkRenderStateDirty() : Void;

  /** Recreate the render state right away. Generally you always want to call MarkRenderStateDirty instead.
  *
  * **Caution**, this is called concurrently on multiple threads (but never the same component concurrently)
  */
  public function RecreateRenderState_Concurrent() : Void;

  /** See if this component is currently registered */
  @:thisConv function IsRegistered() : Bool;


  /** set value of bCanEverAffectNavigation flag and update navigation octree if needed */
  function SetCanEverAffectNavigation(bRelevant:Bool) : Void;

	/**
	 * Initializes the component.  Occurs at level startup. This is before BeginPlay (Actor or Component).
	 * All Components in the level will be Initialized on load before any Actor/Component gets BeginPlay
	 * Requires component to be registered, and bWantsInitializeComponent to be true.
	 */
  function InitializeComponent() : Void;

  /**
   * BeginsPlay for the component.  Occurs at level startup. This is before BeginPlay (Actor or Component).
   * All Components (that want initialization) in the level will be Initialized on load before any
   * Actor/Component gets BeginPlay.
   * Requires component to be registered and initialized.
   */
  function BeginPlay() : Void;

  /**
   * Ends gameplay for this component.
   * Called from AActor::EndPlay only if bHasBegunPlay is true
   */
  function EndPlay(reason:EEndPlayReason) : Void;

  /** Register this component, creating any rendering/physics state. Will also adds to outer Actor's Components array, if not already present. */
  function RegisterComponent() : Void;

  /** Unregister this component, destroying any rendering/physics state. */
  function UnregisterComponent() : Void;

  /** Unregister the component, remove it from its outer Actor's Components array and mark for pending kill. */
  function DestroyComponent(bPromoteChildren:Bool = false) : Void;

  /** Called when a component is created (not loaded) */
  function OnComponentCreated() : Void;

	/**
	 * Called when a component is registered, after Scene is set, but before CreateRenderState_Concurrent or OnCreatePhysicsState are called.
	 */
	private function OnRegister() : Void;

	/**
	 * Called when a component is unregistered. Called after DestroyRenderState_Concurrent and OnDestroyPhysicsState are called.
	 */
	private function OnUnregister() : Void;

  /**
   * Called when a component is destroyed
   *
   * @param	bDestroyingHierarchy  - True if the entire component hierarchy is being torn down, allows avoiding expensive operations
   */
  function OnComponentDestroyed(bDestroyingHierarchy:Bool) : Void;

  @:uproperty private var bReplicates:Bool;

  /** Allows a component to replicate other subobject on the actor  */
  public function ReplicateSubobjects(Channel:UActorChannel, Bunch:PPtr<FOutBunch>, RepFlags:PPtr<FReplicationFlags>):Bool;

  /** If true, we call the virtual InitializeComponent */
  public var bWantsInitializeComponent:Bool;

  /** Returns true if we are replicating and this client is not authoritative */
  @:thisConst
	public function IsNetSimulating() : Bool;

	/** Get the network role of the Owner, or ROLE_None if there is no owner. */
  @:thisConst
	public function GetOwnerRole() : unreal.ENetRole;

	/**
	 * Get the network mode (dedicated server, client, standalone, etc) for this component.
	 * @see IsNetMode()
	 */
  @:thisConst
	public function GetNetMode() : unreal.ENetMode;

	/**
	* Test whether net mode is the given mode.
	* In optimized non-editor builds this can be more efficient than GetNetMode()
	* because it can check the static build flags without considering PIE.
	*/
  @:thisConst
	public function IsNetMode(Mode:unreal.ENetMode) : Bool;
}
