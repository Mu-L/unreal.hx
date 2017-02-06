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
  Enumerates brush image types.
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateBrush.h")
@:uname("ESlateBrushImageType.Type")
@:uextern extern enum ESlateBrushImageType {
  
  /**
    No image is loaded.  Color only brushes, transparent brushes etc.
  **/
  NoImage;
  
  /**
    The image to be loaded is in full color.
  **/
  FullColor;
  
  /**
    The image is a special texture in linear space (usually a rendering resource such as a lookup table).
  **/
  Linear;
  
}
