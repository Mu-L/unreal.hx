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
package unreal.editor;

/**
  Determines whether to build the executable when packaging. Note the equivalence between these settings and EPlayOnBuildMode.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Classes/Settings/ProjectPackagingSettings.h")
@:uname("EProjectPackagingBuild")
@:class @:uextern @:uenum extern enum EProjectPackagingBuild {
  
  /**
    Always build.
    @DisplayName Always
  **/
  @DisplayName("Always")
  Always;
  
  /**
    Never build.
    @DisplayName Never
  **/
  @DisplayName("Never")
  Never;
  
  /**
    Default (if the Never build.
    @DisplayName If project has code, or running a locally built editor
  **/
  @DisplayName("If project has code, or running a locally built editor")
  IfProjectHasCode;
  
  /**
    If we're not packaging from a promoted build.
    @DisplayName If running a locally built editor
  **/
  @DisplayName("If running a locally built editor")
  IfEditorWasBuiltLocally;
  
}
