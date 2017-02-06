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
package unreal.levelsequenceeditor;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  Level Sequence Master Sequence settings.
**/
@:umodule("LevelSequenceEditor")
@:glueCppIncludes("Private/Misc/LevelSequenceEditorSettings.h")
@:noClass @:uextern extern class ULevelSequenceMasterSequenceSettings extends unreal.UObject {
  
  /**
    Array of sub sequence names, each will result in a level sequence asset in the shot.
  **/
  public var SubSequenceNames : unreal.TArray<unreal.FName>;
  
  /**
    Master sequence number of shots.
  **/
  public var MasterSequenceNumShots : unreal.FakeUInt32;
  
  /**
    Master sequence path.
  **/
  public var MasterSequenceBasePath : unreal.FDirectoryPath;
  
  /**
    Master sequence suffix.
  **/
  public var MasterSequenceSuffix : unreal.FString;
  
  /**
    Master sequence name.
  **/
  public var MasterSequenceName : unreal.FString;
  
}
