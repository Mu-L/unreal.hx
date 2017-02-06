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
  Used to determine how we should handle mouse wheel input events when someone scrolls.
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateTypes.h")
@:uname("EConsumeMouseWheel")
@:class @:uextern extern enum EConsumeMouseWheel {
  
  /**
    Only consume the mouse wheel event when we actually scroll some amount.
  **/
  WhenScrollingPossible;
  
  /**
    Always consume mouse wheel event even if we don't scroll at all.
  **/
  Always;
  
  /**
    Never consume the mouse wheel
  **/
  Never;
  
}
