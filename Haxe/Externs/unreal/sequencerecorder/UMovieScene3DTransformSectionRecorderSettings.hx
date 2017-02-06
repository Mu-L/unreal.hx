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
package unreal.sequencerecorder;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("SequenceRecorder")
@:glueCppIncludes("Private/Sections/MovieScene3DTransformSectionRecorderSettings.h")
@:noClass @:uextern extern class UMovieScene3DTransformSectionRecorderSettings extends unreal.UObject {
  
  /**
    Whether to record actor transforms. This can be useful if you want the actors to end up in specific locations after the sequence.
    By default we rely on animations to provide transforms, but this can be changed using the "Record In World Space" animation setting.
  **/
  public var bRecordTransforms : Bool;
  
}
