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
  Cached vertex information at the time the mesh was painted.
**/
@:glueCppIncludes("Classes/Components/StaticMeshComponent.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPaintedVertex {
  @:uproperty public var Color : unreal.FColor;
  @:uproperty public var Normal : unreal.FPackedNormal;
  @:uproperty public var Position : unreal.FVector;
  
}
