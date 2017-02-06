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
package unreal.levelsequence;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Settings for the level sequence player actor.
**/
@:glueCppIncludes("LevelSequencePlayer.h")
@:noCopy @:noEquals @:uextern extern class FLevelSequencePlaybackSettings {
  
  /**
    The rate at which to playback the animation
  **/
  public var PlayRate : unreal.Float32;
  
  /**
    Number of times to loop playback. -1 for infinite, else the number of times to loop before stopping
  **/
  public var LoopCount : unreal.Int32;
  
}
