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
  Information about net startup actors that need to be rolled back by being destroyed and re-created
**/
@:glueCppIncludes("Classes/Engine/DemoNetDriver.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FRollbackNetStartupActorInfo {
  @:uproperty public var ObjReferences : unreal.TArray<unreal.UObject>;
  @:uproperty public var Level : unreal.ULevel;
  @:uproperty public var Archetype : unreal.UObject;
  
}
