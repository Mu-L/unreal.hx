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
package unreal.paper2d;


/**
  The kind of collision that a Paper2D asset or component might participate in
**/
@:umodule("Paper2D")
@:glueCppIncludes("SpriteEditorOnlyTypes.h")
@:uname("ESpriteCollisionMode.Type")
@:uextern extern enum ESpriteCollisionMode {
  
  /**
    Should this have no collison and not participate in physics?
  **/
  None;
  
  /**
    EXPERIMENTAL: Should this have 2D collision geometry and participate in the 2D physics world?
    @DisplayName Use 2D Physics
  **/
  @DisplayName("Use 2D Physics")
  Use2DPhysics;
  
  /**
    Should this have 3D collision geometry and participate in the 3D physics world?
    @DisplayName Use 3D Physics
  **/
  @DisplayName("Use 3D Physics")
  Use3DPhysics;
  
}
