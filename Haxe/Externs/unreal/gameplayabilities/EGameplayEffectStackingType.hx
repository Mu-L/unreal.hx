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
  Enumeration for ways a single GameplayEffect asset can stack.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("GameplayEffectTypes.h")
@:uname("EGameplayEffectStackingType")
@:class @:uextern extern enum EGameplayEffectStackingType {
  
  /**
    No stacking. Multiple applications of this GameplayEffect are treated as separate instances.
  **/
  None;
  
  /**
    Each caster has its own stack.
  **/
  AggregateBySource;
  
  /**
    Each target has its own stack.
  **/
  AggregateByTarget;
  
}
