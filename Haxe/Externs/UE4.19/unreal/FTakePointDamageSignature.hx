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
  @param DamagedActor
  @param Damage
  @param InstigatedBy
  @param HitLocation
  @param FHitComponent
  @param BoneName
  @param ShotFromDirection
  @param DamageType
  @param DamageCauser
  
**/
@:glueCppIncludes("Classes/GameFramework/Actor.h")
@:uParamName("DamagedActor")
@:uParamName("Damage")
@:uParamName("InstigatedBy")
@:uParamName("HitLocation")
@:uParamName("FHitComponent")
@:uParamName("BoneName")
@:uParamName("ShotFromDirection")
@:uParamName("DamageType")
@:uParamName("DamageCauser")
typedef FTakePointDamageSignature = unreal.DynamicMulticastDelegate<FTakePointDamageSignature, unreal.AActor->unreal.Float32->unreal.AController->unreal.FVector->unreal.UPrimitiveComponent->unreal.FName->unreal.FVector->unreal.Const<unreal.UDamageType>->unreal.AActor->Void>;