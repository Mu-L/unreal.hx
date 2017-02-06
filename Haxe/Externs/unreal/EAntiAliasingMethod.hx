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
  Used by rendering project settings.
**/
@:glueCppIncludes("Engine/Scene.h")
@:uname("EAntiAliasingMethod")
@:uextern extern enum EAntiAliasingMethod {
  
  /**
    None
  **/
  @DisplayName("None")
  AAM_None;
  
  /**
    FXAA
  **/
  @DisplayName("FXAA")
  AAM_FXAA;
  
  /**
    TemporalAA
  **/
  @DisplayName("TemporalAA")
  AAM_TemporalAA;
  
  /**
    Only supported with forward shading.  MSAA sample count is controlled by r.MSAACount.
    @DisplayName MSAA
  **/
  @DisplayName("MSAA")
  AAM_MSAA;
  
}
