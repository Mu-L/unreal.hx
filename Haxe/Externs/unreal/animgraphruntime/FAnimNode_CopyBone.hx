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
package unreal.animgraphruntime;


/**
  Simple controller to copy a bone's transform to another one.
**/
@:glueCppIncludes("BoneControllers/AnimNode_CopyBone.h")
@:uextern extern class FAnimNode_CopyBone extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  
  /**
    Space to convert transforms into prior to copying components
  **/
  public var ControlSpace : unreal.EBoneControlSpace;
  
  /**
    If Scale should be copied
  **/
  public var bCopyScale : Bool;
  
  /**
    If Rotation should be copied
  **/
  public var bCopyRotation : Bool;
  
  /**
    If Translation should be copied
  **/
  public var bCopyTranslation : Bool;
  
  /**
    Name of bone to control. This is the main bone chain to modify from. *
  **/
  public var TargetBone : unreal.FBoneReference;
  
  /**
    Source Bone Name to get transform from
  **/
  public var SourceBone : unreal.FBoneReference;
  
}
