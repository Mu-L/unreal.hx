/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  Container for a physics representation of an object
**/
@:glueCppIncludes("PhysicsEngine/BodyInstance.h")
@:uextern extern class FBodyInstance {
  
  /**
    Locks physical movement along specified axis.
  **/
  public var DOFMode : unreal.EDOFMode;
  
  /**
    The set of values used in considering when put this body to sleep.
  **/
  public var SleepFamily : unreal.ESleepFamily;
  
  /**
    This physics body's solver iteration count for velocity. Increasing this will be more CPU intensive, but better stabilized.
  **/
  public var VelocitySolverIterationCount : unreal.Int32;
  
  /**
    Internal use. Physics-engine id of the actor used during serialization.  Needs to be outside the ifdef for serialization purposes
  **/
  public var RigidActorAsyncId : unreal.FakeUInt64;
  
  /**
    Internal use. Physics-engine id of the actor used during serialization. Needs to be outside the ifdef for serialization purposes
  **/
  public var RigidActorSyncId : unreal.FakeUInt64;
  
  /**
    This physics body's solver iteration count for position. Increasing this will be more CPU intensive, but better stabilized.
  **/
  public var PositionSolverIterationCount : unreal.Int32;
  
  /**
    Provide appropriate interface for doing this instead of allowing BlueprintReadWrite *
  **/
  public var PhysicsBlendWeight : unreal.Float32;
  
  /**
    If the SleepFamily is set to custom, multiply the natural sleep threshold by this amount. A higher number will cause the body to sleep sooner.
  **/
  public var CustomSleepThresholdMultiplier : unreal.Float32;
  
  /**
    The maximum angular velocity for this instance
  **/
  public var MaxAngularVelocity : unreal.Float32;
  
  /**
    Allows you to override the PhysicalMaterial to use for simple collision on this body.
  **/
  private var PhysMaterialOverride : unreal.UPhysicalMaterial;
  
  /**
    Custom walkable slope override setting for this instance.
    @see GetWalkableSlopeOverride(), SetWalkableSlopeOverride()
  **/
  private var WalkableSlopeOverride : unreal.FWalkableSlopeOverride;
  
  /**
    Per-instance scaling of mass
  **/
  public var MassScale : unreal.Float32;
  
  /**
    User specified offset for the center of mass of this object, from the calculated location
  **/
  public var COMNudge : unreal.FVector;
  
  /**
    Locks physical movement along a custom plane for a given normal.
  **/
  public var CustomDOFPlaneNormal : unreal.FVector;
  
  /**
    'Drag' force added to reduce angular movement
  **/
  public var AngularDamping : unreal.Float32;
  
  /**
    'Drag' force added to reduce linear movement
  **/
  public var LinearDamping : unreal.Float32;
  
  /**
    Mass of the body in KG. By default we compute this based on physical material and mass scale.
    @see bOverrideMass to set this directly
  **/
  private var MassInKgOverride : unreal.Float32;
  
  /**
    The maximum velocity used to depenetrate this object
  **/
  private var MaxDepenetrationVelocity : unreal.Float32;
  
  /**
    Override the default max angular velocity
  **/
  public var bOverrideMaxAngularVelocity : Bool;
  
  /**
    Lock rotation about the Z-axis
  **/
  public var bLockZRotation : Bool;
  
  /**
    Lock rotation about the Y-axis
  **/
  public var bLockYRotation : Bool;
  
  /**
    Lock rotation about the X-axis
  **/
  public var bLockXRotation : Bool;
  
  /**
    Lock translation along the Z-axis
  **/
  public var bLockZTranslation : Bool;
  
  /**
    Lock translation along the Y-axis
  **/
  public var bLockYTranslation : Bool;
  
  /**
    Lock translation along the X-axis
  **/
  public var bLockXTranslation : Bool;
  
  /**
    When a Locked Axis Mode is selected, will lock rotation to the specified axis
  **/
  public var bLockRotation : Bool;
  
  /**
    When a Locked Axis Mode is selected, will lock translation on the specified axis
  **/
  public var bLockTranslation : Bool;
  
  /**
    If true, it will update mass when scale changes *
  **/
  public var bUpdateMassWhenScaleChanges : Bool;
  
  /**
    Should 'wake/sleep' events fire when this object is woken up or put to sleep by the physics simulation.
  **/
  public var bGenerateWakeEvents : Bool;
  
  /**
    If object should start awake, or if it should initially be sleeping
  **/
  public var bStartAwake : Bool;
  
  /**
    If true and is attached to a parent, the two bodies will be joined into a single rigid body. Physical settings like collision profile and body settings are determined by the root
  **/
  public var bAutoWeld : Bool;
  
  /**
    If object should have the force of gravity applied
  **/
  public var bEnableGravity : Bool;
  
  /**
    If true, mass will not be automatically computed and you must set it directly
  **/
  public var bOverrideMass : Bool;
  
  /**
    If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) and move where it is told.
  **/
  public var bSimulatePhysics : Bool;
  
  /**
    Should 'Hit' events fire when this object collides during physics simulation.
  **/
  public var bNotifyRigidBodyCollision : Bool;
  
  /**
    If true Continuous Collision Detection (CCD) will be used for this component
  **/
  public var bUseCCD : Bool;
  
  /**
    @todo : make this to be transient, so that it doesn't have to save anymore
    we have to still load them until resave
  **/
  @:deprecated public var ResponseToChannels_DEPRECATED : unreal.FCollisionResponseContainer;
  
}
