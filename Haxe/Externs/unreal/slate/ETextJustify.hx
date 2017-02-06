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
package unreal.slate;

@:umodule("Slate")
@:glueCppIncludes("Framework/Text/TextLayout.h")
@:uname("ETextJustify.Type")
@:uextern extern enum ETextJustify {
  
  /**
    Justify the text logically to the left.
    When text is flowing left-to-right, this will align text visually to the left.
    When text is flowing right-to-left, this will align text visually to the right.
  **/
  Left;
  
  /**
    Justify the text in the center.
    Text flow direction has no impact on this justification mode.
  **/
  Center;
  
  /**
    Justify the text logically to the right.
    When text is flowing left-to-right, this will align text visually to the right.
    When text is flowing right-to-left, this will align text visually to the left.
  **/
  Right;
  
}
