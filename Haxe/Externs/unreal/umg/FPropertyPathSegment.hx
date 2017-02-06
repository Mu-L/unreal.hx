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
package unreal.umg;


/**
  A struct used for caching part of a property path.  Don't use this class directly.
**/
@:glueCppIncludes("UMG.h", "Binding/DynamicPropertyPath.h")
@:uextern extern class FPropertyPathSegment {
  
  /**
    The optional array index.
  **/
  public var ArrayIndex : unreal.Int32;
  
  /**
    The sub-component of the property path, a single value between .'s of the path
  **/
  public var Name : unreal.FName;
  
}
