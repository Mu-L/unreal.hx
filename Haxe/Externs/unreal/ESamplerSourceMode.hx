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

@:glueCppIncludes("Engine/EngineTypes.h")
@:uname("ESamplerSourceMode")
@:uextern extern enum ESamplerSourceMode {
  
  /**
    Get the sampler from the texture.  Every unique texture will consume a sampler slot, which are limited in number.
    @DisplayName From texture asset
  **/
  @DisplayName("From texture asset")
  SSM_FromTextureAsset;
  
  /**
    Shared sampler source that does not consume a sampler slot.  Uses wrap addressing and gets filter mode from the world texture group.
    @DisplayName Shared: Wrap
  **/
  @DisplayName("Shared: Wrap")
  SSM_Wrap_WorldGroupSettings;
  
  /**
    Shared sampler source that does not consume a sampler slot.  Uses clamp addressing and gets filter mode from the world texture group.
    @DisplayName Shared: Clamp
  **/
  @DisplayName("Shared: Clamp")
  SSM_Clamp_WorldGroupSettings;
  
}
