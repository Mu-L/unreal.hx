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
package unreal.meshdescription;

@:umodule("MeshDescription")
@:glueCppIncludes("Public/MeshDescription.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMeshTriangle {
  
  /**
    Third vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
  **/
  @:uproperty public var VertexInstanceID2 : unreal.meshdescription.FVertexInstanceID;
  
  /**
    Second vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
  **/
  @:uproperty public var VertexInstanceID1 : unreal.meshdescription.FVertexInstanceID;
  
  /**
    First vertex instance that makes up this triangle.  Indices must be ordered counter-clockwise.
  **/
  @:uproperty public var VertexInstanceID0 : unreal.meshdescription.FVertexInstanceID;
  
}
