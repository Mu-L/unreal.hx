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


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Example struct that pairs a enum input command to a GameplayAbilityClass.6
**/
@:glueCppIncludes("GameplayAbilitySet.h")
@:noCopy @:noEquals @:uextern extern class FGameplayAbilityBindInfo {
  public var GameplayAbilityClass : unreal.TSubclassOf<unreal.gameplayabilities.UGameplayAbility>;
  public var Command : unreal.gameplayabilities.EGameplayAbilityInputBinds;
  
}
