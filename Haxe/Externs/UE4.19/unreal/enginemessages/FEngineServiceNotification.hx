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
package unreal.enginemessages;

/**
  Implements a message that contains a notification or log output.
**/
@:umodule("EngineMessages")
@:glueCppIncludes("Public/EngineServiceMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FEngineServiceNotification {
  
  /**
    Holds the time in seconds since the engine started.
  **/
  @:uproperty public var TimeSeconds : unreal.Float64;
  
  /**
    Holds the notification text.
  **/
  @:uproperty public var Text : unreal.FString;
  
}
