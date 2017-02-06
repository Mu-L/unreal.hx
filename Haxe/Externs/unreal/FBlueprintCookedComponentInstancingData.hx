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
  Cooked data for a Blueprint component template.
**/
@:glueCppIncludes("Engine/BlueprintGeneratedClass.h")
@:uextern extern class FBlueprintCookedComponentInstancingData {
  
  /**
    List of property info records with values that differ between the template and the component class CDO. This list will be generated at cook time.
  **/
  public var ChangedPropertyList : unreal.TArray<unreal.FBlueprintComponentChangedPropertyInfo>;
  
  /**
    Flag indicating whether or not this contains valid cooked data. Note that an empty changed property list can also be a valid template data context.
  **/
  public var bIsValid : Bool;
  
}
