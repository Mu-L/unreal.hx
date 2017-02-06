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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/EnvQueryTypes.h")
@:uname("EEnvQueryRunMode.Type")
@:uextern extern enum EEnvQueryRunMode {
  
  /**
    Pick first item with the best score
    @DisplayName Single Best Item
  **/
  @DisplayName("Single Best Item")
  SingleResult;
  
  /**
    Pick random item with score 95% .. 100% of max
    @DisplayName Single Random Item from Best 5%
  **/
  @DisplayName("Single Random Item from Best 5%")
  RandomBest5Pct;
  
  /**
    Pick random item with score 75% .. 100% of max
    @DisplayName Single Random Item from Best 25%
  **/
  @DisplayName("Single Random Item from Best 25%")
  RandomBest25Pct;
  
  /**
    Get all items that match conditions
  **/
  AllMatching;
  
}
