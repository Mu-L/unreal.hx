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
package unreal.animgraphruntime;


/**
  An animation slot node normally acts as a passthru, but a montage or PlaySlotAnimation call from
  game code can cause an animation to blend in and be played on the slot temporarily, overriding the
  Source input.
**/
@:glueCppIncludes("AnimNodes/AnimNode_Slot.h")
@:uextern extern class FAnimNode_Slot extends unreal.FAnimNode_Base {
  
  /**
    The name of this slot, exposed to gameplay code, etc...
  **/
  public var SlotName : unreal.FName;
  
  /**
    The source input, passed thru to the output unless a montage or slot animation is currently playing
  **/
  public var Source : unreal.FPoseLink;
  
}
