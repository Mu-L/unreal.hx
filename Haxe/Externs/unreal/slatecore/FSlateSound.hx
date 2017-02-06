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
package unreal.slatecore;


/**
  An intermediary to make UBaseSound available for Slate to play sounds
**/
@:glueCppIncludes("Sound/SlateSound.h")
@:uextern extern class FSlateSound {
  
  /**
    Pointer to the USoundBase. Holding onto it as a UObject because USoundBase is not available in Slate core.
    Edited via FSlateSoundStructCustomization to ensure you can only set USoundBase assets on it.
  **/
  private var ResourceObject : unreal.UObject;
  
}
