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
package unreal.mediacompositing;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Implements a movie scene section for media playback.
**/
@:umodule("MediaCompositing")
@:glueCppIncludes("MovieSceneMediaSection.h")
@:uextern @:uclass extern class UMovieSceneMediaSection extends unreal.moviescene.UMovieSceneSection {
  
  /**
    The media texture that receives the track's video output.
  **/
  @:uproperty public var MediaTexture : unreal.mediaassets.UMediaTexture;
  
  /**
    The media sound component that receives the track's audio output.
  **/
  @:uproperty public var MediaSoundComponent : unreal.mediaassets.UMediaSoundComponent;
  
  /**
    The media source proxy to use.
  **/
  @:uproperty public var Proxy : unreal.FString;
  
}
