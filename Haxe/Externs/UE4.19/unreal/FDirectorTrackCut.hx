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
  Information for one cut in this track.
**/
@:glueCppIncludes("Classes/Matinee/InterpTrackDirector.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FDirectorTrackCut {
  
  /**
    Shot number for developer reference
  **/
  @:uproperty public var ShotNumber : unreal.Int32;
  
  /**
    GroupName of UInterpGroup to cut viewpoint to.
  **/
  @:uproperty public var TargetCamGroup : unreal.FName;
  
  /**
    Time taken to move view to new camera.
  **/
  @:uproperty public var TransitionTime : unreal.Float32;
  
  /**
    Time to perform the cut.
  **/
  @:uproperty public var Time : unreal.Float32;
  
}
