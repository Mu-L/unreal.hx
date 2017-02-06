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
  
  Settings applied when building a mesh.
**/
@:glueCppIncludes("Engine/EngineTypes.h")
@:noCopy @:noEquals @:uextern extern class FMeshBuildSettings {
  public var DistanceFieldReplacementMesh : unreal.UStaticMesh;
  
  /**
    Adding a constant distance effectively shrinks the distance field representation.
    This is useful for preventing self shadowing aritfacts when doing some minor ambient animation.
    Thin walls will be affected more severely than large hollow objects, because thin walls don't have a large negative region.
  **/
  public var DistanceFieldBias : unreal.Float32;
  
  /**
    Whether to generate the distance field treating every triangle hit as a front face.
    When enabled prevents the distance field from being discarded due to the mesh being open, but also lowers Distance Field AO quality.
  **/
  public var bGenerateDistanceFieldAsIfTwoSided : Bool;
  
  /**
    Scale to apply to the mesh when allocating the distance field volume texture.
    The default scale is 1, which is assuming that the mesh will be placed unscaled in the world.
  **/
  public var DistanceFieldResolutionScale : unreal.Float32;
  
  /**
    The local scale applied when building the mesh
  **/
  public var BuildScale3D : unreal.FVector;
  @:deprecated public var BuildScale_DEPRECATED : unreal.Float32;
  public var DstLightmapIndex : unreal.Int32;
  public var SrcLightmapIndex : unreal.Int32;
  public var MinLightmapResolution : unreal.Int32;
  public var bGenerateLightmapUVs : Bool;
  
  /**
    If true, UVs will be stored at full floating point precision.
  **/
  public var bUseFullPrecisionUVs : Bool;
  
  /**
    If true, Tangents will be stored at 16 bit vs 8 bit precision.
  **/
  public var bUseHighPrecisionTangentBasis : Bool;
  
  /**
    Required to optimize mesh in mirrored transform. Double index buffer size.
  **/
  public var bBuildReversedIndexBuffer : Bool;
  
  /**
    Required for PNT tessellation but can be slow. Recommend disabling for larger meshes.
  **/
  public var bBuildAdjacencyBuffer : Bool;
  
  /**
    If true, degenerate triangles will be removed.
  **/
  public var bRemoveDegenerates : Bool;
  
  /**
    If true, tangents in the raw mesh are ignored and recomputed.
  **/
  public var bRecomputeTangents : Bool;
  
  /**
    If true, normals in the raw mesh are ignored and recomputed.
  **/
  public var bRecomputeNormals : Bool;
  
  /**
    If true, degenerate triangles will be removed.
  **/
  public var bUseMikkTSpace : Bool;
  
}
