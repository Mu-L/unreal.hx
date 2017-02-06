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
  
  
**/
@:glueCppIncludes("Animation/AnimTypes.h")
@:noCopy @:noEquals @:uextern extern class FAnimSyncMarker {
  #if WITH_EDITORONLY_DATA
  
  /**
    The editor track this marker sits on
  **/
  public var TrackIndex : unreal.Int32;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Time in seconds of this marker
  **/
  public var Time : unreal.Float32;
  
  /**
    The name of this marker
  **/
  public var MarkerName : unreal.FName;
  
}
