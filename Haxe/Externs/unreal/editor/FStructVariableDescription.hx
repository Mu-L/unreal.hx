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
  
  
**/
@:glueCppIncludes("UserDefinedStructure/UserDefinedStructEditorData.h")
@:noCopy @:noEquals @:uextern extern class FStructVariableDescription {
  public var bEnable3dWidget : Bool;
  public var bEnableMultiLineText : Bool;
  public var bDontEditoOnInstance : Bool;
  public var ToolTip : unreal.FString;
  
  /**
    CurrentDefaultValue stores the actual default value, after the DefaultValue was changed, and before the struct was recompiled
  **/
  public var CurrentDefaultValue : unreal.FString;
  public var bInvalidMember : Bool;
  public var bIsArray : Bool;
  public var SubCategory : unreal.FString;
  
  /**
    TYPE DATA
  **/
  public var Category : unreal.FString;
  public var DefaultValue : unreal.FString;
  public var FriendlyName : unreal.FString;
  public var VarGuid : unreal.FGuid;
  public var VarName : unreal.FName;
  
}
