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
package unreal.wmfmediafactory;

@:umodule("WmfMediaFactory")
@:glueCppIncludes("WmfMediaSettings.h")
@:uextern extern class UWmfMediaSettings extends unreal.UObject {
  
  /**
    Play audio tracks via the operating system's native sound mixer.
  **/
  public var NativeAudioOut : Bool;
  
  /**
    Whether to allow the loading of media that uses non-standard codecs.
    
    By default, the player will attempt to detect audio and video codecs that
    are not supported by the operating system out of the box, but may require
    the user to install additional codec packs. Enable this option to skip
    this check and allow the usage of non-standard codecs.
  **/
  public var AllowNonStandardCodecs : Bool;
  
}
