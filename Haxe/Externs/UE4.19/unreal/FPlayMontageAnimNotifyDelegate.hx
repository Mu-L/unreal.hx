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

/**
  Delegate called by 'PlayMontageNotify' and 'PlayMontageNotifyWindow' *
  @param NotifyName
  @param BranchingPointPayload
  
**/
@:glueCppIncludes("Classes/Animation/AnimInstance.h")
@:uParamName("NotifyName")
@:uParamName("BranchingPointPayload")
typedef FPlayMontageAnimNotifyDelegate = unreal.DynamicMulticastDelegate<FPlayMontageAnimNotifyDelegate, unreal.FName->unreal.Const<unreal.PRef<unreal.FBranchingPointNotifyPayload>>->Void>;