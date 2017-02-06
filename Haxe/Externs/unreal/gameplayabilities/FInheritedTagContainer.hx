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
package unreal.gameplayabilities;

@:glueCppIncludes("GameplayEffect.h")
@:uextern extern class FInheritedTagContainer {
  
  /**
    Tags that should be removed if my parent had them
  **/
  public var Removed : unreal.gameplaytags.FGameplayTagContainer;
  
  /**
    Tags that I have in addition to my parent's tags
  **/
  public var Added : unreal.gameplaytags.FGameplayTagContainer;
  
  /**
    Tags that I inherited and tags that I added minus tags that I removed
  **/
  public var CombinedTags : unreal.gameplaytags.FGameplayTagContainer;
  
}
