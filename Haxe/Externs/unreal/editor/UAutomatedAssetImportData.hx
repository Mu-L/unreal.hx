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
  Contains data for a group of assets to import
**/
@:umodule("UnrealEd")
@:glueCppIncludes("AutomatedAssetImportData.h")
@:uextern extern class UAutomatedAssetImportData extends unreal.UObject {
  
  /**
    Pointer to the factory currently being sued
  **/
  public var Factory : unreal.editor.UFactory;
  
  /**
    Whether or not to skip importing over read only assets that could not be checked out
  **/
  public var bSkipReadOnly : Bool;
  
  /**
    Whether or not to replace existing assets
  **/
  public var bReplaceExisting : Bool;
  
  /**
    Name of the factory to use when importing these assets. If not specified the factory type will be auto detected
  **/
  public var FactoryName : unreal.FString;
  
  /**
    Content path in the projects content directory where assets will be imported
  **/
  public var DestinationPath : unreal.FString;
  
  /**
    Filenames to import
  **/
  public var Filenames : unreal.TArray<unreal.FString>;
  
  /**
    Display name of the group. This is for logging purposes only.
  **/
  public var GroupName : unreal.FString;
  
}
