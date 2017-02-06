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
package unreal.onlinesubsystem;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Micro-transaction request information
**/
@:glueCppIncludes("Interfaces/OnlineStoreInterface.h")
@:noCopy @:noEquals @:uextern extern class FInAppPurchaseProductRequest {
  
  /**
    Flag to determine whether this is a consumable purchase, or not.
  **/
  public var bIsConsumable : Bool;
  
  /**
    The unique product identifier that matches the one from your targeted store.
  **/
  public var ProductIdentifier : unreal.FString;
  
}
