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
package unreal.logvisualizer;

@:umodule("LogVisualizer")
@:glueCppIncludes("Public/LogVisualizerSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCategoryFilter {
  @:uproperty public var Enabled : Bool;
  @:uproperty public var LogVerbosity : unreal.Int32;
  @:uproperty public var CategoryName : unreal.FString;
  
}
