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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Configurable properties for control axes, used to transform raw input into game ready values.
**/
@:glueCppIncludes("GameFramework/PlayerInput.h")
@:noCopy @:noEquals @:uextern extern class FInputAxisProperties {
  
  /**
    Inverts reported values for this axis
  **/
  public var bInvert : Bool;
  
  /**
    For applying curves to [0..1] axes, e.g. analog sticks
  **/
  public var Exponent : unreal.Float32;
  
  /**
    Scaling factor to multiply raw value by.
  **/
  public var Sensitivity : unreal.Float32;
  
  /**
    What the dead zone of the axis is.  For control axes such as analog sticks.
  **/
  public var DeadZone : unreal.Float32;
  
}
