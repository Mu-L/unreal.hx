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
  Struct used for passing information from Matinee to an Actor for blending animations during a sequence.
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimSlotInfo {
  
  /**
    Strength of each Channel within this Slot. Channel indexs are determined by track order in Matinee.
  **/
  @:uproperty public var ChannelWeights : unreal.TArray<unreal.Float32>;
  
  /**
    Name of slot that we want to play the animtion in.
  **/
  @:uproperty public var SlotName : unreal.FName;
  
}
