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
  Additional information about a selection event
**/
@:umodule("SlateCore")
@:glueCppIncludes("Types/SlateEnums.h")
@:uname("ESelectInfo.Type")
@:uextern extern enum ESelectInfo {
  
  /**
    User selected via a key press
  **/
  OnKeyPress;
  
  /**
    User selected by navigating to the item
  **/
  OnNavigation;
  
  /**
    User selected by clicking on the item
  **/
  OnMouseClick;
  
  /**
    Selection was directly set in code
  **/
  Direct;
  
}
