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
  Secondary condition to check before considering the replication of a lifetime property.
**/
@:glueCppIncludes("UObject/CoreNetTypes.h")
@:uname("ELifetimeCondition")
@:uextern extern enum ELifetimeCondition {
  
  /**
    None
  **/
  @DisplayName("None")
  COND_None;
  
  /**
    This property has no condition, and will send anytime it changes
    @DisplayName Initial Only
  **/
  @DisplayName("Initial Only")
  COND_InitialOnly;
  
  /**
    This property will only attempt to send on the initial bunch
    @DisplayName Owner Only
  **/
  @DisplayName("Owner Only")
  COND_OwnerOnly;
  
  /**
    This property will only send to the actor's owner
    @DisplayName Skip Owner
  **/
  @DisplayName("Skip Owner")
  COND_SkipOwner;
  
  /**
    This property send to every connection EXCEPT the owner
    @DisplayName Simulated Only
  **/
  @DisplayName("Simulated Only")
  COND_SimulatedOnly;
  
  /**
    This property will only send to simulated actors
    @DisplayName Autonomous Only
  **/
  @DisplayName("Autonomous Only")
  COND_AutonomousOnly;
  
  /**
    This property will only send to autonomous actors
    @DisplayName Simulated Or Physics
  **/
  @DisplayName("Simulated Or Physics")
  COND_SimulatedOrPhysics;
  
  /**
    This property will send to simulated OR bRepPhysics actors
    @DisplayName Initial Or Owner
  **/
  @DisplayName("Initial Or Owner")
  COND_InitialOrOwner;
  
  /**
    This property will send on the initial packet, or to the actors owner
    @DisplayName Custom
  **/
  @DisplayName("Custom")
  COND_Custom;
  
  /**
    This property has no particular condition, but wants the ability to toggle on/off via SetCustomIsActiveOverride
    @DisplayName Replay Or Owner
  **/
  @DisplayName("Replay Or Owner")
  COND_ReplayOrOwner;
  
  /**
    This property will only send to the replay connection, or to the actors owner
    @DisplayName Replay Only
  **/
  @DisplayName("Replay Only")
  COND_ReplayOnly;
  
  /**
    This property will only send to the replay connection
    @DisplayName Simulated Only No Replay
  **/
  @DisplayName("Simulated Only No Replay")
  COND_SimulatedOnlyNoReplay;
  
  /**
    This property will send to actors only, but not to replay connections
    @DisplayName Simulated Or Physics No Replay
  **/
  @DisplayName("Simulated Or Physics No Replay")
  COND_SimulatedOrPhysicsNoReplay;
  
}
