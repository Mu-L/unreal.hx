/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.physxvehicles;

@:umodule("PhysXVehicles")
@:glueCppIncludes("Public/WheeledVehicleMovementComponent4W.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FVehicleDifferential4WData {
  
  /**
    Maximum allowed ratio of rear-left and rear-right wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W, LimitedSlip_FrontDrive)
  **/
  @:uproperty public var RearBias : unreal.Float32;
  
  /**
    Maximum allowed ratio of front-left and front-right wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W, LimitedSlip_FrontDrive)
  **/
  @:uproperty public var FrontBias : unreal.Float32;
  
  /**
    Maximum allowed ratio of average front wheel rotation speed and rear wheel rotation speeds (range: 1..inf, works only with LimitedSlip_4W)
  **/
  @:uproperty public var CentreBias : unreal.Float32;
  
  /**
    Ratio of torque split between rear-left and rear-right (>0.5 means more to rear-left, <0.5 means more to rear-right, works only with 4W and LimitedSlip_RearDrive)
  **/
  @:uproperty public var RearLeftRightSplit : unreal.Float32;
  
  /**
    Ratio of torque split between front-left and front-right (>0.5 means more to front-left, <0.5 means more to front-right, works only with 4W and LimitedSlip_FrontDrive)
  **/
  @:uproperty public var FrontLeftRightSplit : unreal.Float32;
  
  /**
    Ratio of torque split between front and rear (>0.5 means more to front, <0.5 means more to rear, works only with 4W type)
  **/
  @:uproperty public var FrontRearSplit : unreal.Float32;
  
  /**
    Type of differential
  **/
  @:uproperty public var DifferentialType : unreal.physxvehicles.EVehicleDifferential4W;
  
}
