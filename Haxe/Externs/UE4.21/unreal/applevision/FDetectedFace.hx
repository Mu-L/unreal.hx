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
package unreal.applevision;

/**
  Area of the image that the computer vision task detected as being a face
**/
@:umodule("AppleVision")
@:glueCppIncludes("Public/AppleVisionTypes.h")
@:uextern @:ustruct extern class FDetectedFace extends unreal.applevision.FDetectedFeatureRegion {
  
  /**
    The set of region features that were detected
  **/
  @:uproperty public var FeatureRegions : unreal.TArray<unreal.applevision.FDetectedFaceFeatureRegion>;
  
  /**
    The set of 2D features that were detected
  **/
  @:uproperty public var Features : unreal.TArray<unreal.applevision.FDetectedFaceFeature2D>;
  
  /**
    The bounding box of the detected face
  **/
  @:uproperty public var BoundingBox : unreal.FBox2D;
  
}
