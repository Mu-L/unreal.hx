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
package unreal;

/**
  Angular roll constraint
**/
@:glueCppIncludes("Classes/PhysicsEngine/ConstraintTypes.h")
@:uextern @:ustruct extern class FTwistConstraint extends unreal.FConstraintBaseParams {
  
  /**
    Indicates whether the Swing1 limit is used.
  **/
  @:uproperty public var TwistMotion : unreal.EAngularConstraintMotion;
  
  /**
    Symmetric angle of roll along the X-axis.
  **/
  @:uproperty public var TwistLimitDegrees : unreal.Float32;
  
}
