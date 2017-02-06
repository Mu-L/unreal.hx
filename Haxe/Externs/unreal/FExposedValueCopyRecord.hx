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
@:glueCppIncludes("Animation/AnimNodeBase.h")
@:noCopy @:noEquals @:uextern extern class FExposedValueCopyRecord {
  
  /**
    Cached dest property for copying structs
  **/
  public var CachedStructDestProperty : unreal.UStructProperty;
  
  /**
    cached dest property for performing boolean operations
  **/
  public var CachedBoolDestProperty : unreal.UBoolProperty;
  
  /**
    cached source property for performing boolean operations
  **/
  public var CachedBoolSourceProperty : unreal.UBoolProperty;
  public var PostCopyOperation : unreal.EPostCopyOperation;
  
  /**
    Whether or not the anim instance object is the target for the copy instead of a node.
  **/
  public var bInstanceIsTarget : Bool;
  public var Size : unreal.Int32;
  public var DestArrayIndex : unreal.Int32;
  public var DestProperty : unreal.UProperty;
  public var SourceArrayIndex : unreal.Int32;
  public var SourceSubPropertyName : unreal.FName;
  public var SourcePropertyName : unreal.FName;
  @:deprecated public var SourceProperty_DEPRECATED : unreal.UProperty;
  
}
