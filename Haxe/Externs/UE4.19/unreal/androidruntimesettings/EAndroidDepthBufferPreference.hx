/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.androidruntimesettings;

/**
  Depth buffer precision preferences // IF THIS CHANGES, MAKE SURE TO UPDATE UEDeployAndroid.cs, ConvertDepthBufferIniValue()!
**/
@:umodule("AndroidRuntimeSettings")
@:glueCppIncludes("Classes/AndroidRuntimeSettings.h")
@:uname("EAndroidDepthBufferPreference.Type")
@:uextern @:uenum extern enum EAndroidDepthBufferPreference {
  
  /**
    Default
  **/
  @DisplayName("Default")
  Default;
  
  /**
    16-bit
  **/
  @DisplayName("16-bit")
  Bits16;
  
  /**
    24-bit
  **/
  @DisplayName("24-bit")
  Bits24;
  
  /**
    32-bit
  **/
  @DisplayName("32-bit")
  Bits32;
  
}
