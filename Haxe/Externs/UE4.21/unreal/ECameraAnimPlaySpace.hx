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
package unreal;

@:glueCppIncludes("Classes/Camera/CameraTypes.h")
@:uname("ECameraAnimPlaySpace.Type")
@:uextern @:uenum extern enum ECameraAnimPlaySpace {
  
  /**
    This anim is applied in camera space.
  **/
  CameraLocal;
  
  /**
    This anim is applied in world space.
  **/
  World;
  
  /**
    This anim is applied in a user-specified space (defined by UserPlaySpaceMatrix).
  **/
  UserDefined;
  
}
