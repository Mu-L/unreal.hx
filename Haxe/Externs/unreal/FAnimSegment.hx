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
  
  this is anim segment that defines what animation and how *
**/
@:glueCppIncludes("Animation/AnimCompositeBase.h")
@:noCopy @:noEquals @:uextern extern class FAnimSegment {
  public var LoopingCount : unreal.Int32;
  
  /**
    Playback speed of this animation. If you'd like to reverse, set -1
  **/
  public var AnimPlayRate : unreal.Float32;
  
  /**
    Time to end playing the AnimSequence at.
  **/
  public var AnimEndTime : unreal.Float32;
  
  /**
    Time to start playing AnimSequence at.
  **/
  public var AnimStartTime : unreal.Float32;
  
  /**
    Start Pos within this AnimCompositeBase
  **/
  public var StartPos : unreal.Float32;
  
  /**
    Anim Reference to play - only allow AnimSequence or AnimComposite *
  **/
  public var AnimReference : unreal.UAnimSequenceBase;
  
}
