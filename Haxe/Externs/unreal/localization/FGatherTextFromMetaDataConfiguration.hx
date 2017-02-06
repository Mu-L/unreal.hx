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
package unreal.localization;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("LocalizationTargetTypes.h")
@:noCopy @:noEquals @:uextern extern class FGatherTextFromMetaDataConfiguration {
  
  /**
    If enabled, data that is specified as editor-only may be processed for gathering.
  **/
  public var ShouldGatherFromEditorOnlyData : Bool;
  
  /**
    Specifications for how to gather text from specific metadata keys.
  **/
  public var KeySpecifications : unreal.TArray<unreal.localization.FMetaDataKeyGatherSpecification>;
  
  /**
    Metadata from source files whose paths match these wildcard patterns will be excluded from gathering.
  **/
  public var ExcludePathWildcards : unreal.TArray<unreal.localization.FGatherTextExcludePath>;
  
  /**
    Metadata from source files whose paths match these wildcard patterns, specified relative to the project's root, may be processed for gathering.
  **/
  public var IncludePathWildcards : unreal.TArray<unreal.localization.FGatherTextIncludePath>;
  
  /**
    If enabled, metadata will be gathered according to this configuration.
  **/
  public var IsEnabled : Bool;
  
}
