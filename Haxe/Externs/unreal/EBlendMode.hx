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
  Note: This is mirrored in Lightmass, be sure to update the blend mode structure and logic there if this changes. // Note: Check UMaterialInstance::Serialize if changed!!
**/
@:glueCppIncludes("Engine/EngineTypes.h")
@:uname("EBlendMode")
@:uextern extern enum EBlendMode {
  
  /**
    Opaque
  **/
  @DisplayName("Opaque")
  BLEND_Opaque;
  
  /**
    Masked
  **/
  @DisplayName("Masked")
  BLEND_Masked;
  
  /**
    Translucent
  **/
  @DisplayName("Translucent")
  BLEND_Translucent;
  
  /**
    Additive
  **/
  @DisplayName("Additive")
  BLEND_Additive;
  
  /**
    Modulate
  **/
  @DisplayName("Modulate")
  BLEND_Modulate;
  
  /**
    AlphaComposite (Premultiplied Alpha)
  **/
  @DisplayName("AlphaComposite (Premultiplied Alpha)")
  BLEND_AlphaComposite;
  
}
