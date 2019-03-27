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
package unreal.levelsequence;

/**
  Actor responsible for controlling a specific level sequence in the world.
**/
@:umodule("LevelSequence")
@:glueCppIncludes("LevelSequenceActor.h")
@:uextern @:uclass extern class ALevelSequenceActor extends unreal.AActor implements unreal.moviescene.IMovieSceneBindingOwnerInterface {
  
  /**
    Instance data that can be used to dynamically control sequence evaluation at runtime
  **/
  @:uproperty public var DefaultInstanceData : unreal.UObject;
  @:uproperty public var bOverrideInstanceData : Bool;
  
  /**
    Mapping of actors to override the sequence bindings with
  **/
  @:uproperty public var BindingOverrides : unreal.moviescene.UMovieSceneBindingOverrides;
  @:uproperty public var BurnInOptions : unreal.levelsequence.ULevelSequenceBurnInOptions;
  @:uproperty public var AdditionalEventReceivers : unreal.TArray<unreal.AActor>;
  @:uproperty public var LevelSequence : unreal.FSoftObjectPath;
  @:uproperty public var SequencePlayer : unreal.levelsequence.ULevelSequencePlayer;
  @:uproperty public var PlaybackSettings : unreal.moviescene.FMovieSceneSequencePlaybackSettings;
  @:uproperty public var bAutoPlay : Bool;
  
  /**
    Get the level sequence being played by this actor.
    
    @param bLoad Whether to load the sequence object if it is not already in memory.
    @param bInitializePlayer Whether to initialize the player when the sequence has been loaded.
    @return Level sequence, or nullptr if not assigned or if it cannot be loaded.
    @see SetSequence
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetSequence(bLoad : Bool = false, bInitializePlayer : Bool = false) : unreal.levelsequence.ULevelSequence;
  
  /**
    Set the level sequence being played by this actor.
    
    @param InSequence The sequence object to set.
    @see GetSequence
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSequence(InSequence : unreal.levelsequence.ULevelSequence) : Void;
  
  /**
    Set an array of additional actors that will receive events triggerd from this sequence actor
    
    @param AdditionalReceivers An array of actors to receive events
  **/
  @:ufunction(BlueprintCallable) @:final public function SetEventReceivers(AdditionalReceivers : unreal.TArray<unreal.AActor>) : Void;
  
  /**
    Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset
    
    @param Binding Binding to modify
    @param Actors Actors to bind
    @param bAllowBindingsFromAsset Allow bindings from the level sequence asset
  **/
  @:ufunction(BlueprintCallable) @:final public function SetBinding(Binding : unreal.moviescene.FMovieSceneObjectBindingID, Actors : unreal.Const<unreal.PRef<unreal.TArray<unreal.AActor>>>, bAllowBindingsFromAsset : Bool = false) : Void;
  
  /**
    Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset
    
    @param Binding Binding to modify
    @param Actor Actor to bind
    @param bAllowBindingsFromAsset Allow bindings from the level sequence asset
  **/
  @:ufunction(BlueprintCallable) @:final public function AddBinding(Binding : unreal.moviescene.FMovieSceneObjectBindingID, Actor : unreal.AActor, bAllowBindingsFromAsset : Bool = false) : Void;
  
  /**
    Removes the specified actor from the specified binding's actor array
  **/
  @:ufunction(BlueprintCallable) @:final public function RemoveBinding(Binding : unreal.moviescene.FMovieSceneObjectBindingID, Actor : unreal.AActor) : Void;
  
  /**
    Resets the specified binding back to the defaults defined by the Level Sequence asset
  **/
  @:ufunction(BlueprintCallable) @:final public function ResetBinding(Binding : unreal.moviescene.FMovieSceneObjectBindingID) : Void;
  
  /**
    Resets all overridden bindings back to the defaults defined by the Level Sequence asset
  **/
  @:ufunction(BlueprintCallable) @:final public function ResetBindings() : Void;
  // MovieSceneBindingOwnerInterface interface implementation
  
}
