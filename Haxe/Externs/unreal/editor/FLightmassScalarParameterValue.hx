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
package unreal.editor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Scalar parameter value
**/
@:glueCppIncludes("Editor/UnrealEdTypes.h")
@:noCopy @:noEquals @:uextern extern class FLightmassScalarParameterValue extends unreal.editor.FLightmassParameterValue {
  
  /**
    The scalar value to override the parent value with
  **/
  public var ParameterValue : unreal.Float32;
  
}
